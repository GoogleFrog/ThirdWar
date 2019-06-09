--------------------------------------------------------------------------------

local unitName = "Industrial_smokestack_tall_1"

--------------------------------------------------------------------------------

local unitDef = {
	bmcode				= "0",
	buildCostEnergy		= 0,
	buildCostMetal		= 1,
	builder				= false,
	buildTime			= 15,
	category			= "CORE NOTAIR PITIFUL",
	corpse				= "holding_tank1_dead",
	description			= "Smoke stack",
	downloadable		= "1",
	explodeAs			= "fueltank",
	footprintX			= 3,
	footprintZ			= 3,
	collisionvolumetype  = "box",
	collisionvolumescales = "48 120 48",
	collisionvolumeoffsets = "0 0 0",		
	idleAutoHeal		= 0,
	levelGround			= false,
	maxDamage			= 200,
	maxSlope			= 30.00,
	maxWaterDepth		= 0,
	minCloakDistance	= 70.627418518066,
	name				= "smokestack",
	objectName			= "features/smoth/harborset/Industrial_smokestack_tall_1.s3o",
	power				= 1,
	reclaimable			= false,
	script		 		= "smokestacktall.cob",	
	selfDestructAs		= "BIG_BUILDING",
	shootme				= "1",
	sightDistance		= 150.00,
	TEDClass			= "FORT",
	unitname			= unitName,	
	yardMap				= "oo oo",
	  sfxtypes = {
    explosiongenerators = {
      "custom:industrial_smoke",
    },
  },
	customparams = {
		factionname			 = "neutral",
	},
}
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
