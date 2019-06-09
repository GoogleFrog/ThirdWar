include "constants.lua"

--pieces
--local base, flare1, nozzle1, nozzle2, missile, gun, rwing, lwing, rjet, ljet, wingtipl, wingtipr, body

--local base = piece 'base'
--local body = piece 'body' 
--local gun = piece 'gun'
--local flare1 = piece 'flare1'
--local missile = piece 'missile'
--local jetl = piece 'jetl'
--local jetr = piece 'jetr'
--local nozzle1 = piece 'nozzle1'
--local nozzle2 = piece 'nozzle2'
--local wingl = piece 'wingl' 
--local wingr = piece 'wingr' 
--local wingtipl = piece 'wingtipl' 
--local wingtipr = piece 'wingtipr' 
local base, body, flare1, missile, nozzle1, nozzle2, gun, wingr, wingl, jetl, jetr, wingtipl, wingtipr

--local smokePiece = {base, wingr, wingl}

--variables
local shotCycle = 0
local flare = {
	[0] = flare1
}

		
----------------------------------------------------------

VFS.Include("LuaRules/Configs/customcmds.h.lua")

local function RetreatThread()
	Sleep(800)
	local specialReloadState = Spring.GetUnitRulesParam(unitID,"specialReloadFrame")
	if (not specialReloadState or (specialReloadState <= Spring.GetGameFrame())) then
		Spring.GiveOrderToUnit(unitID, CMD.INSERT, {0, CMD_ONECLICK_WEAPON, CMD.OPT_INTERNAL,}, CMD.OPT_ALT)
	end
end

function RetreatFunction()
	StartThread(RetreatThread)
end

----------------------------------------------------------



function OnLoadGame()
	Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1)
	GG.UpdateUnitAttributes(unitID)
end

----------------------------------------------------------


function script.StartMoving()
	activate()
	Sleep(50)
end

function script.StopMoving()
	deactivate()
	Sleep(50)
end

function script.QueryWeapon(num) 
	if num == 1 then
		return missile
	elseif num == 2 then
		return missile
	end
end

function script.AimFromWeapon(num) 	
	return base
end

function script.AimWeapon(num, heading, pitch)
	return (Spring.GetUnitRulesParam(unitID, "noammo") ~= 1)
	--return not (GetUnitValue(COB.CRASHING) == 1) 
end

function script.FireWeapon(num)
	
		SetUnarmedAI()
		--GG.Bomber_Dive_fired(unitID)
		Sleep(33)	-- delay before clearing attack order; else bomb loses target and fails to home
		--Move(drop, x_axis, 0)
		--Move(drop, z_axis, 0)
		--Move(drop, y_axis, 0)
		Reload()

end

--[[
function script.BlockShot(num, targetID)
	if (GetUnitValue(COB.CRASHING) == 1) then
		return true
	end
	if num == 2 then
		return GG.OverkillPrevention_CheckBlock(unitID, targetID, 133, 35)
	end
	return false
end
]]--

function script.Killed(recentDamage, maxHealth)

	
	--Explode(base, sfxExplode)
	--Explode(body, sfxShatter)
	--Explode(wingr, sfxShatter)
	--Explode(wingl, sfxShatter)
	--Explode(jetr, sfxSmoke + sfxFire + sfxExplode + sfxShatter + sfxExplodeOnHit)
	--Explode(jetl, sfxSmoke + sfxFire + sfxExplode + sfxShatter + sfxExplodeOnHit)
	return 2
	
end
