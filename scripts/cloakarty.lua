include "constants.lua"

local base, waist, dish, torso, center, sidecenter, barrel, flare = piece ('base', 'waist', 'dish', 'torso', 'center', 'sidecenter', 'barrel', 'flare')

local thigh = {piece 'lthigh', piece 'rthigh'}
local knee  = {piece 'lknee' , piece 'rknee' }
local shin  = {piece 'lshin' , piece 'rshin' }
local ankle = {piece 'lankle', piece 'rankle'}
local heel  = {piece 'lheel' , piece 'rheel' }
local toe   = {piece 'ltoe'  , piece 'rtoe'  }

local SIG_Aim = 1
local SIG_Walk = 2

local isAiming = false

local function Walk()
	for i = 1, 2 do
		Turn (thigh[i], y_axis, 0, math.rad(135))
		Turn (thigh[i], z_axis, 0, math.rad(135))
		Turn (ankle[i], z_axis, 0, math.rad(135))
	end

	Signal(SIG_Walk)
	SetSignalMask(SIG_Walk)

	local side = 1
	while true do
		Turn (shin[side], x_axis, math.rad(85), math.rad(210))
		Turn (thigh[side], x_axis, math.rad(-100), math.rad(135))
		Turn (thigh[3-side], x_axis, math.rad(30), math.rad(135))
		if not isAiming then
			Turn (torso, y_axis, math.rad(30 - 20*side), math.rad(45))
		end
		WaitForMove (waist, y_axis)
		Move (waist, y_axis, 3, 12)
		WaitForMove (waist, y_axis)
		Turn (shin[side], x_axis, math.rad(10), math.rad(315))
		Move (waist, y_axis, 0, 12)
		side = 3 - side
	end
end

local function StopWalk()
	Signal(SIG_Walk)

	for i = 1, 2 do
		Turn (ankle[i], x_axis, 0, math.rad(400))
		Turn (thigh[i], x_axis, 0, math.rad(230))
		Turn (shin[i], x_axis, 0, math.rad(230))
		Turn (thigh[i], y_axis, 0, math.rad(135))
		Turn (thigh[i], z_axis, 0, math.rad(135))
		Turn (ankle[i], z_axis, 0, math.rad(135))
	end

	if not isAiming then
		Turn (torso, y_axis, 0, math.rad(45))
	end
end

function script.StartMoving()
	StartThread (Walk)
	GG.SetWantedCloaked(unitID, 0)
	Spring.SetUnitArmored(unitID,false)
	--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1.0)	
	GG.UpdateUnitAttributes(unitID)	
end

function script.StopMoving()
	StartThread (StopWalk)
	GG.SetWantedCloaked(unitID, 1)
	Spring.SetUnitArmored(unitID,true)
	--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 0.1)
	GG.UpdateUnitAttributes(unitID)		
end

function script.Create()
	StartThread (SmokeUnit, {torso, flare})
end

function script.AimFromWeapon(num)
	return center
end

function script.QueryWeapon(num)
	return flare
end

local function RestoreAfterDelay()
	SetSignalMask (SIG_Aim)
	Sleep (5000)
	isAiming = false
	Turn (dish,  y_axis, 0, math.rad(20))
	Turn (torso, x_axis, 0, math.rad(20))
end

function script.AimWeapon(num, heading, pitch)
	Signal(SIG_Aim)
	SetSignalMask(SIG_Aim)

	isAiming = true

	Turn (dish,  y_axis, heading, math.rad(250))
	Turn (torso, x_axis, -pitch,  math.rad(200))

	WaitForTurn (dish,  y_axis)
	WaitForTurn (torso, x_axis)

	StartThread(RestoreAfterDelay)
	return true
end

function script.FireWeapon(num)
	Turn (torso, y_axis, math.rad(20))
	Move (barrel, z_axis, -6.25)
	WaitForTurn (torso, y_axis)
	WaitForMove (barrel, z_axis)
	Sleep (500)
	Turn (torso, y_axis, 0, math.rad(60))
	Move (barrel, z_axis, 0, 2)
	
	GG.SetWantedCloaked(unitID, 1)
end

--[[
function script.BlockShot(num, targetID)
	if Spring.ValidUnitID(targetID) then
		local distMult = (Spring.GetUnitSeparation(unitID, targetID) or 0)/840
		return GG.OverkillPrevention_CheckBlock(unitID, targetID, 150.1, 120 * distMult, false, false, true)
	end
	return false
end
]]--

local explodables = {dish, barrel, thigh[2], waist, shin[2]}
function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	local brutal = (severity > 0.5)
	
	GG.SetWantedCloaked(unitID, 1)

	for i = 1, #explodables do
		if math.random() < severity then
			Explode (explodables[i], sfxFall + (brutal and (sfxSmoke + sfxFire) or 0))
		end
	end

	if not brutal then
		return 1
	else
		Explode (torso, sfxShatter)
		return 2
	end
end
