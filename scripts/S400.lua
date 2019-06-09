include "constants.lua"
include "RockPiece.lua"
include "pieceControl.lua"

local wheels = { piece("wheels1", "wheels2", "wheels3", "wheels4" ) }
local base, turret = piece ('base', 'turret')

local tube1, tube2, tube3, tube4 = piece ('tube1', 'tube2', 'tube3', 'tube4' )
local tube1_cap, tube2_cap, tube3_cap, tube4_cap = piece ('tube1_cap', 'tube2_cap', 'tube3_cap', 'tube4_cap' )
local tube1_inner, tube2_inner, tube3_inner, tube4_inner = piece ('tube1_inner', 'tube2_inner', 'tube3_inner', 'tube4_inner' )
local smoke1, smoke2, smoke3, smoke4 = piece ('smoke1', 'smoke2', 'smoke3', 'smoke4' )
local missile1, missile2, missile3, missile4 = piece ('missile1', 'missile2', 'missile3', 'missile4' )

local missiles = {
	piece ('missile1'),
	piece ('missile2'),
	piece ('missile3'),
	piece ('missile4'),
}

local smokes = {
	piece ('smoke1'),
	piece ('smoke2'),
	piece ('smoke3'),
	piece ('smoke4'),
}

local SIG_AIM = 1
local SIG_RESTORE = 2
local SIG_Move = 4
local SIG_ROCK_X = 8
local SIG_ROCK_Z = 16

local ROCK_FIRE_FORCE = 0.06
local ROCK_SPEED = 18		--Number of half-cycles per second around x-axis.
local ROCK_DECAY = -0.25	--Rocking around axis is reduced by this factor each time = piece 'to rock.
local ROCK_PIECE = base	-- should be negative to alternate rocking direction.
local ROCK_MIN = 0.001 --If around axis rock is not greater than this amount, rocking will stop after returning to center.
local ROCK_MAX = 1.5

local TURRET_SPEED = math.rad(10)
local CLAMP_SPEED = math.rad(90)

local WHEEL_SPIN_SPEED = math.rad(720)
local WHEEL_SPIN_ACCEL = math.rad(10)
local WHEEL_SPIN_DECEL = math.rad(30)

local gunHeading = 0



--local scriptReload = include("scriptReload.lua")
local missile, missilespeed, mfront
local ammo = 4
local shotNum = 1
--local gameSpeed = Game.gameSpeed

--[[
local wheels = {
	large = { piece('wheels1'), piece('wheels8') },
	small = {},
}
for i = 2, 7 do
	wheels.small[i-1] = piece ('wheels' .. i)
end
]]--

--local disarmed = false
--local stuns = {false, false, false}
local deploying = false
local isMoving = false
local isAiming = false
local currentMissile = 1
--local currentTracks = 1

local isLoaded, isReady = true, false
local isDeployed = false

local openingDoors = false
local doorsAreOpen = false
local closingDoors = false
local missileLoaded = true

local smokePiece = {base, turret}

local function OpenDoors()
	--SetSignalMask(0)
	
	if openingDoors or closingDoors then
		return
	end 
	openingDoors = true


	
	Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 0.11)
	Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 0.11)
	GG.UpdateUnitAttributes(unitID)
	Turn(turret, x_axis, math.rad(-90), TURRET_SPEED)
	WaitForTurn(turret, x_axis)		
	--Sleep(1000)
	--Sleep(3000)
	doorsAreOpen = true
	openingDoors = false

end

local function CloseDoors()
	--SetSignalMask(0)
	
	if openingDoors or closingDoors then
		return
	end
	doorsAreOpen = false
	closingDoors = true
	
	--Sleep(50)
	Turn(turret, x_axis, math.rad(0), TURRET_SPEED)
	WaitForTurn(turret, x_axis)	
	Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 1.0)
	Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1.0)		
	GG.UpdateUnitAttributes(unitID)
	--Sleep(500)
		
	closingDoors = false
	missileLoaded = true

end

--[[
function TracksControl()
	Signal (SIG_Move)
	SetSignalMask (SIG_Move)

--	for i = 1, #wheels.large do
--		Spin (wheels.large[i], x_axis, math.rad(360), math.rad(10))
--	end
--	for i = 1, #wheels.small do
--		Spin (wheels.small[i], x_axis, math.rad(540), math.rad(15))
--	end

	while isMoving do
		Hide (tracks[currentTracks])
		currentTracks = (currentTracks == 4) and 1 or (currentTracks + 1)
		Show (tracks[currentTracks])
		Sleep (66)
	end

--	for i = 1, #wheels.large do
--		StopSpin (wheels.large[i], x_axis, math.rad(30))
--	end
--	for i = 1, #wheels.small do
--		StopSpin (wheels.small[i], x_axis, math.rad(45))
--	end
end
]]--

