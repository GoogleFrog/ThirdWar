local base = piece 'base' 
--local body = piece 'base' 
--local jet = piece 'base' 
local wingtipl = piece 'wingtipl' 
local wingtipr = piece 'wingtipr' 

--local smokePiece = {body, jet}

include "constants.lua"
include "bombers.lua"
include "fixedwingTakeOff.lua"

local SIG_TAKEOFF = 1
local takeoffHeight = UnitDefNames["bomberstrike"].wantedHeight

local function Lights()
	while select(5, Spring.GetUnitHealth(unitID)) < 1 do
		Sleep(400)
	end
	while true do
		EmitSfx(wingtipl, 1025)
		EmitSfx(wingtipr, 1026)
		Sleep(2000)
	end
end

function script.StopMoving()
	StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
end

function script.Create()
	SetInitialBomberSettings()
	StartThread(SmokeUnit, smokePiece)
	StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
	--StartThread(Lights)
end

function script.AimWeapon(num)
	return true
end

function script.QueryWeapon(num)
	return base
end

function script.BlockShot(num)
	return RearmBlockShot()
end

function script.FireWeapon(num)
	SetUnarmedAI()
	Sleep(3000)
	Reload()
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then
		Explode(base, sfxNone)
		--Explode(body, sfxNone)
		--Explode(jet, sfxNone)
		return 1
	elseif severity <= .50 or (Spring.GetUnitMoveTypeData(unitID).aircraftState == "crashing") then
		Explode(base, sfxNone)	
		--Explode(body, sfxNone)
		--Explode(jet, sfxShatter)
		return 1
	elseif severity <= .75 then
		Explode(base, sfxShatter)	
		--Explode(body, sfxShatter)
		--Explode(jet, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		return 2
	else
		Explode(base, sfxShatter)	
		--Explode(body, sfxShatter)
		Explode(base, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		--Explode(jet, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		return 2
	end
end
