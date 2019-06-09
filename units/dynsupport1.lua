unitDef = {
  unitname            = [[dynsupport1]],
  name                = [[Engineer Commander]],
  description         = [[Econ/Support Commander]],
  --description            = [[Construction Truck]],
  acceleration           = 0.066,
  activateWhenBuilt   	 = true,
  brakeRate              = 1.5,
  buildCostMetal         = 200,
  energyMake           	 = 1,
  metalMake           	 = 1,   
  buildDistance          = 180,
  builder                = true,

  buildoptions        = {
  },

  buildPic               = [[tankcon.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[60 60 60]],
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
	aimposoffset   = [[0 0 0]],
	midposoffset   = [[0 -10 0]],
	modelradius    = [[30]],
	
    level = [[1]],
    statsname = [[dynsupport1]],
    commtype = [[4]],
	dynamic_comm   = 1,			
    
    statsname = [[dynsupport1]],
    soundok = [[light_tank_move2]],
    soundselect = [[tank_select]],
    soundbuild = [[builder_start]],
    
	
  },

  energyStorage       = 1000,
  energyUse           = 0,  
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[builder]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 1000,
  maxSlope               = 18,
  maxVelocity            = 2,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],  
  noChaseCategory        = [[FIXEDWING SATELLITE GUNSHIP]],
  objectName             = [[welder.s3o]],
  script                 = [[tankcon2.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:flashmuzzle1]],
	  [[custom:NONE]],
	  [[custom:NONE]],
	  [[custom:NONE]],
	  [[custom:NONE]],
	  [[custom:NONE]],
    },

  },

  weapons                = {



  },  
  
  showNanoSpray          = false,
  sightDistance          = 500,
  trackOffset            = 3,
  trackStrength          = 6,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 32,
  turninplace            = 0,
  turnRate               = 625,
  workerTime             = 10,

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[welder_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ dynsupport1 = unitDef })
