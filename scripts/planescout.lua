include 'constants.lua'
--include "fixedwingTakeOff.lua"

--------------------------------------------------------------------
-- constants/vars
--------------------------------------------------------------------
--local base, nozzle, thrust = piece("base", "nozzle", "thrust")
local base, body, nozzle1, nozzle2, nozzle3, nozzle4, rwing, lwing, rjet1, rjet2, ljet1, ljet2, wingtipl, wingtipr, rear_fin, rear_rwing, rear_lwing, missile, dish, thrust = piece("base", "nozzle1", "rjet1")
local smokePiece = {base}

--local SIG_TAKEOFF = 1
--local takeoffHeight = UnitDefNames["planescout"].wantedHeight
--------------------------------------------------------------------
-- functions
--------------------------------------------------------------------

function script.StopMoving()
	--StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
end


function script.Create()
	--StartThread(TakeOffThread, takeoffHeight, SIG_TAKEOFF)
	StartThread(SmokeUnit, smokePiece)
end

function script.Killed(recentDamage, maxHealth)

	return 2
--[[
	local severity = recentDamage/maxHealth
	if severity < 0.5 or (Spring.GetUnitMoveTypeData(unitID).aircraftState == "crashing") then
		--Explode(nozzle1, sfxFall)
		return 1
	else
		Explode(base, sfxShatter)
		--Explode(nozzle1, sfxFall + sfxSmoke)
		return 2
	end
	]]--
end
