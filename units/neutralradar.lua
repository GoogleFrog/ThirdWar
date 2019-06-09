-- UNITDEF -- ZEONMECHIST --
--------------------------------------------------------------------------------

local unitName = "neutralradar"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 0,
  builder            = false,
  buildTime          = 13,
  category           = "NOTAIR PITIFUL",
  description        = "Communications dish",
  footprintX         = 2,
  footprintZ         = 2,
  collisionvolumetype  = "CylY",
  collisionvolumescales = "32 32 32",
  collisionvolumeoffsets = "0 0 0",	
  idleAutoHeal       = 50,
  maxDamage          = 3000,
  maxSlope           = 30.00,
  maxWaterDepth      = 0,
  name               = "Radar Dish",
  objectName         = "features/smoth/harborset/radardish_1.s3o",
  power              = 1,
  reclaimable        = false,
  shootme            = "1",
  sightDistance      = 150.00,
  unitname			 = unitName,  
  yardMap            = "oo oo",
  customparams = {
  	factionname		   = "neutral",
  },
 }

--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
