local body = piece 'body' 

--[[
local FrontTurret	= piece 'FrontTurret'
local FrontGun1		= piece 'FrontGun1'
local FrontGun2		= piece 'FrontGun2'
local fflare1		= piece 'fflare1'
local fflare2		= piece 'fflare2'
local fflare3		= piece 'fflare3'
local fflare4		= piece 'fflare4'
]]--


local wheelleft1		= piece 'wheelleft1'
local wheelleft2		= piece 'wheelleft2'
local wheelright1		= piece 'wheelright1'
local wheelright2		= piece 'wheelright2'

--local engineEmit 	= piece 'engineEmit'
local link 			= piece 'link'

local dust1, dust2	= piece('dust1', 'dust2')

local AttachUnit = Spring.UnitScript.AttachUnit
local DropUnit = Spring.UnitScript.DropUnit

local loaded = false
local unitLoaded = nil
local doorOpen = false
local takeoffOrLanding = false

local drawblades = true
--local isMoving = false

local SIG_OPENDOORS = 1
local SIG_CLOSEDOORS = 2
local SIG_AIM = 4
local SIG_AIM2 = 8
local SIG_AIM3 = 16
local SIG_RESTORE = 32
local SIG_TOL = 64

local doorSpeed = 3


local smokePiece = {body, wheelright2}

include "constants.lua"
include "transports.lua"

local function openDoors()

	Signal(SIG_OPENDOORS)
	SetSignalMask(SIG_OPENDOORS)

	Sleep(200)
	doorOpen = true

end


function closeDoors()
	Signal(SIG_CLOSEDOORS)
	SetSignalMask(SIG_CLOSEDOORS)

	Sleep(200)
	doorOpen = false

end




local function TakeOffOrLand()
	Signal(SIG_TOL)
	SetSignalMask(SIG_TOL)
	takeoffOrLanding = true
	Sleep(1200)
	takeoffOrLanding = false
end

--Special ability: drop unit midair
function ForceDropUnit()
	if (unitLoaded ~= nil) and Spring.ValidUnitID(unitLoaded) then
		local x,y,z = Spring.GetUnitPosition(unitLoaded) --cargo position
		local _,ty = Spring.GetUnitPosition(unitID) --transport position
		local vx,vy,vz = Spring.GetUnitVelocity(unitID) --transport speed
		DropUnit(unitLoaded) --detach cargo
		local transRadius = Spring.GetUnitRadius(unitID)
		Spring.SetUnitPosition(unitLoaded, x,math.min(y, ty-transRadius),z) --set cargo position below transport
		Spring.AddUnitImpulse(unitLoaded,0,4,0) --hax to prevent teleport to ground
		Spring.AddUnitImpulse(unitLoaded,0,-4,0) --hax to prevent teleport to ground
		Spring.SetUnitVelocity(unitLoaded,0,0,0) --remove any random velocity caused by collision with transport (especially Spring 91)
		Spring.AddUnitImpulse(unitLoaded,vx,vy,vz) --readd transport momentum
	end
	unitLoaded = nil
	StartThread(script.EndTransport) --formalize unit drop (finish animation, clear tag, ect)
end

--fetch unit id of passenger (from the load command)
function getPassengerId() 
	local cmd=Spring.GetCommandQueue(unitID, 1)
	local unitId = nil	
	
	if cmd and cmd[1] then					
		if cmd[1]['id'] == 75 then -- CMDTYPE.LOAD_UNITS = 75
			unitId = cmd[1]['params'][1]				
		end
	end
	
	return unitId
end

--fetch id of command
function getCommandId() 
	local cmd=Spring.GetCommandQueue(unitID, 1)		
	if cmd and cmd[1] then		
		return cmd[1]['id']		
	end
	
	return nil
end

function getDropPoint() 
	local cmd = Spring.GetCommandQueue(unitID, 1)
	if cmd and cmd[1] and cmd[1].id == 81 then -- CMDTYPE.LOAD_UNITS = 75
		return cmd[1]['params'][1], cmd[1]['params'][2], cmd[1]['params'][3]
	end
	return false
end

function isNearPickupPoint(passengerId, requiredDist)
	if passengerId == nil then
		return false
	end

	local px, py, pz = Spring.GetUnitBasePosition(passengerId)
	if not px then
		return
	end
	
	local px2, py2, pz2 = Spring.GetUnitBasePosition(unitID)
	if not px2 then
		return
	end
	
	local dx = px2 - px
	local dz = pz2 - pz
	local dist = (dx^2 + dz^2)
	
	if dist < requiredDist^3 then	
		return true
	else
		return false
	end	
