-- UNITDEF -- ZEONWALL_EW --
--------------------------------------------------------------------------------

local unitName = "long_neutralzeonwall"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 6,
  builder            = false,
  buildTime          = 15,
  category           = "CORE NOTAIR",
  corpse             = "EW",
  description        = "perimeter defense",
  downloadable       = "1",
  footprintX         = 6,
  footprintZ         = 2,
  collisionvolumetype  = "box",
  collisionvolumescales = "96 30 25",
  collisionvolumeoffsets = "0 0 0",
  iconType           = "neutral",
  idleAutoHeal       = 0,
  levelGround        = false,
  maxDamage          = 200,
  maxSlope           = 30.00,
  maxWaterDepth      = 0,
  name               = "East west wall",
  objectName         = "buildings/neutralzekewallew.s3o",
  power              = 1,
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
    description        = "Zeon wall",
    featurereclamate   = "smudge01",
    footprintX         = 6,
    footprintZ         = 1,
	collisionvolumetype  = "box",
	collisionvolumescales = "96 30 25",
	collisionvolumeoffsets = "0 0 0",
    height             = "30",
    hitdensity         = "100",
    metal              = 1,
    object             = "buildings/neutralzekewallew.s3o",
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
    description        = "Zeon wall",
    featurereclamate   = "smudge01",
    footprintX         = 1,
    footprintZ         = 6,
	collisionvolumetype  = "box",
	collisionvolumescales = "25 30 96",
	collisionvolumeoffsets = "0 0 0",
    height             = "30",
    hitdensity         = "100",
    metal              = 1,
    object             = "buildings/neutralzekewallns.s3o",
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
