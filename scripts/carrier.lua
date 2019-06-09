include "constants.lua"
include "spider_walking.lua"

local ALLY_ACCESS = {allied = true}

local aimpoint = piece('aimpoint')
local eyeflare = piece('eyeflare')
local emitl, emitr = piece('emitl', 'emitr')
local Radar = piece('Radar');
local WakeForeRight = piece('WakeForeRight');
local WakeForeLeft = piece('WakeForeLeft');
local WakeAftRight = piece('WakeAftRight');
local WakeAftLeft = piece('WakeAftLeft');

-- note reversed sides from piece names!

local smokePiece = {emitl, emitr}

local SIG_WALK = 1

local PERIOD = 0.35

local sleepTime = PERIOD*1000

local legRaiseAngle = math.rad(20)
local legRaiseSpeed = legRaiseAngle/PERIOD
local legLowerSpeed = legRaiseAngle/PERIOD

local legForwardAngle = math.rad(12)
local legForwardTheta = math.rad(25)
local legForwardOffset = 0
local legForwardSpeed = legForwardAngle/PERIOD

local legMiddleAngle = math.rad(12)
local legMiddleTheta = 0
local legMiddleOffset = 0
local legMiddleSpeed = legMiddleAngle/PERIOD

local legBackwardAngle = math.rad(12)
local legBackwardTheta = -math.rad(25)
local legBackwardOffset = 0
local legBackwardSpeed = legBackwardAngle/PERIOD

local function Walk()
	Signal (SIG_WALK)
	SetSignalMask (SIG_WALK)

end

local function RestoreLegs()
	Signal (SIG_WALK)
	SetSignalMask (SIG_WALK)
				
end

function script.Create()
	Move (aimpoint, z_axis, -4)
	Move (aimpoint, y_axis, 0)
	Move (aimpoint, x_axis, -9)
	StartThread(SmokeUnit, smokePiece)
end

function script.Activate()
	Spring.SetUnitRulesParam(unitID, "shieldChargeDisabled", 0, ALLY_ACCESS)
	Spin(Radar, y_axis, rad(60))
end

function script.Deactivate()
	Spring.SetUnitRulesParam(unitID, "shieldChargeDisabled", 1, ALLY_ACCESS)
end

function script.StartMoving ()
	StartThread (Walk)
	
	while true do
		--if(not Spring.GetUnitIsCloaked(unitID)) then
			EmitSfx(WakeForeLeft, 2)
			EmitSfx(WakeForeRight, 2)
			EmitSfx(WakeAftLeft, 2)
			EmitSfx(WakeAftRight, 2)
		--end
		Sleep(150)
	end	
	
end

function script.StopMoving ()
	StartThread (RestoreLegs)
end

function script.QueryWeapon (num)
	return aimpoint
end

function script.AimWeapon (num)
	if num == 1 then return false -- fake targeter
	else return true end
end

function script.Killed (recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then
		return 1
	elseif severity <= .50 then

		return 1
	elseif severity <= .75 then
		

		Explode (gaster, sfxShatter)
		return 2
	else


		return 2
	end
end