--[[
local function CheckDeploy(num)

	while true do


		if isMoving then		
			Signal(SIG_RESTORE)
			SetSignalMask(SIG_RESTORE)
			Turn(turret, x_axis, math.rad(-90), TURRET_SPEED)
			WaitForTurn(turret, x_axis)	
			Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 1.0)
			Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1.0)		
			GG.UpdateUnitAttributes(unitID)
			isDeployed = false		
		elseif isAiming and isDeployed then		
			Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 0.0)
			Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 0.0)
			GG.UpdateUnitAttributes(unitID)
			Turn(turret, x_axis, math.rad(-90), TURRET_SPEED)
			WaitForTurn(turret, x_axis)			
			isDeployed = true	
		
			
		end
			
		--if isAiming then
	
		--end			
			

		Sleep(100)
		
	end

end			
]]--

local function RestoreTube1()
	Sleep(25000)
	Show(tube3_cap)
	Hide(tube3_inner)
end

local function RestoreTube2()
	Sleep(25000)
	Show(tube4_cap)
	Hide(tube4_inner)
end

local function RestoreTube3()
	Sleep(25000)
	Show(tube1_cap)
	Hide(tube1_inner)
end

local function RestoreTube4()
	Sleep(25000)
	Show(tube2_cap)
	Hide(tube2_inner)
end



function script.Create()
	InitializeRock(ROCK_PIECE, ROCK_SPEED, ROCK_DECAY, ROCK_MIN, ROCK_MAX, SIG_ROCK_X, x_axis)
	InitializeRock(ROCK_PIECE, ROCK_SPEED, ROCK_DECAY, ROCK_MIN, ROCK_MAX, SIG_ROCK_Z, z_axis)
	
	Hide (tube1_inner)
	Hide (tube2_inner)
	Hide (tube3_inner)
	Hide (tube4_inner)
	Hide(missiles[1])
	Hide(missiles[2])		
	Hide(missiles[3])		
	Hide(missiles[4])		
	


	while (select(5, Spring.GetUnitHealth(unitID)) < 1) do
		Sleep (250)
	end

	--Move (missiles[1], z_axis, 0.5)
	--Move (missiles[2], z_axis, 0.5)
	--scriptReload.SetupScriptReload(num, 30 * gameSpeed)
	StartThread (SmokeUnit, smokePiece)
	--StartThread (Reload)
	--StartThread (CheckDeploy)	
	
end

function script.StartMoving()
	isAiming = false
	isMoving = true
	Signal(SIG_MOVE)
	--SetSignalMask(SIG_MOVE)	
	
	CloseDoors()

	--if isDeployed then
--[[
	--end
		--Signal(SIG_RESTORE)
		--SetSignalMask(SIG_RESTORE)
		Turn(turret, x_axis, math.rad(-90), TURRET_SPEED)
		WaitForTurn(turret, x_axis)	
		--Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 1.0)
		--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1.0)		
		--GG.UpdateUnitAttributes(unitID)
		isDeployed = false
		]]--
	
end

function script.StopMoving()
	
	isMoving = false
	Signal(SIG_MOVE)
	--SetSignalMask(SIG_MOVE)
	
end

--[[
function script.AimFromWeapon()
	--return missiles[ammo]
	
		if (shotNum == 1) then 
			return smoke3
		elseif (shotNum == 2) then 
			return smoke4
		elseif (shotNum == 3) then 
			return smoke1
		elseif (shotNum == 4) then 
			return smoke2
		else
			return smoke1
		end	
	
end
]]--

function script.QueryWeapon(num)
	--return missiles[shotNum]
	return smoke1
end

local function RestoreAfterDelay()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(8000)
	
	StartThread(CloseDoors)
end

function script.AimWeapon(num)	

	StartThread(RestoreAfterDelay)
	
	if not (missileLoaded or closingDoors) then
		StartThread(CloseDoors)
	elseif not (doorsAreOpen or openingDoors) then
		StartThread(OpenDoors)
	end
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	while not doorsAreOpen do
		Sleep(25)
	end
	return true
	
	--if (ammo >= 1 ) then	--and isMoving == false
		

	--else then
		--StartThread(Restore)
		--return false
	--end
