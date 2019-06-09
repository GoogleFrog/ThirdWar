include "constants.lua"

--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------
local base, turret, sleeve, smoke1, smoke2, smoke3, smoke4, firepoint = piece('base', 'turret', 'sleeve', 'smoke1', 'smoke2', 'smoke3', 'smoke4', 'firepoint')

local smokePiece = {turret, sleeve}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local SIG_Idle = 1
local SIG_Aim = 2
local lastHeading = 0

local function IdleAnim()
	Signal(SIG_Idle)
	SetSignalMask(SIG_Idle)
	while true do
		Turn(sleeve, y_axis, lastHeading - math.rad(30), math.rad(60))
		Sleep(math.random(3000, 6500))
		Turn(sleeve, y_axis, lastHeading + math.rad(30), math.rad(60))
		Sleep(math.random(3000, 6500))
	end
end

function script.Create()
	while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do Sleep(400) end
	StartThread(SmokeUnit, smokePiece)
	--StartThread(IdleAnim)
end

function script.QueryWeapon() 
	return firepoint
end

function script.AimFromWeapon()
	return firepoint
end

local function RestoreAfterDelay()
	Sleep(6000)
	--StartThread(IdleAnim)
end

function script.AimWeapon(num, heading, pitch)
	--Signal(SIG_Idle)
	Signal(SIG_Aim)
	SetSignalMask(SIG_Aim)
	Turn(turret, y_axis, heading, math.rad(30))
	Turn(sleeve, x_axis, -pitch, math.rad(20))
	WaitForTurn(turret, y_axis)
	WaitForTurn(sleeve, x_axis)
	lastHeading = heading
	--StartThread(RestoreAfterDelay)
	return true
end

--[[
function script.BlockShot(num, targetID)
	return GG.OverkillPrevention_CheckBlock(unitID, targetID, 1000.1, 50)
end
]]--

function script.FireWeapon()
	--ammo = ammo - 1		
	--if ( ammo < 0 ) then ammo = 0
	--end
	--StartThread(FireAndReload, shotNum)
	EmitSfx(smoke1, UNIT_SFX1)
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if (severity <= .5) then
		Explode(base, sfxNone)
		Explode(turret, sfxNone)
		Explode(sleeve, sfxNone)
		return 1 -- corpsetype
	else		
		Explode(base, sfxShatter)
		Explode(turret, sfxSmoke + sfxFire)
		Explode(sleeve, sfxSmoke + sfxFire + sfxExplode)
		return 2 -- corpsetype
	end
end
