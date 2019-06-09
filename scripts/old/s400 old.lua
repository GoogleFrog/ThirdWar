include 'constants.lua'

local base, gantry, missile, smoke, strobe = piece("base", "gantry", "missile", "smoke", "strobe")
local tube1, tube2, tube3, tube4 = piece("tube1", "tube2", "tube3", "tube4")
local tube1_cap, tube2_cap, tube3_cap, tube4_cap = piece("tube1_cap", "tube2_cap", "tube3_cap", "tube4_cap")
local tube1_inner, tube2_inner, tube3_inner, tube4_inner = piece("tube1_inner", "tube2_inner", "tube3_inner", "tube4_inner")
local wheels = { piece("wheels1", "wheels2", "wheels3", "wheels4" ) }

local smokePiece = {gantry}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Signal definitions
local SIG_AIM = 2
local SIG_MOVE = 1

local RESTORE_DELAY = 5000
local LOAD_DELAY = 30000
--local TRACK_PERIOD = 50

local BAY_DISTANCE = -10
local BAY_SPEED = 8
local GANTRY_SPEED = math.rad(10)
local CLAMP_SPEED = math.rad(90)

local WHEEL_SPIN_SPEED = math.rad(720)
local WHEEL_SPIN_ACCEL = math.rad(10)
local WHEEL_SPIN_DECEL = math.rad(30)

local isLoaded, isReady, isMoving, doStrobe = false, false, false, false
--local canMove = true;
--local tracks = 1

local scriptReload = include("scriptReload.lua")
local ammo = 3
local shotNum = 0
local gameSpeed = Game.gameSpeed

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--[[
local function TrackControl() 
	while isMoving do 
		tracks = tracks + 1
		if tracks == 2 then 
			Hide(tracks1)
			Show(tracks2)
		elseif tracks == 3 then 
			Hide(tracks2)
			Show(tracks3)
		elseif tracks == 4 then 
			Hide(tracks3)
			Show(tracks4)
		else 
			tracks = 1
			Hide(tracks4)
			Show(tracks1)
		end
		Sleep(TRACK_PERIOD)
	end
end
]]--

local function Prepare() 
	Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 0.0)
	Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 0.0)
	GG.UpdateUnitAttributes(unitID)
	--canMove = false;
	--Move(bay, x_axis, 0, BAY_SPEED)
	--WaitForMove(bay, x_axis)
	doStrobe = true
	Turn(gantry, x_axis, math.rad(-90), GANTRY_SPEED)
	WaitForTurn(gantry, x_axis)
	
	--Turn(clamp1, z_axis, math.rad(-(90)), CLAMP_SPEED)
	--Turn(clamp2, z_axis, math.rad(-(-90)), CLAMP_SPEED)
	--WaitForTurn(clamp1, y_axis)
	--WaitForTurn(clamp2, y_axis)
	--Turn(gantry, z_axis, math.rad(-(90)), CLAMP_SPEED)
	--Turn(gantry, z_axis, math.rad(-(-90)), CLAMP_SPEED)
	--WaitForTurn(gantry, y_axis)
	--WaitForTurn(gantry, y_axis)

	--Show(tube1_inner)
	--Show(tube2_inner)
	--Show(tube3_inner)
	--Show(tube4_inner)	
	
	isReady = true
end
local function Restore() 
	isReady = false
	doStrobe = false
	--Turn(clamp1, z_axis, 0, CLAMP_SPEED)
	--Turn(clamp2, z_axis, 0, CLAMP_SPEED)
	--WaitForTurn(clamp1, z_axis)
	--WaitForTurn(clamp2, z_axis)	
	--Turn(gantry, z_axis, 0, CLAMP_SPEED)
	--Turn(gantry, z_axis, 0, CLAMP_SPEED)
	--WaitForTurn(gantry, z_axis)
	--WaitForTurn(gantry, z_axis)
	
	Turn(gantry, x_axis, 0, GANTRY_SPEED)
	WaitForTurn(gantry, x_axis)
	--Move(bay, x_axis, -BAY_DISTANCE, BAY_SPEED)
	--WaitForMove(bay, x_axis)
	Show(tube1_cap)
	Show(tube2_cap)
	Show(tube3_cap)
	Show(tube4_cap)
	--Hide(tube1_inner)
	--Hide(tube2_inner)
	--Hide(tube3_inner)
	--Hide(tube4_inner)	
	--canMove = true;	
	Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 1)
	Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1)
	GG.UpdateUnitAttributes(unitID)
end

local function Reload() 	
	--isReady = false
	--doStrobe = false
	--Turn(clamp1, z_axis, 0, CLAMP_SPEED)
	--Turn(clamp2, z_axis, 0, CLAMP_SPEED)
	--WaitForTurn(clamp1, z_axis)
	--WaitForTurn(clamp2, z_axis)	
	--Turn(gantry, z_axis, 0, CLAMP_SPEED)
	--Turn(gantry, z_axis, 0, CLAMP_SPEED)
	--WaitForTurn(gantry, z_axis)
	--WaitForTurn(gantry, z_axis)
	
	--Turn(gantry, x_axis, 0, GANTRY_SPEED)
	--WaitForTurn(gantry, x_axis)
	--Move(bay, x_axis, -BAY_DISTANCE, BAY_SPEED)
	--WaitForMove(bay, x_axis)
	
	Sleep(LOAD_DELAY)
	isLoaded = 1
	Show(missile)
	Show(tube1_cap)
end

local function Moving()
	Signal(SIG_MOVE)
	SetSignalMask(SIG_MOVE)
	
	--StartThread(TrackControl)
	--for i=1,#wheels do
	--	Spin(wheels[i], x_axis, WHEEL_SPIN_SPEED, WHEEL_SPIN_ACCEL)
	--end
