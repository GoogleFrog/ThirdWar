include 'constants.lua'
include "fixedwingTakeOff.lua"

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
local base, body, nozzle1, nozzle2, nozzle3, nozzle4, rwing, lwing, rjet1, rjet2, ljet1, ljet2, wingtipl, wingtipr, rear_fin, rear_rwing, rear_lwing, missile, dish

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
		return flare1
	elseif num == 2 then
		return flare1
	end
end

function script.AimFromWeapon(num) 
	return base
end

function script.AimWeapon(num, heading, pitch)
	return not (GetUnitValue(COB.CRASHING) == 1) 
end

function script.FireWeapon(num)
	if num == 1 then
		shotCycle = 1 - shotCycle
		EmitSfx(flare1, UNIT_SFX1)
	elseif num == 2 then
		EmitSfx(flare1, UNIT_SFX2)
	elseif num == 3 then
		EmitSfx(missile, UNIT_SFX3)
	end
end

function script.BlockShot(num, targetID)
	if (GetUnitValue(COB.CRASHING) == 1) then
		return true
	end
	--[[
	if num == 2 then
		return GG.OverkillPrevention_CheckBlock(unitID, targetID, 133, 35)
	end
	]]--
	return false
end

function script.Killed(recentDamage, maxHealth)

	
	--Explode(base, sfxExplode)
	--Explode(body, sfxShatter)
	--Explode(wingr, sfxShatter)
	--Explode(wingl, sfxShatter)
	--Explode(jetr, sfxSmoke + sfxFire + sfxExplode + sfxShatter + sfxExplodeOnHit)
	--Explode(jetl, sfxSmoke + sfxFire + sfxExplode + sfxShatter + sfxExplodeOnHit)
	return 2
	
end

