include "constants.lua"
include "pieceControl.lua"

local base = piece 'base'
local turret1 = piece 'turret1'
local sleeve1 = piece 'sleeve1'
local barrel1 = piece 'barrel1'
local flare1 = piece 'flare1'
local muzzle1 = piece 'muzzle1'

local turret2 = piece 'turret2'
local barrel2 = piece 'barrel2'
local sleeve2 = piece 'sleeve2'
local flare2 = piece 'flare2'
local muzzle2 = piece 'muzzle2'

local beam1 = piece 'beam1'
local beam2 = piece 'beam2'
local beam3 = piece 'beam3'
local beam4 = piece 'beam4'
local frame1 = piece 'frame1'
local frame2 = piece 'frame2'
local frame3 = piece 'frame3'
local ladder1 = piece 'ladder1'
local ladder2 = piece 'ladder2'
local floorp = piece 'floor'
local top = piece 'top'
local wall = piece 'wall'
local topbeam1 = piece 'topbeam1'
local topbeam2 = piece 'topbeam2'
local topbeam3 = piece 'topbeam3'
local topbeam4 = piece 'topbeam4'

local turret1head = piece 'turret1head'
local turret1hips = piece 'turret1hips'
local turret1chest = piece 'turret1chest'
local turret1lthigh = piece 'turret1lthigh'
local turret1lshin = piece 'turret1lshin'
local turret1lfoot = piece 'turret1lfoot'
local turret1rthigh = piece 'turret1rthigh'
local turret1rshin = piece 'turret1rshin'
local turret1rfoot = piece 'turret1rfoot'
local turret1gutz1 = piece 'turret1gutz1'
local turret1gutz2 = piece 'turret1gutz2'
local turret1gutz3 = piece 'turret1gutz3'
local turret1gutz4 = piece 'turret1gutz4'
local turret1gutz5 = piece 'turret1gutz5'
local turret1gutz6 = piece 'turret1gutz6'
local turret1gutz7 = piece 'turret1gutz7'
local turret1gutz8 = piece 'turret1gutz8'

local hitblock = piece 'hitblock'



local explodables = {base, floorp, wall, top, topbeam1, topbeam2, topbeam3, topbeam4, turret1, sleeve1, barrel1, turret2, sleeve2, barrel2 }
local gutz = { turret1head, turret1hips, turret1chest, turret1lthigh, turret1lshin, turret1lfoot, turret1rthigh, turret1rshin, turret1rfoot, turret1gutz1, turret1gutz2, turret1gutz3, turret1gutz4, turret1gutz5, turret1gutz6, turret1gutz7, turret1gutz8 }
local smokePiece = { turret, top }

local stuns = {false, false, false}

local turret1dead = false
local turret2dead = false

local SigAim = 1

local function RestoreAfterDelay()
	Sleep (6000)
	Show(barrel2)
	--Turn (turret1, y_axis, 0, math.rad(10))
	--Turn (sleeve1, x_axis, 0, math.rad(10))
end


local function DamageControl()

	local health;
	while true do
	
		health = Spring.GetUnitHealth(unitID);
		
		if health < 75 then
			turret1dead = true
			Hide(turret1)
			Hide(turret1head)
			Hide(turret1chest)
			Hide(sleeve1)
			Hide(barrel1)
			turret2dead = true
			Hide(turret2)
			Hide(sleeve2)
			Hide(barrel2)			
		elseif health < 150 then
			turret1dead = true
			Hide(turret1)
			Hide(turret1head)
			Hide(turret1chest)			
			Hide(sleeve1)
			Hide(barrel1)
			turret2dead = false
			Show(turret2)
			Show(sleeve2)
			Show(barrel2)
		else
			turret1dead = false
			Show(turret1)
			Show(turret1head)
			Show(turret1chest)			
			Show(sleeve1)
			Show(barrel1)			
			turret2dead = false
			Show(turret2)
			Show(sleeve2)
			Show(barrel2)			
		end
		
		Sleep(100)
		
		
	
	end
	
		

end



function script.Create()


	--Turn (ejector, y_axis, math.rad(-90))
	Hide(turret1gutz1)
	Hide(turret1gutz2)
	Hide(turret1gutz3)
	Hide(turret1gutz4)
	Hide(turret1gutz5)
	Hide(turret1gutz6)
	Hide(turret1gutz7)
	Hide(turret1gutz8)
	Hide(hitblock)

	while GetUnitValue(COB.BUILD_PERCENT_LEFT) > 0 do
		Sleep(100)
	end

	StartThread (SmokeUnit, smokePiece)
	StartThread (DamageControl)	
	
