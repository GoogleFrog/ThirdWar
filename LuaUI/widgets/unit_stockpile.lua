--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    unit_stockpile.lua
--  brief:   adds 100 builds to all new units that can stockpile
--  author:  Dave Rodgers
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
	return {
		name      = "Stockpiler",
		desc      = "Automatically adds 100 stockpile builds to new units",
		author    = "trepan",
		date      = "Jan 8, 2007",
		license   = "GNU GPL, v2 or later",
		layer     = 0,
		enabled   = true  --  loaded by default?
	}
end

local constantStockpile = {
	[UnitDefNames["turretaaheavy"].id] = true,
}

local CMD_STOCKPILE = CMD.STOCKPILE
local EMPTY_TABLE = {}



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function widget:Initialize()
	 if (Spring.GetSpectatingState() or Spring.IsReplay()) and (not Spring.IsCheatingEnabled()) then
		Spring.Echo("<Stockpiler>: disabled for spectators")
		widgetHandler:RemoveWidget()
		return
	end
end

function widget:UnitCreated(unitID, unitDefID, unitTeam)
	local ud = UnitDefs[unitDefID]
	
	
	
	if ((ud ~= nil) and (unitTeam == Spring.GetMyTeamID())) then
		if (ud.canStockpile) then
			
			 
			local stocked, queued = Spring.GetUnitStockpile(unitID)
			local count = 0

			if (not queued) or queued < 5 then
				
				
				--count = ud.customParams.stockpiletime --math.floor( ud.customParams.stockpiletime / 1 )
				--unt = ud.stockpileTime
				--unt = ud.customParams.stockpiletime
				-- give stockpilers 5 units to build
				--Spring.GiveOrderToUnit(unitID, CMD.STOCKPILE, EMPTY_TABLE, CMD.OPT_SHIFT)
				--Spring.GiveOrderToUnit(unitID, CMD.STOCKPILE, EMPTY_TABLE, CMD.OPT_CTRL + CMD.OPT_SHIFT)				
	
				--count = ud.stockpilecount
				-- = math.floor( ud.stockpiletime / 15 ) --stockpiletime / reload time?
				
				
				if count <= 0 then
					count = 1
				end
				
				while count > 0 do
					--Spring.GiveOrderToUnit(unitID, CMD.STOCKPILE, EMPTY_TABLE, CMD.OPT_SHIFT)
					Spring.GiveOrderToUnit(unitID, CMD.STOCKPILE, EMPTY_TABLE, 0)
					count = count - 1
				end
				
				
					
			end
			--if (udef.customParams.stockpiletime) then
			
			--why not do a while loop adding 1 each, for the unit's stockpile size?  then later diable the ability to change the stockpile amount?

		end
	end
end
--[[
local function AddStockpile(unitID, state)
	Spring.GiveOrderToUnit(unitID, CMD.STOCKPILE, EMPTY_TABLE, 0)
end

GG.AddStockpile = AddStockpile
]]--

function widget:GameFrame(n)
	if n > 1 then
		for _, unitID in ipairs(Spring.GetAllUnits()) do
			widget:UnitCreated(unitID, Spring.GetUnitDefID(unitID), Spring.GetUnitTeam(unitID))
		end
		widgetHandler:RemoveCallIn("GameFrame")
	end
end

function widget:StockpileChanged(unitID, unitDefID, unitTeam, weaponNum, oldCount, newCount)
	if constantStockpile[unitDefID] then
		Spring.GiveOrderToUnit(unitID, CMD_STOCKPILE, EMPTY_TABLE, 0)
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
