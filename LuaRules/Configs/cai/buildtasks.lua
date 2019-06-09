--[[
defenceQuota = how much of each level of defence the unit wants
	defence demand in an area is additive

minFacCount = min other facs that must exist for factory to be built
minTime = not used yet
	
factory job indexes:
	1 = con
	2 = scout
	3 = raider
	4 = arty
	5 = assault
	6 = skirm
	7 = riot
	8 = AA
	
	1 = con
	2 = scout
	3 = fighterheavy
	4 = bomber
	5 = gunship
--]]

factionBuildConfig = {
	robots = {
		airDefenceRange = {
			[1] = 600,
			[2] = 800,
			[3] = 700,
			[4] = 700,
		},

		factoryIds = {
			count = 4,
			[1] = {ID = UnitDefNames['factorytank'].id},
			[2] = {ID = UnitDefNames['factoryveh'].id},
			[3] = {ID = UnitDefNames['factorycloak'].id},			
			[4] = {ID = UnitDefNames['factoryplane'].id},
			
			

		},
		
		factoryByDefId = {	
			[UnitDefNames['factorytank'].id] = {
				defenceQuota = {2,0.6,0.3},
				defenceRange = 400,
				airDefenceQuota = {2,1,0.1},
				importance = 1,
				BPQuota = 50,
				minFacCount = 0,
				
				[1] = { -- con
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['tankcon'].id, chance = 1},
				},
				
				[2] = { -- scout
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['tankraid'].id, chance = 1},
				},
				
				[3] = { -- raider
					importanceMult = 1,
					count = 2,
					[1] = {ID = UnitDefNames['tankraid'].id, chance = 0.3},					
					[2] = {ID = UnitDefNames['tankaa'].id, chance = 0.3},
				},
				
				[4] = { -- arty
					importanceMult = 1,
					count = 2,
					[1] = {ID = UnitDefNames['tankarty'].id, chance = 0.05},
					[2] = {ID = UnitDefNames['tankheavyarty'].id, chance = 0.95},
				},
				
				[5] = { --assault
					importanceMult = 1,
					count = 3,
					[1] = {ID = UnitDefNames['tankassault'].id, chance = 0.6},
					[2] = {ID = UnitDefNames['tankaa'].id, chance = 0.15},
					[3] = {ID = UnitDefNames['tankheavyassault'].id, chance = 0.25},
				},
				
				[6] = { -- skirm
					importanceMult = 0.4,
					count = 1,
					[1] = {ID = UnitDefNames['tankheavyarty'].id, chance = 0.85},
					[1] = {ID = UnitDefNames['tankassault'].id, chance = 0.15},
				},
				
				[7] = { -- riot
					importanceMult = 0.8,
					count = 2,
					[1] = {ID = UnitDefNames['tankaa'].id, chance = 0.7},
					[2] = {ID = UnitDefNames['tankraid'].id, chance = 0.3},	
				},
				
				[8] = { -- aa
					importanceMult = 0.8,
					count = 2,
					[1] = {ID = UnitDefNames['tankaa'].id, chance = 0.3},
					[2] = {ID = UnitDefNames['tankriot'].id, chance = 0.7},
				},	
			},		
		
		
			[UnitDefNames['factoryveh'].id] = {
				defenceQuota = {2,0.6,0.3},
				defenceRange = 400,
				airDefenceQuota = {2,1,0.1},
				importance = 1,
				BPQuota = 50,
				minFacCount = 0,
				
				[1] = { -- con
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['vehcon'].id, chance = 1},
				},
				
				[2] = {-- scout
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['vehraid'].id, chance = 1},
				},
				
				[3] = { -- raider
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['vehraid'].id, chance = 1},
				},
				
				[4] = { -- arty
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['veharty'].id, chance = 0.9},					
				},
				
				[5] = { --assault
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['vehassault'].id, chance = 1},
				},
				
				[6] = { -- skirm
					importanceMult = 0.3,
					count = 1,
					[1] = {ID = UnitDefNames['vehsupport'].id, chance = 1},
				},	
				
				[7] = { -- riot
					importanceMult = 1.2,
					count = 2,
					[1] = {ID = UnitDefNames['vehsupport'].id, chance = 0.25},
					[2] = {ID = UnitDefNames['vehassault'].id, chance = 0.75},
				},
				
				[8] = { -- aa
					importanceMult = 0.4,
					count = 2,					
					[1] = {ID = UnitDefNames['vehaa'].id, chance = 0.1},					
					[2] = {ID = UnitDefNames['vehheavyarty'].id, chance = 0.1},					
				},
			},
			

			[UnitDefNames['factorycloak'].id] = {
				defenceQuota = {2,0.6,0.3},
				defenceRange = 400,
				airDefenceQuota = {2,1,0.1},
				importance = 0.25,
				BPQuota = 50,
				minFacCount = 1,
				
				[1] = { -- con
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['cloakcon'].id, chance = 1},
				},
				
				[2] = { -- scout
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['cloaksnipe'].id, chance = 1},
				},
				
				[3] = { -- raid
					importanceMult = 1,
					count = 2,
					[1] = {ID = UnitDefNames['cloakraid'].id, chance = 0.99},
					[2] = {ID = UnitDefNames['cloakassault'].id, chance = 0.01},
				},
				
				[4] = { -- arty
					importanceMult = 1,
					count = 1,
					[1] = {ID = UnitDefNames['cloakarty'].id, chance = 0.5},					
					[2] = {ID = UnitDefNames['howitzer'].id, chance = 0.5},	
				},
				
				[5] = { --assault
					importanceMult = 1,					
					count = 2,
					[1] = {ID = UnitDefNames['cloakraid'].id, chance = 0.99},
					[2] = {ID = UnitDefNames['cloakassault'].id, chance = 0.01},
				},	
				
				[6] = { -- skirm
					importanceMult = 1.2,
					count = 2,
					[1] = {ID = UnitDefNames['cloakskirm'].id, chance = 0.1},
					[2] = {ID = UnitDefNames['cloakraid'].id, chance = 0.99},
				},
				
				[7] = { -- riot
					importanceMult = 1,
					count = 2,
					[1] = {ID = UnitDefNames['cloakriot'].id, chance = 0.125},
					[2] = {ID = UnitDefNames['cloakraid'].id, chance = 0.875},
				},
				
				[8] = { -- aa
					importanceMult = 1.3,
					count = 1,
					[1] = {ID = UnitDefNames['cloakaa'].id, chance = 1},
				},	
			},

			[UnitDefNames['factoryplane'].id] = {
				defenceQuota = {2,0.6,0.3},
				defenceRange = 400,
				airDefenceQuota = {2,1,0.1},
				airFactory = true,
				importance = 1,
				BPQuota = 50,
				minFacCount = 0,
				
				[1] = { -- con
					importanceMult = 0.10,
					count = 1,
					[1] = {ID = UnitDefNames['planecon'].id, chance = 1},
				},
				
				[2] = { -- scout
					importanceMult = 0.02,
					count = 3,
					[1] = {ID = UnitDefNames['planefighter'].id, chance = 0.5},
					[2] = {ID = UnitDefNames['planeheavyfighter'].id, chance = 0.4},
					[3] = {ID = UnitDefNames['planescout'].id, chance = 0.1},
				},
				
				[3] = { -- fighterheavy
					importanceMult = 1,
					count = 3,
					[1] = {ID = UnitDefNames['planefighter'].id, chance = 0.7},
					[2] = {ID = UnitDefNames['planeheavyfighter'].id, chance = 0.25},
					[3] = {ID = UnitDefNames['bomberdisarm'].id, chance = 0.05},
				},
				
				[4] = { -- bomber
					importanceMult = 1,
					count = 3,
					[1] = {ID = UnitDefNames['bomberprec'].id, chance = 0.90},
					[2] = {ID = UnitDefNames['bomberriot'].id, chance = 0.05},					
					[3] = {ID = UnitDefNames['bomberheavy'].id, chance = 0.05},
				},
				
				[5] = { -- gunship
					importanceMult = 1,
					count = 2,
					[1] = {ID = UnitDefNames['gunshipheavyskirm'].id, chance = .9},
					[2] = {ID = UnitDefNames['bomberprec'].id, chance = 0.10},
				},	
			},

		},

		radarIds = {
			count = 2,
			[1] = {ID = UnitDefNames['staticradar'].id, chance = 0.75},
			[2] = {ID = UnitDefNames['staticheavyradar'].id, chance = 0.25},
		},

		mexIds = {
			count = 1,
			[1] = {ID = UnitDefNames['staticmex'].id, chance = 1},
		},

		energyIds = {
			count = 3,
			[1] = {ID = UnitDefNames['energysingu'].id},
			[2] = {ID = UnitDefNames['energyfusion'].id},
			[3] = {ID = UnitDefNames['energywind'].id},
		},
		econByDefId = {
			[UnitDefNames['energyfusion'].id] = {
				energyGreaterThan = 15, 
				whileStall = true,
				makeNearFactory = false,
				energySpacing = 400,
				chance = 0.4,
				minEtoMratio = 0.1,
				defenceQuota = {0.7,0.4,0.1},
				defenceRange = 200,
				airDefenceQuota = {2,1,0.1},
				index = 2,
				energy = true,
			},
			
			[UnitDefNames['energygeo'].id] = {
				energyGreaterThan = 20, 
				energySpacing = 400,
				whileStall = true,
				makeNearFactory = 1200,
				chance = 0.8,
				minEtoMratio = 1.5,
				defenceQuota = {0.8,0.6,0.4},
				defenceRange = 600,
				airDefenceQuota = {1.5,0.8,0.1},
				index = 2,
				energy = true,
			},
			
			[UnitDefNames['energysingu'].id] = {
				energyGreaterThan = 60, 
				energySpacing = 600,
				whileStall = false,
				makeNearFactory = 900,
				chance = 0.3,
				minEtoMratio = 1.25,
				defenceQuota = {3,2,2},
				defenceRange = 800,
				airDefenceQuota = {3,2,1},
				index = 3,
				energy = true,
			},
			
			[UnitDefNames['energyheavygeo'].id] = {
				energyGreaterThan = 120, 
				energySpacing = 900,
				whileStall = false,
				makeNearFactory = false,
				chance = 0.3,
				minEtoMratio = 1.5,
				defenceQuota = {3,2,2},
				defenceRange = 800,
				airDefenceQuota = {3,2,1},
				index = 3,
				energy = true,
			},
			--[[
			[UnitDefNames['energysolar'].id] = {
				energyGreaterThan = 0, 
				whileStall = true,
				makeNearFactory = false,
				energySpacing = 0,
				chance = 0.6,
				minEtoMratio = 0,
				defenceQuota = {0.5,0.3,0.07},
				defenceRange = 200,
				airDefenceQuota = {0,0.3,0.1},
				index = 2,
				energy = true,
			},
			]]--
			
			[UnitDefNames['energywind'].id] = {
				energyGreaterThan = 0, 
				whileStall = true,
				makeNearFactory = false,
				energySpacing = 60,
				chance = 0.4,
				minEtoMratio = 0,
				defenceQuota = {0.0,0.0,0.00},
				defenceRange = 200,
				airDefenceQuota = {0,0.0,0},
				index = 2,
				energy = true,
			},
			
			[UnitDefNames['staticmex'].id] = {
				defenceQuota = {1,0.4,0.15},
				defenceRange = 100,
				airDefenceQuota = {0,0,0},
				index = 1,
				energy = false,
			}
		},

		defenceIdCount = 3,
		airDefenceIdCount = 3,
		defenceIds = {
		
			[1] = {
				count = 2,
				[1] = {ID = UnitDefNames['turretmissile'].id, chance = 0.9},
				[2] = {ID = UnitDefNames['turretaalaser'].id, chance = 0.1},	
							
			},		
			[2] = {
				count = 7,
				[1] = {ID = UnitDefNames['turretmissile'].id, chance = 0.40},
				[2] = {ID = UnitDefNames['turretaalaser'].id, chance = 0.40},
				[3] = {ID = UnitDefNames['turretriot'].id, chance = 0.10},				
				[4] = {ID = UnitDefNames['turretaaclose'].id, chance = 0.05},
				[5] = {ID = UnitDefNames['turretaaheavy'].id, chance = 0.02},
				[6] = {ID = UnitDefNames['staticarty'].id, chance = 0.03},
				[7] = {ID = UnitDefNames['staticantinuke'].id, chance = 0.05},				
			},			
			[3] = {
				count = 8,
				[1] = {ID = UnitDefNames['turretmissile'].id, chance = 0.40},
				[2] = {ID = UnitDefNames['turretaalaser'].id, chance = 0.20},
				[3] = {ID = UnitDefNames['turretriot'].id, chance = 0.10},								
				[4] = {ID = UnitDefNames['turretaaclose'].id, chance = 0.05},
				[5] = {ID = UnitDefNames['turretaaheavy'].id, chance = 0.01},
				[6] = {ID = UnitDefNames['staticarty'].id, chance = 0.01},
				[7] = {ID = UnitDefNames['turretaaflak'].id, chance = 0.01},
				[8] = {ID = UnitDefNames['staticantinuke'].id, chance = 0.05},
			},		

			

			
		},

		defenceByDefId = {
			[UnitDefNames['turretmissile'].id] = {
				level = 1,
				index = 1,
			},
			[UnitDefNames['turretaalaser'].id] = {
				level = 1,
				index = 2,
			},
			[UnitDefNames['turretriot'].id] = {
				level = 2,
				index = 1,
			},
			[UnitDefNames['turretaaclose'].id] = {
				level = 2,
				index = 2,
			},
			[UnitDefNames['staticarty'].id] = {
				level = 2,
				index = 3,
			},
			[UnitDefNames['turretaaheavy'].id] = {
				level = 3,
				index = 1,
			},
		},

		airDefenceIds = {
			[1] = {
				count = 2,
				[1] = {ID = UnitDefNames['turretaaclose'].id, chance = 0.5},
				[2] = {ID = UnitDefNames['turretriot'].id, chance = 0.5},
			},
			
			[2] = {
				count = 2,
				[1] = {ID = UnitDefNames['turretaalaser'].id, chance = 0.1},
				[2] = {ID = UnitDefNames['turretaaclose'].id, chance = 0.4},
				[3] = {ID = UnitDefNames['turretriot'].id, chance = 0.5},
			},
			
			[3] = {
				count = 2,
				[1] = {ID = UnitDefNames['turretaafar'].id, chance = 0.7},
				[2] = {ID = UnitDefNames['turretaaflak'].id, chance = 0.3},
			},
		},

	
		
		airDefenceByDefId = {
			[UnitDefNames['turretriot'].id] = {
				level = 1,
				index = 1,
			},
			[UnitDefNames['turretaalaser'].id] = {
				level = 2,
				index = 1,
			},
			[UnitDefNames['turretaaclose'].id] = {
				level = 2,
				index = 2,
			},
			[UnitDefNames['turretaafar'].id] = {
				level = 3,
				index = 1,
			},
			[UnitDefNames['turretaaflak'].id] = {
				level = 3,
				index = 2,
			},
		},

		--was working on adding this for antinuke, Daniel
		NukeDefenceIds = {
			[1] = {
				count = 1,
				[1] = {ID = UnitDefNames['staticantinuke'].id, chance = 1.0},
				
			},

		},			
		
		airpadDefID = UnitDefNames['staticrearm'].id,
		nanoDefID = UnitDefNames['staticcon'].id,
		metalStoreDefID = UnitDefNames['staticstorage'].id,
	}
}
