include "constants.lua"

--pieces
--local base, flare1, nozzle1, nozzle2, missile, gun, rwing, lwing, rjet, ljet, wingtipl, wingtipr, body

--this worked
--local base, body, flare1, missile, nozzle1, nozzle2, gun, wingr, wingl, jetl, jetr, wingtipl, wingtipr


local base = piece 'base'
local body = piece 'body' 
local gun = piece 'gun'
local flare1 = piece 'flare1'
local missile = piece 'missile'
local missile2 = piece 'missile2'
local missile3 = piece 'missile3'
local missile4 = piece 'missile4'
local missile5 = piece 'missile5'
local ljet = piece 'ljet'
local rjetr = piece 'rjet'
local nozzle1 = piece 'nozzle1'
local nozzle2 = piece 'nozzle2'
local lwing = piece 'lwing' 
local rwing = piece 'rwing' 
local wingtipl = piece 'wingtipl' 
local wingtipr = piece 'wingtipr' 



local smokePiece = {base, rwing, lwing}

local bombs = 2 --12
local rockets = 2 --8

--variables
--local shotCycle = 0
--local flare = {
--	[0] = flare1
--}

		
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




function script.QueryWeapon(num) 
	if num == 1 then
		return flare1
	elseif num == 2 then
		return missile2
	elseif num == 3 then
		return missile
	end
end

function script.AimFromWeapon(num) 
	return flare1
end

function script.AimWeapon(num, heading, pitch)
	return not (GetUnitValue(COB.CRASHING) == 1) 
end

function script.FireWeapon(num)
	if num == 1 then
		--shotCycle = 1 - shotCycle
		EmitSfx(flare1, UNIT_SFX1)
		EmitSfx(flare1, UNIT_SFX3)
		EmitSfx(gun, UNIT_SFX2)
		return true
	elseif num == 2 then
	--elseif num == 2 and rockets > 0  then
		EmitSfx(missile, UNIT_SFX3)
		--rockets = rockets - 1
		return true
	elseif num == 3 then
	--elseif num == 3 and bombs > 0 then
		--EmitSfx(missile, UNIT_SFX2)
		--bombs = bombs - 1
		return true
	end
	
	--if bombs <= 0 and rockets <= 0 then
	--	StartThread(RetreatThread)
	--end
	
	--return false
end


function script.BlockShot(num, targetID)
	if (GetUnitValue(COB.CRASHING) == 1) then
		return true
	end
	--[[
	if num == 2 then
		if GG.OverkillPrevention_CheckBlock(unitID, targetID, 500, 35) then
			return true
		end
	end
	]]--
	return false
end


--[[
function script.Create()
	while select(5, Spring.GetUnitHealth(unitID)) < 1 do
		Sleep(1000)
	end
	activate()
	
end
]]--



function script.Killed(recentDamage, maxHealth)	
	local px, py, pz = Spring.GetUnitPosition(unitID)

--[[
	local severity = recentDamage / maxHealth
	if severity <= 0.250 or ((Spring.GetUnitMoveTypeData(unitID).aircraftState or "") == "crashing") then
	
		if ( math.random() < 0.5 ) then
			Spring.PlaySoundFile("sounds/explosion/shotdown1.wav", 4, px, py, pz)
		else
			Spring.PlaySoundFile("sounds/explosion/shotdown2.wav", 4, px, py, pz)
		end		
	
		--Explode(body, sfxNone)
		return 1		
	
	else		
		Explode(gun, sfxSmoke + sfxFire + sfxFall )
		Explode(body, sfxSmoke + sfxFire + sfxFall + sfxExplodeOnHit)
		Explode(rwing, sfxSmoke + sfxFire + sfxFall )
		Explode(lwing, sfxSmoke + sfxFire + sfxFall )
		Explode(rjet, sfxSmoke + sfxFire + sfxExplode + sfxFall )
		Explode(ljet, sfxSmoke + sfxFire + sfxExplode + sfxFall )
		return 2
	end		
]]--


	return 2
	
end
