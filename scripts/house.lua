include "constants.lua"

local base = piece "base"
local house01 = piece "house01"
local house02 = piece "house02"

--[[
if ( math.random(0,100) < 50 ) then
	local house = piece "house01"
else
	local house = piece "house02"
end
]]--

function script.Activate ()
		--Spin(house, y_axis, 3, 0.1)
		if ( math.random(0,100) < 50 ) then
			Show(house01)
			Hide(house02)
			--local house = piece "house01"
		else
			Hide(house01)
			Show(house02)
			--local house = piece "house02"
		end	
		
end



function script.Deactivate ()
	--StopSpin(house, y_axis, 0.1)
end

local smokePiece = {base} --was house

function script.Create()
	StartThread(SmokeUnit, smokePiece)
	
	--hide house01;
	--show house02;	
	
	
		if ( math.random(0,100) < 50 ) then
			Show(house01)
			Hide(house02)
			--local house = piece "house01"
		else
			Hide(house01)
			Show(house02)
			--local house = piece "house02"
		end	

	
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if (severity <= .25) then
		Explode(base, SFX.NONE)
		return 1 -- corpsetype
	elseif (severity <= .5) then
		Explode(base, SFX.SHATTER)
		return 1 -- corpsetype
	else
		Explode(base, SFX.SHATTER)
		return 2 -- corpsetype
	end
end