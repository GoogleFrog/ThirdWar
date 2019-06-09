include 'constants.lua'

--local base, body, fanbase, blades, fan_rear, blades_rear, flare, gun, barrel, missileL1, missileL2, missileR1, missileR2, eye --missing barrel, 
local base = piece 'base'
local body = piece 'body'

local pilot = piece 'pilot'
local gunner = piece 'gunner'
local wheel_left = piece 'wheel_left'
local wheel_right = piece 'wheel_right'


local pod_right1 = piece 'pod_right1'
local pod_right2 = piece 'pod_right2'
local pod_left1 = piece 'pod_left1'
local pod_left2 = piece 'pod_left2'
local mountr2 = piece 'mountr2'
local mountr1 = piece 'mountr1'
local mountl1 = piece 'mountl1'
local mountl2 = piece 'mountl2'
local wingl = piece 'wingl'
local wingr = piece 'wingr'


local rearwingl = piece 'rearwingl'
local rearwingr = piece 'rearwingr'
local tail = piece 'tail'
local backwheel = piece 'backwheel'
local radar = piece 'radar'


local fanbase = piece 'fanbase'
local blades = piece 'blades'
local fan_rear = piece 'fan_rear'
local blades_rear = piece 'blades_rear'
local flare = piece 'flare'
local gun = piece 'gun'
local barrel = piece 'barrel'
local missileL1 = piece 'missileL1'
local missileL2 = piece 'missileL2'
local missileR1 = piece 'missileR1'
local missileR2 = piece 'missileR2'
local eye = piece 'eye'

--local gun = 1
local missile = 1
local drawblades = true
local isMoving = false
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

local function Spinblades()
	Signal (SIG_Move)
	SetSignalMask (SIG_Move)


	while isMoving do
	--while true do
	
		--wheelTurnSpeed = speed*WHEEL_TURN_MULT
		--Spin( fanbase, y_axis, 360, 30) --wheelTurnSpeed
		--Spin( fan_rear, x_axis, 90, 10)

		if (drawblades) then
			Show(blades)
			Show(blades_rear)
			drawblades = false			
			--Spin( fanbase, y_axis, 360, 20)
			Sleep(10)		

		elseif (not drawblades) then
			Hide(blades)
			Hide(blades_rear)
			drawblades = true
			--Spin( fanbase, y_axis, 360, 30)
			Sleep(10)
		end
		
		--Sleep (66)

	end
end

function script.Activate()
	--Spin( fanbase, y_axis, 90, 10)
	--Spin( blades, y_axis, 360, 30)
	--Spin( fan_rear, x_axis, 90, 10)
	--Spin(fanbase, y_axis, rad(60))
	Spin( fanbase, y_axis, 60)
	--Spin( fan_rear, x_axis, rad(60))
	Spin( fan_rear, x_axis, 60)
	
	--Spin( fan_rear, x_axis, rad(360), rad(100))
	--Spin(rffan, y_axis, rad(360), rad(100))
	--Spin(lffan, y_axis, rad(360), rad(100))
	--Spin(rrfan, y_axis, rad(360), rad(100))
	--Spin(lrfan, y_axis, rad(360), rad(100))
	
	--while true do
	--	local angle = math.random(0,360)
	--	Turn(fan, y_axis, math.rad(angle), 90)
		--Sleep(3000)
	--end		
	
	
end

function script.Deactivate()
	--StopSpin(fanbase, y_axis)
	--StopSpin(fan_rear, x_axis)
	StopSpin( fanbase, y_axis, 60)
	StopSpin( fan_rear, x_axis, 60)		
end

function script.StopMoving()
	isMoving = false
	--StopSpin( fanbase, y_axis, math.rad(5))
	--StopSpin( fan_rear, x_axis, math.rad(5))	
	
	--StopSpin(rrfan, y_axis)
	--StopSpin(lrfan, y_axis)	
	--deactivate()
	--Sleep(3000)	
	--StartThread(Spinblades)
	
end

function script.StartMoving()
	isMoving = true
	--activate()
	--Spin(fanbase, y_axis, rad(0), rad(100))
	--Spin(fan_rear, x_axis, rad(0), rad(100))	
	--Spin(rrfan, y_axis, rad(0), rad(100))
	--Spin(lrfan, y_axis, rad(0), rad(100))	
	--Sleep(3000)
	--StartThread(Spinblades)
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



	while select(5, Spring.GetUnitHealth(unitID)) < 1 do
		Sleep(1000)
	end
	activate()
	
	--Spin( fanbase, y_axis, 90, 360)	
	--Spin( fan_rear, x_axis, 90, 360)
	
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
		EmitSfx( flare, 1025)
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
	
	--return 2
	
	
	if severity <= 0.25 then
		Explode(base, sfxNone)
		Explode(body, sfxNone)
		--Explode(fanbase, sfxNone)
		--Explode(blades, sfxNone)
		return 1
	elseif severity <= 0.50 or ((Spring.GetUnitMoveTypeData(unitID).aircraftState or "") == "crashing") then
		Explode(base, sfxFall)
		Explode(body, sfxShatter)
		--Explode(fanbase, sfxShatter)
		--Explode(blades, sfxShatter)
		Explode(fan_rear, sfxShatter)
		return 1
	else
	
	
	
		Explode( body, sfxShatter )
		Explode( pilot, sfxSmoke + sfxFire + sfxFall )
		Explode( gunner, sfxSmoke + sfxFire + sfxFall )
		Explode( wheel_left, sfxSmoke + sfxFire + sfxFall )
		Explode( wheel_right, sfxSmoke + sfxFire + sfxFall )		
		Explode( pod_right1, sfxSmoke + sfxFire + sfxFall )
		Explode( pod_right2, sfxSmoke + sfxFire + sfxFall )
		Explode( pod_left1, sfxSmoke + sfxFire + sfxFall )
		Explode( pod_left2, sfxSmoke + sfxFire + sfxFall )
		Explode( mountr2, sfxSmoke + sfxFire + sfxFall )
		Explode( mountr1, sfxSmoke + sfxFire + sfxFall )
		Explode( mountl1, sfxSmoke + sfxFire + sfxFall )
		Explode( mountl2, sfxSmoke + sfxFire + sfxFall )
		Explode( wingl, sfxSmoke + sfxFire + sfxFall )
		Explode( wingr, sfxSmoke + sfxFire + sfxFall )		
		Explode( rearwingl, sfxSmoke + sfxFire + sfxFall )
		Explode( rearwingr, sfxSmoke + sfxFire + sfxFall )		
		Explode( tail, sfxSmoke + sfxFire + sfxFall )
		Explode( backwheel, sfxSmoke + sfxFire + sfxFall )
		Explode( radar, sfxSmoke + sfxFire + sfxFall )
		
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
	
	
end
