--[[
example buildTasksMods
		buildTasksMods = function(buildConfig)
			buildConfig.robots.factoryByDefId[UnitDefNames['factorycloak'].id].importance = 0
			buildConfig.robots.factoryByDefId[UnitDefNames['factoryshield'].id].importance = 1
			buildConfig.robots.factoryByDefId[UnitDefNames['factoryveh'].id].importance = 0
			buildConfig.robots.factoryByDefId[UnitDefNames['factoryspider'].id].importance = 0
		end,
--]]
local function noFunc()
end

-- these buildTaskMods function by editing the config supplied as the arg

local function BuildTasksMod_Blitz(buildConfig)  --NORMAL
	local factory = buildConfig.robots.factoryByDefId	
	factory[UnitDefNames['factorytank'].id].importance = 1.0
	factory[UnitDefNames['factoryveh'].id].importance = 0.75
	factory[UnitDefNames['factoryplane'].id].importance = 1.0
	
	for fac, data in pairs(factory) do
		if not data.airFactory then
			data[1].importanceMult = data[1].importanceMult*0.1 -- con
			data[2].importanceMult = data[2].importanceMult*1.0 -- scout
			data[3].importanceMult = data[3].importanceMult*1.0 -- raiders
			data[4].importanceMult = data[4].importanceMult*1.0 -- arty
			data[5].importanceMult = data[5].importanceMult*1.0 -- assault
			data[6].importanceMult = data[6].importanceMult*1.0 -- skirms
			data[7].importanceMult = data[7].importanceMult*1.0 -- riots
			data[8].importanceMult = data[8].importanceMult*1.0 -- aa
			
		else
			data[1].importanceMult = data[1].importanceMult*0.1 -- con
			data[2].importanceMult = data[2].importanceMult*1.0 -- scout
			data[3].importanceMult = data[3].importanceMult*1.0 -- aa
			data[4].importanceMult = data[4].importanceMult*1.0 -- bomber
			data[5].importanceMult = data[5].importanceMult*1.0 -- gunship		
		end
	end
		
	local econ = buildConfig.robots.econByDefId
	for econBldg, data in pairs(econ) do
		for i=1,3 do
			data.defenceQuota[i] = data.defenceQuota[i] * 1.0
			data.airDefenceQuota[i] = data.airDefenceQuota[i] * 1.0
		end
	end
end

local function BuildTasksMod_Pusher(buildConfig)
	local factory = buildConfig.robots.factoryByDefId

	factory[UnitDefNames['factorytank'].id].importance = 1.25
	factory[UnitDefNames['factoryveh'].id].importance = 0.75
	factory[UnitDefNames['factoryplane'].id].importance = .5	
	
	for fac, data in pairs(factory) do
		if not data.airFactory then
			data[1].importanceMult = data[1].importanceMult*0.1 -- con
			data[2].importanceMult = data[2].importanceMult*1.0 -- scout
			data[3].importanceMult = data[3].importanceMult*0.5 -- raiders
			data[4].importanceMult = data[4].importanceMult*1.2 -- arty
			data[5].importanceMult = data[5].importanceMult*1.0 -- assault
			data[6].importanceMult = data[6].importanceMult*1.0 -- skirms
			data[7].importanceMult = data[7].importanceMult*1.0 -- riots
			data[8].importanceMult = data[8].importanceMult*1.0 -- aa
			
		else
			data[1].importanceMult = data[1].importanceMult*0.1 -- con
			data[2].importanceMult = data[2].importanceMult*1.0 -- scout
			data[3].importanceMult = data[3].importanceMult*1.0 -- aa
			data[4].importanceMult = data[4].importanceMult*1.0 -- bomber
			data[5].importanceMult = data[5].importanceMult*1.0 -- gunship		
		end
		for i=1,3 do
			data.defenceQuota[i] = data.defenceQuota[i] * 0.5
		end
	end
	local econ = buildConfig.robots.econByDefId
	for econBldg, data in pairs(econ) do
		for i=1,3 do
			data.defenceQuota[i] = data.defenceQuota[i] * 0.5
		end
	end
end

