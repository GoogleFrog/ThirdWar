include 'constants.lua'

local base, body, fanbase, blades, fan_rear, blades_rear, flare, gun, missileL1, missileL2, missileR1, missileR2, eye

local gun = 1
local missile = 1
local drawblades = true
local attacking = false
local current_track = 0
local spGetUnitVelocity = Spring.GetUnitVelocity

local emits = {	
	{mflare = missileL1, mbarrel = missileL1},
	{mflare = missileL2, mbarrel = missileL2},
	{mflare = missileR1, mbarrel = missileR1},
	{mflare = missileR2, mbarrel = missileR2},
}

local SIG_AIM = 1
local SIG_RESTORE = 2
local wheelTurnSpeed

local smokePiece = { base }

function script.Activate()
	--Spin( fanbase, y_axis, 90, 10)
	--Spin( blades, y_axis, 360, 30)
	--Spin( fan_rear, x_axis, 90, 10)
	
	--Spin( fan_rear, x_axis, rad(360), rad(100))
	--Spin(rffan, y_axis, rad(360), rad(100))
	--Spin(lffan, y_axis, rad(360), rad(100))
	--Spin(rrfan, y_axis, rad(360), rad(100))
	--Spin(lrfan, y_axis, rad(360), rad(100))
	
	--while true do
	--	local angle = math.random(0,360)
	--	Turn(fan, y_axis, math.rad(angle), 90)
	--	Sleep(4000)
	--end		
	
	
end


function script.StopMoving()
	--Spin(fanbase, y_axis, rad(0), rad(100))
	--Spin(fan_rear, x_axis, rad(0), rad(100))
	
	--Spin(rrfan, y_axis, rad(0), rad(100))
	--Spin(lrfan, y_axis, rad(0), rad(100))
end


local function Spinblades()
	while true do
	
		--wheelTurnSpeed = speed*WHEEL_TURN_MULT
		--Spin( fanbase, y_axis, 360, 30) --wheelTurnSpeed
		--Spin( fan_rear, x_axis, 90, 10)

		if (drawblades == 0) then
			Hide(blades)
			drawblades = true
			Spin( fanbase, y_axis, 360, 30)
			Sleep(10)
		else
			Show(blades)
			drawblades = false			
			Spin( fanbase, y_axis, 360, 20)
			Sleep(10)
		end
		
		

	end
end


local function TiltBody()



	while true do
	
		--wheelTurnSpeed = speed*WHEEL_TURN_MULT
		--Spin(fanbase, x_axis, wheelTurnSpeed)



	
		if attacking then
			Turn(body, x_axis, 0, math.rad(45))
			--Turn(rthruster, x_axis, 0, math.rad(45))
			--Turn(lthruster, x_axis, 0, math.rad(45))
			Sleep(250)
		else
			local vx,_,vz = spGetUnitVelocity(unitID)
			local speed = vx*vx + vz*vz
			if speed > 0.5 then
				Turn(body, x_axis, math.rad(22.5), math.rad(45))
				--Turn(rthruster, x_axis, math.rad(22.5), math.rad(45))
				--Turn(lthruster, x_axis, math.rad(22.5), math.rad(45))
				Sleep(250)
			else
				Turn(body, x_axis, 0, math.rad(45))
				--Turn(rthruster, x_axis, 0, math.rad(45))
				--Turn(lthruster, x_axis, 0, math.rad(45))
				Sleep(250)
			end
		end
	end
end



function script.Create()

	--Spin( fanbase, y_axis, 90, 10)
	--Spin( blades, y_axis, 360, 30)
	--Spin( fan_rear, x_axis, 90, 10)
	
	--Turn(rfjet, x_axis, math.rad(-90))
	--Turn(lfjet, x_axis, math.rad(-90))
	--Turn(rrjet, x_axis, math.rad(-90))
	--Turn(lrjet, x_axis, math.rad(-90))

	--Turn(rrfanbase, z_axis, math.rad(22.5))
	--Turn(lrfanbase, z_axis, math.rad(-22.5))

	StartThread(SmokeUnit, smokePiece)
	StartThread(TiltBody)
	StartThread(Spinblades)
	--StartThread(AnimationControl)
end

local function RestoreAfterDelay()
	
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)

	Sleep(1000)
	Turn(gun, y_axis, 0, math.rad(600))	
	attacking = false
end

function script.AimWeapon(num, heading, pitch)

	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(gun, y_axis, heading, math.rad(600))	

	attacking = true
	
	StartThread(RestoreAfterDelay)
	return true
end

function script.QueryWeapon(num)
	--if num == 1 then
	--	return flare
	--elseif num == 2 then
	--	return emits[missile].mflare
	--end
	return emits[missile].flare
	
end

function script.AimFromWeapon(num)
	return eye
end

function script.FireWeapon(num)
	if num == 1 then
		EmitSfx( flare, 1024)
		EmitSfx( barrel, 1025)
	elseif num == 2 then
		EmitSfx(emits[missile].mflare, 1026)
		EmitSfx(emits[missile].mbarrel, 1027)
		missile = (missile)%4 + 1
	elseif num == 3 then
		EmitSfx(emits[missile].mflare, 1026)
		EmitSfx(emits[missile].mbarrel, 1027)
		missile = (missile)%4 + 1		
	end

end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	
	return 2
	
	--[[
	if severity <= 0.25 then
		Explode(base, sfxNone)
		Explode(body, sfxNone)
		Explode(fanbase, sfxExplode)
		Explode(blades, sfxExplode)
		return 1
	elseif severity <= 0.50 or ((Spring.GetUnitMoveTypeData(unitID).aircraftState or "") == "crashing") then
		Explode(base, sfxFall)
		Explode(body, sfxShatter)
		Explode(fanbase, sfxShatter)
		Explode(blades, sfxShatter)
		Explode(fan_rear, sfxShatter)
		return 1
	else
		Explode(body, sfxShatter)
		Explode(fanbase, sfxFall + sfxFire)
		Explode(blades, sfxFall + sfxFire)
		Explode(fan_rear, sfxFall + sfxFire)
		Explode(blades_rear, sfxFall + sfxFire)
		Explode(barrel, sfxExplode)
		Explode(flare, sfxExplode)
		Explode(gun, sfxExplode)
		Explode(eye, sfxExplode)
		return 2
	end
	]]--
	
end
