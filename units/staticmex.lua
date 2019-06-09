unitDef = {
  unitname               = [[staticmex]],
  name                   = [[Oil Pump]],
  description            = [[Produces Money]],
  acceleration           = 0,
  activateWhenBuilt      = true,
  brakeRate              = 0,
  buildCostMetal         = 200,
  builder                = false,
  buildingMask           = 0,
  buildPic               = [[staticmex.png]],
  category               = [[UNARMED FLOAT]],
  collisionVolumeOffsets  = [[0 -2 0]],
  collisionVolumeScales   = [[24 32 124]],
  collisionVolumeType     = [[cylY]],
  selectionVolumeOffsets  = [[0 0 0]],
  selectionVolumeScales   = [[30 20 130]],
  selectionVolumeType     = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    occupationStrength = 1,
    pylonrange         = 60,
	ismex              = 1,
	aimposoffset       = [[0 -4 0]],
	midposoffset       = [[0 -10 0]],
	modelradius        = [[30]],
	removewait         = 1,
  },

  energyUse              = 0,
  explodeAs              = [[LARGE_BUILDINGEX]],
  floater                = true,
  footprintX             = 3,
  footprintZ             = 9,
  iconType               = [[mex]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  levelGround            = false,
  maxDamage              = 2000,
  maxSlope               = 255,
  maxVelocity            = 0,
  maxWaterDepth          = 5000,
  minCloakDistance       = 150,
  noAutoFire             = false,
  objectName             = [[oilpump.S3O]],
  onoffable              = false,
  script                 = "staticmex.lua",
  selfDestructAs         = [[LARGE_BUILDINGEX]],
  sightDistance          = 500,
  turnRate               = 0,
  waterline              = 1,
  workerTime             = 0,
  --yardMap                = [[ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc ccooooocc]],
  yardmap                       = [[o]],

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[oilpump_dead.s3o]],
	  reclaimable	   = true,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ staticmex = unitDef })