local function BuildTasksMod_Defensive(buildConfig)
	local factory = buildConfig.robots.factoryByDefId	
	factory[UnitDefNames['factorytank'].id].importance = 1.0
	factory[UnitDefNames['factoryveh'].id].importance = 0.75	
	factory[UnitDefNames['factoryplane'].id].importance = 0.5
	factory[UnitDefNames['factorycloak'].id].importance = 0.01	
	
	for fac, data in pairs(factory) do
		if not data.airFactory then
			data[1].importanceMult = data[1].importanceMult*0.1 -- con
			data[2].importanceMult = data[2].importanceMult*1.0 -- scout
			data[3].importanceMult = data[3].importanceMult*1.0 -- raiders
			data[4].importanceMult = data[4].importanceMult*1.0 -- arty
			data[5].importanceMult = data[5].importanceMult*1.0 -- assault
			data[6].importanceMult = data[6].importanceMult*1.0 -- skirms
			data[7].importanceMult = data[7].importanceMult*1.0 -- riots
			data[8].importanceMult = data[8].importanceMult*1.0 -- aa
			
		else
			data[1].importanceMult = data[1].importanceMult*0.1 -- con
			data[2].importanceMult = data[2].importanceMult*1.0 -- scout
			data[3].importanceMult = data[3].importanceMult*1.0 -- aa
			data[4].importanceMult = data[4].importanceMult*1.0 -- bomber
			data[5].importanceMult = data[5].importanceMult*1.0 -- gunship		
		end
	end
		
	local econ = buildConfig.robots.econByDefId
	for econBldg, data in pairs(econ) do
		for i=1,3 do
			data.defenceQuota[i] = data.defenceQuota[i] * 2.5
			data.airDefenceQuota[i] = data.airDefenceQuota[i] * 2.5
		end
	end
end



local function BuildTasksMod_Lolz(buildConfig)
	local factory = buildConfig.robots.factoryByDefId	
	factory[UnitDefNames['factoryplane'].id].importance = 1	
	factory[UnitDefNames['factoryveh'].id].importance = 1
	factory[UnitDefNames['factorytank'].id].importance = 1		
	
	
	for fac, data in pairs(factory) do
		if not data.airFactory then
			data[3].importanceMult = data[3].importanceMult*0.8 -- fewer raiders
			data[4].importanceMult = data[4].importanceMult*0.9 -- less arty
			data[5].importanceMult = data[5].importanceMult*0.9 -- fewer assaults
			data[6].importanceMult = data[6].importanceMult*1 -- more moderators!!!
			data[7].importanceMult = data[7].importanceMult*1.2 -- more riots
		end
		for i=1,3 do
			data.defenceQuota[i] = data.defenceQuota[i]
			data.airDefenceQuota[i] = data.airDefenceQuota[i]
		end
	end
	local econ = buildConfig.robots.econByDefId
	for econBldg, data in pairs(econ) do
		for i=1,3 do
			data.defenceQuota[i] = data.defenceQuota[i] * 1.2
			data.airDefenceQuota[i] = data.airDefenceQuota[i] * 1.2
		end
	end
end

strategies = {

	[1] = {	-- blitz
		name = "Blitz",
		chance	= 0.334,
		commanders = {
			{ID = "dyntrainer_strike_base", chance = 0.5},
			{ID = "dyntrainer_recon_base", chance = 0.5},
		},
		buildTasksMods = BuildTasksMod_Blitz,
		conAndEconHandlerMods = {},
	},
	[2] = {	-- pusher
		name = "Push",
		chance	= 0.334,
		commanders = {
			{ID = "dyntrainer_strike_base", chance = 0.5},
			{ID = "dyntrainer_assault_base", chance = 0.5},
		},
		buildTasksMods = BuildTasksMod_Pusher,
		conAndEconHandlerMods = {},
	},
	[3] = {	-- defensive
		name = "Defensive",
		chance	= 0.334,
		commanders = {
			{ID = "dyntrainer_strike_base", chance = 0.5},
			{ID = "dyntrainer_assault_base", chance = 0.5},
		},
		buildTasksMods =  BuildTasksMod_Defensive,
		conAndEconHandlerMods = {},
	},
	--[[
	[4] = {	-- lolz
		name = "lolz",
		chance = 0,
		commanders = {
			{ID = "dyntrainer_strike_base", chance = 1},
		},
		buildTasksMods = BuildTasksMod_Lolz,
		conAndEconHandlerMods = {},
	},
	
	[4] = {	-- econ	-- FIXME: doesn't do anything right now
		name = "Econ",
		chance	= 0.0,
		commanders = {
			{ID = "dyntrainer_strike_base", chance = 0.5},
			{ID = "dyntrainer_support_base", chance = 0.5},
		},
		buildTasksMods = noFunc,
		conAndEconHandlerMods = {},
	},

	]]--
}

local function SelectComm(player, team, strat)
	local rand = math.random()

	local commName
	local total = 0
	for i = 1, #strategies[strat].commanders do
		total = total + strategies[strat].commanders[i].chance
		if rand < total then
			commName = strategies[strat].commanders[i].ID
			Spring.SetTeamRulesParam(team, "start_unit", commName)
			Spring.Echo("CAI: team "..team.." has selected strategy: "..strategies[strat].name..", using commander "..commName)
			break
		end
	end
end

function SelectRandomStrat(player, team)
	local count = #strategies
	local rand = math.random()
	
	local stratIndex = 1
	local total = 0
	for i = 1, count do
		total = total + strategies[i].chance
		if rand <= total then
			SelectComm(player, team, i)
			stratIndex = i
			break
		end
	end
	
	return stratIndex
end
