-- UNITDEF -- ZEONWALL --
--------------------------------------------------------------------------------

local unitName = "neutralzeonwall"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 1,
  builder            = false,
  buildTime          = 15,
  category           = "CORE NOTAIR",
  corpse             = "neutralzekewall",
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
  objectName         = "buildings/neutralzekewall_1.s3o",
  power              = 1,
  reclaimable        = false,
  selfDestructAs     = "BIG_BUILDING",
  shootme            = "1",
  script		 	 = "default.cob",    
  sightDistance      = 150.00,
  TEDClass           = "FORT",
  yardMap            = "oo oo",
  unitname			 = unitName,
  
  customparams = {
  	factionname		   = "neutral",
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  neutralzekewall = {
    autoreclaimable    = "0",
    blocking           = true,
    category           = "zekewall",
    damage             = 1000,
    description        = "zekewall",
    featurereclamate   = "smudge01",
    footprintX         = 2,
    footprintZ         = 2,
    height             = "30",
    hitdensity         = "100",
    metal              = 1,
    object             = "buildings/neutralzekewall_1.s3o",
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
