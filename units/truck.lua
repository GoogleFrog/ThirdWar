unitDef = {
  unitname               = [[truck]],
  name                   = [[Truck]],
  description            = [[Land Transport]],
  acceleration           = 0.025,
  brakeRate              = 0.018,
  buildCostMetal         = 150,
  energyUse           	 = .0125 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .0125 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[truck.png]],
  --canFly              	 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canload                = [[1]],
  category               = [[LAND TOOFAST]],
  canSubmerge         	 = false,  
  
  collide                = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[60 25 100]],
  collisionVolumeType    = [[Box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[55 25 90]],
  selectionVolumeType    = [[Box]],  
  cruiseAlt           	 = 1,
 
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[10]],
    --airstrafecontrol = [[1]],
	midposoffset   = [[0 0 0]],	
  },

  explodeAs              = [[BIG_UNITEX]],
  --floater             	 = true,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[truck]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 400,
  maxSlope               = 18,
  maxVelocity            = 4,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK2]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[truck.s3o]],
  script				 = [[truck.lua]],
  releaseHeld            = true,
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:muzzle50]],
      [[custom:shells_50]],
    },

  },
  sightDistance          = 500,
  transportCapacity      = 60, --60 troops, 
  transportSize          = 25,
  trackOffset            = 5,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 14,
  turninplace            = 0,
  turnRate               = 480,
  workerTime             = 0,
  verticalSpeed       	 = 30,  

  weapons                = {



  },


  weaponDefs             = {


  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[humvee_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ truck = unitDef })
