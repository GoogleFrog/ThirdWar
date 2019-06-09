unitDef = {
  unitname            = [[shiptransport]],
  name                = [[Surfboard]],
  description         = [[Transport Platform]],
  acceleration        = 0.102,
  activateWhenBuilt   = true,
  brakeRate           = 0.115,
  buildCostMetal      = 220,
  energyUse           = .022 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .022 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[shiptransport.png]],
  canMove             = true,
  cantBeTransported   = true,
  category            = [[SHIP UNARMED]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[0 0 0]],
  collisionVolumeType    = [[ellipsoid]],  
  corpse              = [[DEAD]],

  customParams        = {
	turnatfullspeed = [[1]],
    modelradius    = [[15]],
  },

  explodeAs           = [[BIG_UNITEX]],
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  holdSteady          = true,
  iconType            = [[shiptransport]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  isFirePlatform      = true,
  maxDamage           = 500,
  maxVelocity         = 3.3,
  minCloakDistance    = 75,
  movementClass       = [[BOAT4]],
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  releaseHeld         = true,
  --objectName          = [[shiptransport]],  
  objectName          = [[CORAP.s3o]],
  script              = [[shiptransport.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 1000,
  sonarDistance       = 0,
  transportCapacity      = 2048,
  transportSize          = 200,
  turnRate            = 590,

  featureDefs         = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[shiptransport_dead.dae]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris3x3a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shiptransport = unitDef })