end

function isNearDropPoint(transportUnitId, requiredDist)
	if transportUnitId == nil then
		return false
	end

	local px, py, pz = Spring.GetUnitBasePosition(transportUnitId)
	if not px then
		return false
	end
	local px2, py2, pz2 = getDropPoint()
	if not px2 then
		return false
	end
	
	local dx = px - px2
	local dz = pz - pz2 
	local dist = (dx^2 + dz^2)
	
	if dist < requiredDist^8 then
		return true
	else
		return false
	end	
end

function isValidCargo(soonPassenger, passenger)
	return ((soonPassenger and Spring.ValidUnitID(soonPassenger)) or 
	(passenger and Spring.ValidUnitID(passenger)))
end

local function PickupAndDropFixer()
	while true do
		local passengerId = getPassengerId()
		if passengerId and (getCommandId() == 75) and isValidCargo(passengerId) and isNearPickupPoint(passengerId, 120) then
			Sleep(1500)
			local passengerId = getPassengerId()
			if passengerId and (getCommandId() == 75) and isValidCargo(passengerId) and isNearPickupPoint(passengerId, 120) then
				Spring.GiveOrderToUnit(unitID, CMD.WAIT, {}, {})
				Spring.GiveOrderToUnit(unitID, CMD.WAIT, {}, {})
			end
		end
		
		if unitLoaded and (getCommandId() == 81) and isNearDropPoint(unitLoaded, 80) then
			Sleep(1500)
			if unitLoaded and (getCommandId() == 81) and isNearDropPoint(unitLoaded, 80) then
				Spring.GiveOrderToUnit(unitID, CMD.WAIT, {}, {})
				Spring.GiveOrderToUnit(unitID, CMD.WAIT, {}, {})
			end
		end
		
		Sleep(500)
	end
end

function script.MoveRate(curRate)
	local passengerId = getPassengerId()
	
	if doorOpen and not isValidCargo(passengerId,unitLoaded) then
		unitLoaded = nil
		StartThread(script.EndTransport) --formalize unit drop (finish animation, clear tag, ect)
	elseif getCommandId() == 75 and isNearPickupPoint(passengerId, 1000) then
		StartThread(openDoors)
	elseif getCommandId() == 81 and isNearDropPoint(unitLoaded, 1000) then	
		StartThread(openDoors)
	end
end

function script.BeginTransport(passengerID)
	if loaded then 
		return 
	end
	--Move(link, y_axis, -Spring.GetUnitHeight(passengerID) - 15, nil, true)
	Spring.GiveOrderToUnit(unitID, CMD.MOVE_STATE, {0}, {}) --supposed to order it to land 
	--Spring.MoveCtrl.SetGunshipMoveTypeData(unitID,"moveState",0)
	
	--why is this after rather than before the move command?
	if not TransportAllowed(passengerID) then
		Sleep(10)
		unitLoaded = passengerID
		ForceDropUnit()
		return
	end
	
	--local px, py, pz = Spring.GetUnitBasePosition(passengerID)
	SetUnitValue(COB.BUSY, 1)

	AttachUnit(link, passengerID)
	unitLoaded = passengerID
	loaded = true
	
	
	Sleep(500)
	
	--StartThread(closeDoors)
end

function script.EndTransport() 
	getDropPoint()
	--StartThread(openDoors)
	if (unitLoaded ~= nil) then
		DropUnit(unitLoaded)
		unitLoaded = nil
	end
	loaded = false	
	SetUnitValue(COB.BUSY, 0)
	Sleep(1000)
	StartThread(closeDoors)
end



function script.Activate()

	StartThread(TakeOffOrLand)
end

function script.Deactivate()
	StartThread(TakeOffOrLand)
	StartThread(closeDoors)
end

function script.Create()
	StartThread(SmokeUnit, smokePiece)
	StartThread(PickupAndDropFixer)
	--StartThread(DustLoop)	-- looks stupid

	--Spring.MoveCtrl.SetGunshipMoveTypeData(unitID,"turnRate",0)

	
	while select(5, Spring.GetUnitHealth(unitID)) < 1 do
		Sleep(500)
	end		

	Activate()
	
end



function script.QueryTransport(passengerID)
	return link
end


function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if severity <= 0.25 then
		Explode(body, sfxNone)

		return 1
	elseif severity <= 0.50 then
		Explode(body, sfxShatter)

		return 1
	else
		Explode(body, sfxShatter)

		return 2
	end
end
