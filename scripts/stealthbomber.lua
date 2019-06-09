local base = piece 'base'
local body = piece 'body'
local predrop = piece 'predrop' 
local drop = piece 'drop' 
local thrustl = piece 'nozzle1' 
local thrustr = piece 'nozzle2' 
local wingtipl = piece 'wingtipl' 
local wingtipr = piece 'wingtipr' 
local xp,zp = piece("x","z")

local spGetUnitPosition = Spring.GetUnitPosition
local spGetUnitHeading = Spring.GetUnitHeading
local spGetUnitVelocity = Spring.GetUnitVelocity
local spMoveCtrlGetTag = Spring.MoveCtrl.GetTag
local spGetUnitMoveTypeData = Spring.GetUnitMoveTypeData
local spSetAirMoveTypeData = Spring.MoveCtrl.SetAirMoveTypeData
local spGetGroundHeight = Spring.GetGroundHeight

local min, max = math.min, math.max

local smokePiece = {body, thrustr, thrustl}

local bombs = 1

include "bombers.lua"
include "fakeUpright.lua"
include "constants.lua"
include "fixedwingTakeOff.lua"

local ud = UnitDefs[unitDefID]
local highBehaviour = {
	wantedHeight = UnitDefNames["bomberheavy"].wantedHeight*1.5,
	maxPitch = ud.maxPitch,
	maxBank = ud.maxBank,
	turnRadius = ud.turnRadius,
	maxAileron = ud.maxAileron,
	maxElevator = ud.maxElevator,
	maxRudder = ud.maxRudder,
}
local lowBehaviour = {
	maxPitch = 0.72,
	maxBank = 0.5,
	turnRadius = 100,
	maxAileron = 0.004,
	maxElevator = 0.018,
	maxRudder = 0.015,
}

local SIG_TAKEOFF = 1
local SIG_CHANGE_FLY_HEIGHT = 2
local SIG_SPEED_CONTROL = 4
local takeoffHeight = UnitDefNames["bomberheavy"].wantedHeight
local fullHeight = UnitDefNames["bomberheavy"].wantedHeight/1.5

local minSpeedMult = 0.75

local function BehaviourChangeThread(behaviour)
	Signal(SIG_CHANGE_FLY_HEIGHT)
	SetSignalMask(SIG_CHANGE_FLY_HEIGHT)
	
	takeoffHeight = behaviour.wantedHeight/1.5
	
	local state = spGetUnitMoveTypeData(unitID).aircraftState
	local flying = spMoveCtrlGetTag(unitID) == nil and (state == "flying" or state == "takeoff")
	if not flying then
		StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
	end
	
	while not flying do
		Sleep(600)
		state = spGetUnitMoveTypeData(unitID).aircraftState
		flying = spMoveCtrlGetTag(unitID) == nil and (state == "flying" or state == "takeoff")
	end
	
	Spring.MoveCtrl.SetAirMoveTypeData(unitID, behaviour)
	--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1)
	--GG.UpdateUnitAttributes(unitID)
	--GG.UpdateUnitAttributes(unitID)
end

local function SpeedControl()
	Signal(SIG_SPEED_CONTROL)
	SetSignalMask(SIG_SPEED_CONTROL)
	while true do
		local x,y,z = spGetUnitPosition(unitID)
		local terrain = max(spGetGroundHeight(x,z), 0) -- not amphibious, treat water as ground
		local speedMult = minSpeedMult + (1-minSpeedMult)*max(0, min(1, (y - terrain-50)/(fullHeight-60)))
		Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", speedMult)
		GG.UpdateUnitAttributes(unitID)
		GG.UpdateUnitAttributes(unitID)
		Sleep(50 + 2*max(0, y - terrain - 80))
	end
end

function BomberDive_FlyHigh()
	StartThread(BehaviourChangeThread, highBehaviour)
end

function BomberDive_FlyLow(height)
	--height = math.min(height, highBehaviour.wantedHeight)
	--StartThread(SpeedControl)
	--lowBehaviour.wantedHeight = height
	--StartThread(BehaviourChangeThread, lowBehaviour)
	StartThread(BehaviourChangeThread, highBehaviour) --hacking this so it will never fuck up on the b2
end

function script.StartMoving()
	--Turn(fins, z_axis, math.rad(-(-30)), math.rad(50))
--	Move(wingr1, x_axis, 0, 50)
--	Move(wingr2, x_axis, 0, 50)
--	Move(wingl1, x_axis, 0, 50)
--	Move(wingl2, x_axis, 0, 50)
	--GG.SetWantedCloaked(unitID, 0)
	--StartThread(SpeedControl)
