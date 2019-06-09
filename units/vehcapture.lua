unitDef = {
  unitname            = [[vehcapture]],
  name                = [[Radar Truck]],
  description         = [[Mobile Radar and Radar jammer]],
  acceleration        = 0.0200,
  brakeRate           = 0.0285,
  buildCostMetal      = 400,
  energyUse           = .04 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .04 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[vehcapture.png]],
  canGuard            = false,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[26 26 50]],
  collisionVolumeType    = [[cylZ]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[40 40 50]],
  selectionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {
    --post_capture_reload = 360,
	modelradius    = [[13]],
  },

  explodeAs           = [[BIG_UNITEX]],  
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehiclespecial]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 300,
  maxSlope            = 18,
  maxVelocity         = 2,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP]],
  objectName          = [[corvrad_big.s3o]],
  script              = [[vehcapture.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 500,
  radarDistance       = 1400,
  radarDistanceJam    = 700,  
  radarEmitHeight	  = 32,
  sonarDistance       = 570,  
  onoffable           = true,    
  trackOffset         = -7,
  trackStrength       = 5,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 26,
  turninplace         = 0,
  turnRate            = 420,
  workerTime          = 0,



  featureDefs         = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[corvrad_big_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ vehcapture = unitDef })
