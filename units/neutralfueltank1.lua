-- UNITDEF -- FEDWALL --
--------------------------------------------------------------------------------

local unitName = "neutralfueltank1"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 1,
  builder            = false,
  buildTime          = 15,
  category           = "CORE NOTAIR PITIFUL",
  corpse             = "holding_tank1_dead",
  description        = "Chemical tank",
  downloadable       = "1",
  explodeAs          = "fueltank",
  footprintX         = 3,
  footprintZ         = 3,
  collisionvolumetype  = "CylY",
  collisionvolumescales = "36 30 36",
  collisionvolumeoffsets = "0 0 0",	
  idleAutoHeal       = 0,
  levelGround        = false,
  maxDamage          = 200,
  maxSlope           = 30.00,
  maxWaterDepth      = 0,
  minCloakDistance   = 70.627418518066,
  name               = "fuel tank",
  objectName         = "features/smoth/harborset/holding_tank1.s3o",
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

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
