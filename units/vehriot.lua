unitDef = {
  unitname            = [[vehriot]],
  name                = [[Ripper]],
  description         = [[Riot Rover]],
  acceleration        = 0.0118,
  brakeRate           = 0.024,
  buildCostMetal      = 200,
  energyUse           = .020 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .020 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[vehriot.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,	
  category            = [[LAND]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[42 42 42]],
  selectionVolumeType    = [[ellipsoid]], 
  corpse              = [[DEAD]],

  customParams        = {
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehicleriot]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 500,
  maxSlope            = 18,
  maxVelocity         = 2,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB WALL]],
  objectName          = [[corleveler_512.s3o]],
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:LEVLRMUZZLE]],
      [[custom:RIOT_SHELL_L]],
    },

  },
  sightDistance       = 500,
  trackOffset         = 7,
  trackStrength       = 6,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 30,
  turninplace         = 0,
  turnRate            = 442,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[vehriot_WEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },

  },


  weaponDefs          = {

    vehriot_WEAPON = {
      name                    = [[Impulse Cannon]],
      areaOfEffect            = 64,
      avoidFeature            = true,
      avoidFriendly           = true,
      burnblow                = true,
      --craterBoost             = 1,
      --craterMult              = 0.5,

      customParams            = {
        reaim_time = 8, -- COB
        gatherradius = [[90]],
        smoothradius = [[60]],
        smoothmult   = [[0.08]],

		light_camera_height = 1500,
      },
	  
      damage                  = {
        default = 200,
        planes  = 200,
        subs    = 0,
      },

      edgeEffectiveness       = 0.75,
      explosionGenerator      = [[custom:FLASH64]],
      impulseBoost            = 30,
      impulseFactor           = 0.6,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 2400 / Shared.RANGE_DIVISOR,
      reloadtime              = 5,
      soundHit                = [[weapon/cannon/generic_cannon]],
      soundStart              = [[weapon/cannon/outlaw_gun]],
      soundStartVolume        = 3,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 750,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[leveler_d.dae]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ vehriot = unitDef })
