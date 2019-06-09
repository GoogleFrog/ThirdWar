
aiCommanders = {

	--[UnitDefNames["tankcon"].id] = true,

	[UnitDefNames["dyntrainer_recon_base"].id] = true,
	[UnitDefNames["dyntrainer_support_base"].id] = true,
	[UnitDefNames["dyntrainer_assault_base"].id] = true,
	[UnitDefNames["dyntrainer_strike_base"].id] = true,

}

if Spring.GetModOptions().campaign_chassis == "1" then
	--[[ Not sure about this, nabs like to feel special.
	     We could always limit it to hard/brutal and it's
	     not that amazing anyway ]]
	aiCommanders[UnitDefNames["dyntrainer_knight_base"].id] = true	
	--aiCommanders[UnitDefNames["tankcon"].id] = true
end

ploppables = {
  
--  "factorycloak",
  "staticmex",
--  "factoryveh",
--  "factorytank",    
--  "factoryship",
--  "factoryplane",
--  "factorygunship",
  
--  "striderhub",
  
--  "factoryamph",
--  "factoryjump",
--  "factoryspider",
--  "factoryhover",
--  "factoryshield",  
  
}

ploppableDefs = {}
for i = 1, #ploppables do
	local ud = UnitDefNames[ploppables[i]]
	if ud and ud.id then
		ploppableDefs[ud.id ] = true
	end
end

-- starting resources
START_METAL   = 1000
START_ENERGY  = 1000

START_STORAGE = 250 --really?

COMM_SELECT_TIMEOUT = 30 * 15 -- 15 seconds

DEFAULT_UNIT = UnitDefNames["dyntrainer_strike_base"].id
--DEFAULT_UNIT = UnitDefNames["tankcon"].id

DEFAULT_UNIT_NAME = "Strike Trainer"
--DEFAULT_UNIT_NAME = "Constructor"

