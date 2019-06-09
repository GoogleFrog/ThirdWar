-- UNITDEF -- FEDWALL_EW --
--------------------------------------------------------------------------------

local unitName = "long_neutralfedwall"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 6,
  builder            = false,
  buildTime          = 15,
  category           = "CORE NOTAIR PITIFUL",
  corpse             = "EW",
  description        = "perimeter defense",
  downloadable       = "1",
  footprintX         = 6,
  footprintZ         = 2,
  	collisionvolumetype  = "box",
	collisionvolumescales = "96 25 30",
	collisionvolumeoffsets = "0 0 0",
  idleAutoHeal       = 0,
  levelGround        = false,
  maxDamage          = 200,
  maxSlope           = 30.00,
  maxWaterDepth      = 0,
  name               = "East west wall",
  objectName         = "buildings/neutralfedwallew.s3o",
  power              = 1,
  reclaimable        = false,
  script		 	 = "default.cob",  
  shootme            = "1",
  sightDistance      = 150.00,
  TEDClass           = "FORT",
  yardMap            = "f",
  unitname			 = unitName,
  customparams = {
  	factionname		   = "neutral",
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  EW = {
    autoreclaimable    = "0",
    blocking           = true,
    category           = "wall",
    damage             = 2000,
    description        = "federation wall",
    featurereclamate   = "smudge01",
    footprintX         = 6,
    footprintZ         = 2,
	collisionvolumetype  = "box",
	collisionvolumescales = "96 25 30",
	collisionvolumeoffsets = "0 0 0",
    height             = "30",
    hitdensity         = "100",
    metal              = 1,
    object             = "buildings/neutralfedwallew.s3o",
    reclaimable        = true,
    seqnamereclamate   = "tree1reclamate",
    upright            = true,
    world              = "allworld",
  },
  NS = {
    autoreclaimable    = "0",
    blocking           = true,
    category           = "wall",
    damage             = 2000,
    description        = "federation wall",
    featurereclamate   = "smudge01",
    footprintX         = 2,
    footprintZ         = 6,
	collisionvolumetype  = "box",
	collisionvolumescales = "30 25 96",
	collisionvolumeoffsets = "0 0 0",
    height             = "30",
    hitdensity         = "100",
    metal              = 1,
    object             = "buildings/neutralfedwallns.s3o",
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
