local base = piece "base"

local turret = piece "turret"
local tube = piece "tube"



local tubecap = piece "tubecap"
local tubething1 = piece "tubething1"
local tubething2 = piece "tubething2"
local tubething3 = piece "tubething3"
local tube_inner = piece "tube_inner"
local missile = piece "missile"
local smoke1 = piece "smoke1"

local clampleft = piece "clampleft"
local clampright = piece "clampright"
local rearclampleft = piece "rearclampleft"
local rearclampleft = piece "rearclampleft"
local thingleft = piece "thingleft"
local thingright = piece "thingright"
local thingy1 = piece "thingy1"
local thingy2 = piece "thingy2"
local mirrorleft = piece "mirrorleft"
local mirrorright = piece "mirrorright"

local wheelleft1 = piece "wheelleft1"
local wheelleft1b = piece "wheelleft1b"
local wheelleft2 = piece "wheelleft2"
local wheelleft2b = piece "wheelleft2b"
local wheelleft3 = piece "wheelleft3"
local wheelleft3b = piece "wheelleft3b"
local wheelleft4 = piece "wheelleft4"
local wheelleft4b = piece "wheelleft4b"
local wheelleft5 = piece "wheelleft5"
local wheelleft5b = piece "wheelleft5b"
local wheelleft6 = piece "wheelleft6"
local wheelleft6b = piece "wheelleft6b"
local wheelleft7 = piece "wheelleft7"
local wheelleft7b = piece "wheelleft7b"
local wheelleft8 = piece "wheelleft8"
local wheelleft8b = piece "wheelleft8b"

local wheelright1 = piece "wheelright1"
local wheelright1b = piece "wheelright1b"
local wheelright2 = piece "wheelright2"
local wheelright2b = piece "wheelright2b"
local wheelright3 = piece "wheelright3"
local wheelright3b = piece "wheelright3b"
local wheelright4 = piece "wheelright4"
local wheelright4b = piece "wheelright4b"
local wheelright5 = piece "wheelright5"
local wheelright5b = piece "wheelright5b"
local wheelright6 = piece "wheelright6"
local wheelright6b = piece "wheelright6b"
local wheelright7 = piece "wheelright7"
local wheelright7b = piece "wheelright7b"
local wheelright8 = piece "wheelright8"
local wheelright8b = piece "wheelright8b"

--[[
local explodables = {tubecap, tubething1, tubething2, tubething3, tube_inner, clampleft, clampright, rearclampleft, rearclampright, thingleft, thingright, thingy1, thingy2, mirrorleft, mirrorright, 
		wheelleft1, wheelleft2, wheelleft3, wheelleft4, wheelleft5, wheelleft6, wheelleft7, wheelleft8, 
		wheelright1, wheelright2, wheelright3, wheelright4, wheelright5, wheelright6, wheelright7, wheelright8 
		}
]]--


local TURRET_SPEED = math.rad(10)
local CLAMP_SPEED = math.rad(90)

local isMoving = false
local open = false

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

	Turn(turret, x_axis, math.rad(-90), TURRET_SPEED)
	WaitForTurn(turret, x_axis)	
	Sleep(1000)
	
	--Sleep(1000)
	--Sleep(3000)
	doorsAreOpen = true
	openingDoors = false
	
end

local function CloseDoors()
	SetSignalMask(0)
	
	if openingDoors or closingDoors then
		return
	end
	doorsAreOpen = false
	closingDoors = true
	
	Sleep(500)
	

	Turn(turret, x_axis, math.rad(0), TURRET_SPEED)
	WaitForTurn(turret, x_axis)	
	--Sleep(500)
		
	closingDoors = false
	missileLoaded = true
	
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

local function RestoreTube()
	Sleep(238000)
	Show(missile)	
	Sleep(1999)
	Show(tubecap)
	Hide(tube_inner)
	Hide(missile)
end

function script.QueryWeapon(num)
	return smoke1
end

function script.AimFromWeapon(num)
	return smoke1
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

	
	Hide(tubecap)
	Hide(missile)
	Show(tube_inner)
	
	missileLoaded = false
	doorsAreOpen = false

	if GG.GameRules_NukeLaunched then
		GG.GameRules_NukeLaunched()
	end
	
	StartThread(RestoreTube)
	
	Sleep(1000)
	-- Intentionally non-positional
	Spring.PlaySoundFile("sounds/NukeSiren.wav", 0.35)

	
	Sleep(5000)	
	StartThread(CloseDoors)
	
	
end


function script.Create()
	InitializeRock(ROCK_PIECE, ROCK_SPEED, ROCK_DECAY, ROCK_MIN, ROCK_MAX, SIG_ROCK_X, x_axis)
	InitializeRock(ROCK_PIECE, ROCK_SPEED, ROCK_DECAY, ROCK_MIN, ROCK_MAX, SIG_ROCK_Z, z_axis)
	
	Hide (tube_inner)
	Hide (missile)
	Hide (mirrorleft)
	Hide (mirrorright)
	Hide (thingy1)
	Hide (thingy2)

	


--	while (select(5, Spring.GetUnitHealth(unitID)) < 1) do
--		Sleep (250)
--	end

	--StartThread (SmokeUnit, smokePiece)
	
	
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	local i
	
	Show(tube_inner)
	Show(missile)
	Show(mirrorleft)
	Show(mirrorright)
	Show(thingy1)
	Show(thingy2)
	
	Show(wheelleft1b)
	Show(wheelleft2b)
	Show(wheelleft3b)
	Show(wheelleft4b)
	Show(wheelleft5b)
	Show(wheelleft6b)
	Show(wheelleft7b)
	Show(wheelleft8b)
	Show(wheelright1b)
	Show(wheelright2b)
	Show(wheelright3b)
	Show(wheelright4b)
	Show(wheelright5b)
	Show(wheelright6b)
	Show(wheelright7b)
	Show(wheelright8b)

	
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
	
	--[[
		for i = 1, #explodables do
			if (math.random() < severity) then
				Explode (explodables[i], sfxSmoke + sfxFire)
			end
		end	
		]]--
	
		Explode (base, sfxShatter)
		--Explode (door1, sfxFall + sfxSmoke + sfxFire)
		--Explode (door2, sfxFall + sfxSmoke + sfxFire)
		return 2
	end
end