end

function script.StopMoving()
	--Turn(fins, z_axis, math.rad(-(0)), math.rad(80))
--	Move(wingr1, x_axis, 5, 30)
--	Move(wingr2, x_axis, 5, 30)
--	Move(wingl1, x_axis, -5, 30)
--	Move(wingl2, x_axis, -5, 30)
	--GG.SetWantedCloaked(unitID, 1)
	--StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
end

local function Lights()

end

function script.Create()
	SetInitialBomberSettings()
	StartThread(SmokeUnit, smokePiece)
	StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
	FakeUprightInit(xp, zp, drop) 
	--StartThread(Lights)
end

function script.QueryWeapon(num)
	return drop
end

function script.AimFromWeapon(num)
	return drop
end

function script.AimWeapon(num, heading, pitch)
	return (Spring.GetUnitRulesParam(unitID, "noammo") ~= 1)
end

local predictMult = 3


function script.BlockShot(num, targetID)
	if num ~= 2 then
		return false
	end
	local ableToFire = not ((GetUnitValue(COB.CRASHING) == 1) or RearmBlockShot())
	if not (targetID and ableToFire) then
		return not ableToFire
	end
	local x,y,z = spGetUnitPosition(unitID)
	local _,_,_,_,_,_,tx,ty,tz = spGetUnitPosition(targetID, true, true)
	local vx,vy,vz = spGetUnitVelocity(targetID)
	local heading = spGetUnitHeading(unitID)*headingToRad
	vx, vy, vz = vx*predictMult, vy*predictMult, vz*predictMult
	local dx, dy, dz = tx + vx - x, ty + vy - y, tz + vz - z
	local cosHeading = cos(heading)
	local sinHeading = sin(heading)
	dx, dz = cosHeading*dx - sinHeading*dz, cosHeading*dz + sinHeading*dx
	
	--Spring.Echo(vx .. ", " .. vy .. ", " .. vz)
	--Spring.Echo(dx .. ", " .. dy .. ", " .. dz)
	--Spring.Echo(heading)
	
	if dz < 30 and dz > -30 and dx < 100 and dx > -100 and dy < 0 then
		FakeUprightTurn(unitID, xp, zp, base, predrop) 
		Move(drop, x_axis, dx)
		Move(drop, z_axis, dz)
		dy = math.max(dy, -30)
		Move(drop, y_axis, dy)
		local distance = (Spring.GetUnitSeparation(unitID, targetID) or 0)
		local unitHeight = (GG.GetUnitHeight and GG.GetUnitHeight(targetID)) or 0
		distance = math.max(0, distance - unitHeight/2)
		local projectileTime = 35*math.min(1, distance/340)
		
		--[[
		if GG.OverkillPrevention_CheckBlock(unitID, targetID, 800.1, projectileTime, false, false, true) then
			-- Remove attack command on blocked target, it's already dead so move on.
			local cQueue = Spring.GetCommandQueue(unitID, 1)
			if cQueue and cQueue[1] and cQueue[1].id == CMD.ATTACK and (not cQueue[1].params[2]) and cQueue[1].params[1] == targetID then
				Spring.GiveOrderToUnit(unitID, CMD.REMOVE, {cQueue[1].tag}, {} )
			end
			return true
		end
		]]--
		return false
	end
	return true
end


function script.FireWeapon(num)
	if num == 2 then
		--SetUnarmedAI()
		GG.Bomber_Dive_fired(unitID)
		Sleep(33)	-- delay before clearing attack order; else bomb loses target and fails to home
		Move(drop, x_axis, 0)
		Move(drop, z_axis, 0)
		Move(drop, y_axis, 0)
		--Reload()	
	elseif num == 3 then
		GG.Bomber_Dive_fake_fired(unitID)		
	elseif num == 4 then
		SetUnarmedAI()
		GG.Bomber_Dive_fired(unitID)
		Sleep(33)	-- delay before clearing attack order; else bomb loses target and fails to home
		Move(drop, x_axis, 0)
		Move(drop, z_axis, 0)
		Move(drop, y_axis, 0)
		Reload()		
	
	end
end

function script.Killed(recentDamage, maxHealth)
	local px, py, pz = Spring.GetUnitPosition(unitID)

	if ( math.random() < 0.5 ) then
		Spring.PlaySoundFile("sounds/explosion/shotdown1.wav", 4, px, py, pz)
	else
		Spring.PlaySoundFile("sounds/explosion/shotdown2.wav", 4, px, py, pz)
	end	
	
		return 2

end
