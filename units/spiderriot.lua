unitDef = {
  unitname               = [[spiderriot]],
  name                   = [[Gunner]],
  description            = [[Raider Rover]],
  acceleration           = 0.03,
  brakeRate              = 0.02,
  buildCostMetal         = 125,
  energyUse           	 = .0125 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .0125 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[humvee.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST]],
  collisionVolumeOffsets = [[0 -5 0]],
  collisionVolumeScales  = [[26 26 36]],
  collisionVolumeType    = [[cylZ]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[28 28 34]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[10]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[humvee]],
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
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB WALL]],
  objectName             = [[humvee.s3o]],
  script                 = [[humvee.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:muzzle50]],
      [[custom:shells_50]],
    },

  },
  sightDistance          = 500,
  trackOffset            = 5,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 14,
  turninplace            = 0,
  turnRate               = 703,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[MACHINEGUN50]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[ TOOFAST FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
    {
      def                = [[SQUISHLIGHT]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,	  
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER TOOFAST]],
    },
  },


  weaponDefs             = {

    MACHINEGUN50 = {
      name                    = [[M2 Machinegun]],
      accuracy                = 200,
	  areaOfEffect            = 16,
      alphaDecay              = 0.7,      
      burnblow                = true,
      --burst                   = 3,
      --burstrate               = 0.2,
      craterBoost             = 0.0,
      craterMult              = 0.0,

      customParams        = {
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 30,
		buildings = 2,
		tanks   = 0,
		lightarmor = 1,
        planes  = 30,
		ships    = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
	  size 					  = 0,
      noSelfDamage            = true,
      range                   = 1250 / Shared.RANGE_DIVISOR, --1200m
	  tolerance               = 2500 / Shared.RANGE_DIVISOR, --2500m
      reloadtime              = .13,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/distant_gunshot2]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2900, --890 m/s
    },
    SQUISHLIGHT = {
      name                    = [[Squish]],
      areaOfEffect            = 16,
      beamTime                = 0.01,
      canattackground         = true,
      cegTag                  = [[orangelaser]],
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      --burst                   = 4,
      --burstrate               = 0.01,	  

      customParams        = {
		light_camera_height = 500,
		light_color = [[1 1 0.7]],
		light_radius = 0,
		light_beam_start = 0.25,
		
		reaim_time = 8, -- COB
		
        combatrange = 60,
		--impulse = [[150]],
      },
	  
      damage                  = {
	    infantry = 250,
        default = 0,
        tanks  = 0,
		buildings  = 0,
        subs    = 0,
      },

      --explosionGenerator      = [[custom:blood_explode]],
      fireStarter             = 90,
	  hardStop                = false,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 0,
      lodDistance             = 10000,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 70,
      reloadtime              = .05,
      rgbColor                = [[1 0.25 0]],
      --soundStart              = [[weapon/squish]],
      targetborder            = 1,
      thickness               = 0,
      tolerance               = 10000,
      turret                  = false,
      waterweapon             = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 5000,
	  
    },
	
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

return lowerkeys({ spiderriot = unitDef })