end

--[[
function script.BlockShot(num, targetID)
	if not targetID then
		return false
	end
	if GG.OverkillPrevention_CheckBlock(unitID, targetID, 1000.1, 150, false, false, true) then
		return true
	end
	return false
end
]]--

function script.FireWeapon(num)
		
		--Hide(missiles[ammo])		
		
		if (shotNum == 1) then 
			Hide(tube3_cap)
			Show(tube3_inner)			
			EmitSfx(smoke3, UNIT_SFX2)	
			StartThread(RestoreTube1)
		elseif (shotNum == 2) then 
			Hide(tube4_cap)
			Show(tube4_inner)			
			EmitSfx(smoke4, UNIT_SFX2)
			StartThread(RestoreTube2)
		elseif (shotNum == 3) then 
			Hide(tube1_cap)
			Show(tube1_inner)			
			EmitSfx(smoke1, UNIT_SFX2)
			StartThread(RestoreTube3)			
		elseif (shotNum == 4) then 
			Hide(tube2_cap)
			Show(tube2_inner)			
			EmitSfx(smoke2, UNIT_SFX2)
			StartThread(RestoreTube4)
		end
		


		shotNum = (shotNum + 1)%4

	--missileLoaded = false
	--doorsAreOpen = false
		
		--[[
		--if isMoving then		
		Signal(SIG_RESTORE)
		SetSignalMask(SIG_RESTORE)
		Turn(turret, x_axis, math.rad(-90), TURRET_SPEED)
		WaitForTurn(turret, x_axis)	
		--Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 1.0)
		--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1.0)		
		--GG.UpdateUnitAttributes(unitID)
		isDeployed = false
		--end
		]]--
	

	
end





function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then 
		Explode(base, sfxNone)		
		Explode(turret, sfxNone)
		Explode(tube1, sfxSmoke + sfxFire + sfxFall)
		Explode(tube2, sfxSmoke + sfxFire + sfxFall)
		Explode(tube3, sfxSmoke + sfxFire + sfxFall)
		Explode(tube4, sfxSmoke + sfxFire + sfxFall)	
--[[		
		Explode(tube1_cap, sfxSmoke + sfxFall)
		Explode(tube2_cap, sfxSmoke + sfxFall)
		Explode(tube3_cap, sfxSmoke + sfxFall)
		Explode(tube4_cap, sfxSmoke + sfxFall)
		Explode(missile1, sfxShatter)
		Explode(missile2, sfxNone)
		Explode(missile3, sfxNone)
		Explode(missile4, sfxNone)
		]]--
		return 1
	elseif severity <= .50 then 
		Explode(base, sfxNone)
		--Explode(bay, sfxNone)
		Explode(turret, sfxFall)
		Explode(tube1, sfxSmoke + sfxFire + sfxFall)
		Explode(tube2, sfxSmoke + sfxFire + sfxFall)
		Explode(tube3, sfxSmoke + sfxFire + sfxFall)
		Explode(tube4, sfxSmoke + sfxFire + sfxFall)
		--[[
		Explode(tube1_cap, sfxSmoke + sfxFall)
		Explode(tube2_cap, sfxSmoke + sfxFall)
		Explode(tube3_cap, sfxSmoke + sfxFall)
		Explode(tube4_cap, sfxSmoke + sfxFall)						
		--Explode(clamp1, sfxFall)
		--Explode(clamp2, sfxFall)
		Explode(missile1, sfxShatter)
		Explode(missile2, sfxNone)
		Explode(missile3, sfxNone)
		Explode(missile4, sfxNone)
		]]--
		
		return 1
	else 
		Explode(base, sfxShatter)
		--Explode(bay, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(turret, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(tube1, sfxSmoke + sfxFire + sfxFall)
		Explode(tube2, sfxSmoke + sfxFire + sfxFall)
		Explode(tube3, sfxSmoke + sfxFire + sfxFall)
		Explode(tube4, sfxSmoke + sfxFire + sfxFall)
--[[		
		Explode(tube1_cap, sfxSmoke + sfxFall)
		Explode(tube2_cap, sfxSmoke + sfxFall)
		Explode(tube3_cap, sfxSmoke + sfxFall)
		Explode(tube4_cap, sfxSmoke + sfxFall)						
		--Explode(clamp1, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		--Explode(clamp2, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(missile1, sfxShatter)
		Explode(missile2, sfxNone)
		Explode(missile3, sfxNone)
		Explode(missile4, sfxNone)
		]]--
		return 2
	end
end