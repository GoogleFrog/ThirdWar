local base = piece "base"
local wake = piece "wake"
--local door1 = piece "door1"
--local door2 = piece "door2"
--local missile = piece "missile"
local firepoint2 = piece "firepoint2"
local firepoint1 = piece "firepoint1"

local isMoving = false
local open = false
local submerged = true

include "constants.lua"

--local SIG_AIM = 2
--local SIG_OPEN = 1

local openingDoors = false
local doorsAreOpen = false
local closingDoors = false
local missileLoaded = true

-- Signal definitions
local SIG_AIM = 1
local SIG_RESTORE = 2

local function OpenDoors()
	SetSignalMask(0)
	
	if openingDoors or closingDoors then
		return
	end 
	openingDoors = true

	--Move(firepoint2, y_axis, 180, 25)
	--Move(firepoint1, y_axis, 80, 25)
	Move(base, y_axis, 40, 5)
	WaitForMove(base, y_axis)
	Sleep(1000)
	
	--Sleep(1000)
	--Sleep(3000)
	doorsAreOpen = true
	openingDoors = false
	submerged = false
end

local function CloseDoors()
	SetSignalMask(0)
	
	if openingDoors or closingDoors then
		return
	end
	doorsAreOpen = false
	closingDoors = true
	
	Sleep(500)
	
	--Move(firepoint1, y_axis, 40, 25)
	--Move(firepoint2, y_axis, 40, 25)
	Move(base, y_axis, 0, 5)
	Sleep(500)
	--WaitForMove(base, y_axis)
		
	closingDoors = false
	missileLoaded = true
	submerged = true
end

--[[
function script.StartMoving()
	isMoving = true
	Signal(SIG_MOVE)
	SetSignalMask(SIG_MOVE)	
		
	--Move(base, y_axis, 0, 5)
	--canfire = false		
	--WaitForMove(base, y_axis)
	
end

function script.StopMoving()	
	isMoving = false
	Signal(SIG_MOVE)
	SetSignalMask(SIG_MOVE)
	
end

]]--

function script.QueryWeapon(num)
	if num == 1 then 
		return firepoint2
	else
		return firepoint1
	end
end

function script.AimFromWeapon(num)
	if num == 1 then 
		return firepoint2
	else
		return firepoint1
	end
end

local function RestoreAfterDelay()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(8000)
	
	StartThread(CloseDoors)
end

function script.AimWeapon(num, heading, pitch)
	if num > 1 then 
		return true
	end

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
end

function script.FireWeapon(num)
	if num > 1 then 

	else
	
	
	missileLoaded = false
	doorsAreOpen = false

	if GG.GameRules_NukeLaunched then
		GG.GameRules_NukeLaunched()
	end
	
	Sleep(1000)
	-- Intentionally non-positional
	Spring.PlaySoundFile("sounds/NukeSiren.wav", 0.35)
	
	end
	
end


local subArmorClass = Game.armorTypes.subs
local elseArmorClass = Game.armorTypes["else"]

function script.setSFXoccupy(num)
	if (num == 4) or (num == 0)
		then submerged = false
		else submerged = true
	end
end

function script.HitByWeapon (x, z, weaponDefID, damage)
	if weaponDefID < 0 then return damage end
	if not submerged then
		local damageTable = WeaponDefs[weaponDefID].damages
		return damage * (damageTable[elseArmorClass] / damageTable[subArmorClass])
	end
	return damage
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if (severity <= 0.25) then
		return 1
	elseif (severity <= 1.00) then
		--Explode (door1, sfxFall)
		Explode (base, sfxFall)
		return 1
	elseif (severity <= 2.0) then
		Explode (base, sfxShatter)
		--Explode (door1, sfxFall)
		return 2
	else
		Explode (base, sfxShatter)
		--Explode (door1, sfxFall + sfxSmoke + sfxFire)
		--Explode (door2, sfxFall + sfxSmoke + sfxFire)
		return 2
	end
end
