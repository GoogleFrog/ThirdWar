-- UNITDEF -- FEDWALL --
--------------------------------------------------------------------------------

local unitName = "neutralfedwall"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 1,
  builder            = false,
  buildTime          = 15,
  category           = "CORE NOTAIR PITIFUL",
  corpse             = "neutralfedwallfeature",
  description        = "perimeter defense",
  downloadable       = "1",
  explodeAs          = "BIG_BUILDING",
  footprintX         = 2,
  footprintZ         = 2,
  collisionvolumetype  = "box",
  collisionvolumescales = "33 33 33",
  collisionvolumeoffsets = "0 0 0",
  idleAutoHeal       = 0,
  isFeature          = true,
  levelGround        = false,
  maxDamage          = 200,
  maxSlope           = 30.00,
  maxWaterDepth      = 0,
  minCloakDistance   = 70.627418518066,
  name               = "Square wall section",
  objectName         = "buildings/neutralfedwall_1.s3o",
  power              = 1,
  reclaimable        = false,
  script		 	 = "default.cob",  
  selfDestructAs     = "BIG_BUILDING",
  shootme            = "1",
  sightDistance      = 150.00,
  TEDClass           = "FORT",
  unitname			 = unitName,  
  yardMap            = "oo oo",
  customparams = {
  	factionname		   = "neutral",
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
    neutralfedwallfeature = {
    autoreclaimable    = "0",
    blocking           = true,
    category           = "fedwall",
    damage             = 1000,
    description        = "fedwall",
    featurereclamate   = "smudge01",
    footprintX         = 2,
    footprintZ         = 2,
    height             = "30",
    hitdensity         = "100",
    metal              = 1,
    object             = "buildings/neutralfedwall_1.s3o",
    reclaimable        = true,
    seqnamereclamate   = "tree1reclamate",
    upright            = true,
    world              = "allworld",
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