end

local function Stopping()
	Signal(SIG_MOVE)
	SetSignalMask(SIG_MOVE)
	--for i=1,#wheels do
	--	StopSpin(wheels[i], x_axis, WHEEL_SPIN_DECEL)
	--end
end

function script.StartMoving() 
	--if ( canMove ) then
		isMoving = true
		StartThread(Moving)
	--end
end

function script.StopMoving() 
	isMoving = false
	StartThread(Stopping)
end

local function RestoreAfterDelay() 
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(RESTORE_DELAY)
	StartThread(Restore)
end

local SleepAndUpdateReload = scriptReload.SleepAndUpdateReload

function script.AimWeapon(num, heading, pitch) 

	if ammo >= 1 then
		Signal(SIG_RESTORE)
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Spring.SetUnitRulesParam(unitID, "selfTurnSpeedChange", 0.0)
		Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 0.0)
		GG.UpdateUnitAttributes(unitID)
		Turn(gantry, x_axis, math.rad(-90), GANTRY_SPEED)
		WaitForTurn(gantry, x_axis)
		isReady = true
		return true
	end

--[[
	--GG.DontFireRadar_CheckAim(unitID)
	
	--if isLoaded and isReady then 	
	--end	
	--if isLoaded then 
	if (not isReady ) then 
		StartThread(Prepare)
		
		--if doStrobe then
		--	EmitSfx(strobe, 1024)
		--end
	end

	
	while (not isReady) do
		Sleep(250)
	end
	--StartThread(RestoreAfterDelay)
	
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)	
	return true
	
]]--
	
end

function script.BlockShot(num, targetID)
	if not targetID then
		return false
	end
	--if GG.DontFireRadar_CheckBlock(unitID, targetID) then
	--	return true
	--end
	-- Seperation check is not required as the physics of the missile seems to result in a
	-- time to impact of between 140 and 150 frames in almost all cases.
	if GG.OverkillPrevention_CheckBlock(unitID, targetID, 2000.1, 150, false, false, true) then
		return true
	end
	return false
end

function script.QueryWeapon(num) 
	return smoke
end

function script.Shot(num) 
	shotNum = (shotNum + 1)%3
	ammo = ammo - 1
	
	scriptReload.GunStartReload(num)	

	Hide(missile)
	Hide(tube1_cap)
	
	--Hide(tube2_cap)
	--Hide(tube3_cap)
	--Hide(tube4_cap)		
	
	isLoaded = false
	doStrobe = false
	--StartThread(Reload)
	StartThread(RestoreAfterDelay)
	--StartThread(Restore)
	
	SleepAndUpdateReload(num, 10 * gameSpeed)
	
	if scriptReload.GunLoaded(num) then
		shotNum = 0
	end
	
	ammo = ammo + 1
	
	
	
	
end

function script.Create()
	scriptReload.SetupScriptReload(4, 10 * gameSpeed)
	--Hide(tracks2)
	--Hide(tracks3)
	--Hide(tracks4)
	Hide(tube1_inner)
	Hide(tube2_inner)
	Hide(tube3_inner)
	Hide(tube4_inner)	
	
	--Move(bay, x_axis, -BAY_DISTANCE)
	StartThread(SmokeUnit, smokePiece)
	--StartThread(SetDeploy,true)
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then 
		Explode(base, sfxNone)
		--Explode(bay, sfxNone)
		Explode(gantry, sfxNone)
		Explode(tube1, sfxSmoke + sfxFire + sfxFall)
		Explode(tube2, sfxSmoke + sfxFire + sfxFall)
		Explode(tube3, sfxSmoke + sfxFire + sfxFall)
		Explode(tube4, sfxSmoke + sfxFire + sfxFall)		
		Explode(tube1_cap, sfxSmoke + sfxFall)
		Explode(tube2_cap, sfxSmoke + sfxFall)
		Explode(tube3_cap, sfxSmoke + sfxFall)
		Explode(tube4_cap, sfxSmoke + sfxFall)				
		--Explode(clamp1, sfxNone)
		--Explode(clamp2, sfxNone)
		Explode(missile, sfxNone)
		return 1
	elseif severity <= .50 then 
		Explode(base, sfxNone)
		--Explode(bay, sfxNone)
		Explode(gantry, sfxFall)
		Explode(tube1, sfxSmoke + sfxFire + sfxFall)
		Explode(tube2, sfxSmoke + sfxFire + sfxFall)
		Explode(tube3, sfxSmoke + sfxFire + sfxFall)
		Explode(tube4, sfxSmoke + sfxFire + sfxFall)
		Explode(tube1_cap, sfxSmoke + sfxFall)
		Explode(tube2_cap, sfxSmoke + sfxFall)
		Explode(tube3_cap, sfxSmoke + sfxFall)
		Explode(tube4_cap, sfxSmoke + sfxFall)						
		--Explode(clamp1, sfxFall)
		--Explode(clamp2, sfxFall)
		Explode(missile, sfxNone)
		return 1
	else 
		Explode(base, sfxShatter)
		--Explode(bay, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(gantry, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(tube1, sfxSmoke + sfxFire + sfxFall)
		Explode(tube2, sfxSmoke + sfxFire + sfxFall)
		Explode(tube3, sfxSmoke + sfxFire + sfxFall)
		Explode(tube4, sfxSmoke + sfxFire + sfxFall)		
		Explode(tube1_cap, sfxSmoke + sfxFall)
		Explode(tube2_cap, sfxSmoke + sfxFall)
		Explode(tube3_cap, sfxSmoke + sfxFall)
		Explode(tube4_cap, sfxSmoke + sfxFall)						
		--Explode(clamp1, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		--Explode(clamp2, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(missile, sfxNone)
		return 2
	end
end