end

function script.QueryWeapon(num)

	if (num == 1 and turret1dead ) then 
		return false	
	elseif (num == 2 and turret2dead ) then 
		return false
	end

	if num == 1 then 
		return muzzle1
	elseif num == 2 then 
		return muzzle2
--	elseif num == 3 then 
--		return flare3		
	end
end

function script.AimFromWeapon(num)

	if (num == 1 and turret1dead ) then 
		return false	
	elseif (num == 2 and turret2dead ) then 
		return false
	end

	if num == 1  then 
		return muzzle1
	elseif num == 2  then 
		return muzzle2
--	elseif num == 3 then 
--		return flare3		
	end
end

function script.AimWeapon (num, heading, pitch)
		Signal (SigAim)
		SetSignalMask (SigAim)
		--local slowMult = (Spring.GetUnitRulesParam(unitID,"baseSpeedMult") or 1)
	if (num == 1 and turret1dead ) then 
		return false	
	elseif (num == 2 and turret2dead ) then 
		return false
	end

	if (num == 1  )then 		
		Turn (turret1, y_axis, heading, math.rad(180))
		Turn (sleeve1, x_axis, -pitch, math.rad(90))
		WaitForTurn (turret1, y_axis)
		WaitForTurn (sleeve1, x_axis)	
	elseif (num == 2  ) then 
		Turn (turret2, y_axis, heading, math.rad(180))
		Turn (sleeve2, x_axis, -pitch, math.rad(90))
		WaitForTurn (turret2, y_axis)
		WaitForTurn (sleeve2, x_axis)
		StartThread (RestoreAfterDelay)		
			
--	elseif num == 3 then 
--		return flare3		
	end



	return true
end

function script.FireWeapon(num)
	if (num == 1 and turret1dead ) then 
		return false	
	elseif (num == 2 and turret2dead ) then 
		return false
	end
	
	--local px, py, pz = Spring.GetUnitPosition(unitID)
	--local dice
	if num == 1 then 
		EmitSfx (flare1, 1024)
		EmitSfx (sleeve1, 1025)
		EmitSfx (flare1, 1026)
		Spin (barrel1, z_axis, math.rad(1820))
		StopSpin (barrel1, z_axis, math.rad(18))
	elseif num == 2 then 
		EmitSfx (flare2, 1027)
		Hide(barrel2)
		--return flare2
--	elseif num == 3 then 
--		return flare3		
	end

	
	--[[
	dice = math.random(0,6)
	
	if dice < 1 then
		Spring.PlaySoundFile("sounds/weapon/machinegun/fire1.wav", 4, px, py, pz)
	elseif dice < 2 then
		Spring.PlaySoundFile("sounds/weapon/machinegun/fire2.wav", 4, px, py, pz)
	elseif dice < 3 then
		Spring.PlaySoundFile("sounds/weapon/machinegun/fire3.wav", 4, px, py, pz)
	elseif dice < 4 then
		Spring.PlaySoundFile("sounds/weapon/machinegun/fire4.wav", 4, px, py, pz)
	elseif dice < 5 then
		Spring.PlaySoundFile("sounds/weapon/machinegun/fire5.wav", 4, px, py, pz)
	else
		Spring.PlaySoundFile("sounds/weapon/machinegun/fire1.wav", 4, px, py, pz)
	
	end		
	]]--
	
end

function script.Killed (recentDamage, maxHealth)
	local severity = recentDamage / maxHealth


	Show(turret1gutz1)
	Show(turret1gutz2)
	Show(turret1gutz3)
	Show(turret1gutz4)
	Show(turret1gutz5)
	Show(turret1gutz6)
	Show(turret1gutz7)
	Show(turret1gutz8)	
	
	
	if (severity <= .375) then
		for i = 1, #gutz do
			if (math.random() < severity) then
				Explode (gutz[i], sfxFall )			
			end
		end
		
		return 1
	elseif (severity <= 2.0) then
	
		for i = 1, #explodables do
			if (math.random() < severity) then
				Explode (explodables[i], sfxSmoke + sfxFire)			
			end
		end

		for i = 1, #gutz do
			if (math.random() < severity) then
				Explode (gutz[i], sfxFall )			
			end
		end	
		
		return 1
	
	else
	
		for i = 1, #explodables do
			if (math.random() < severity) then
				Explode (explodables[i], sfxSmoke + sfxFire)			
			end
		end

		for i = 1, #gutz do
			if (math.random() < severity) then
				Explode (gutz[i], sfxFall )			
			end
		end		
	
		Explode (base, sfxShatter)
		return 2
	end
end
