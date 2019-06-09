unitDef = {
  unitname            = [[amphassault]],
  name                = [[Abrams]],
  description         = [[T72 Tank]],
  acceleration        = 0.0018,  --m1 abrams 0 to 20 mph in 7 seconds
  brakeRate           = 0.0048,
  buildCostMetal      = 300, -- T72 costs 2 million
  energyUse           = .075 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .075 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[t72.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND TANK ARMOR]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[26 30 9]], 
  collisionVolumeType    = [[cylY]],  
  corpse              = [[DEAD]],

  customParams        = {
	modelradius    = [[16]],	
	selection_scale = 0.45,  
  },

  explodeAs           = [[BIG_UNIT]],
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[tankskirm]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 500,
  maxSlope            = 18,
  maxVelocity         = 1.75,		--abrams max speed is 37 mph
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[t72.s3o]],
  script	      	  = [[t72.cob]],
  selfDestructAs      = [[BIG_UNIT]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],
      [[custom:WARMUZZLE]],
      [[custom:flashmuzzle1]],	  
      [[custom:emg_shells_l]],	  
    },

  },
  sightDistance       = 500,
  trackOffset         = 8,
  trackStrength       = 10,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 24,
  turninplace         = 0,
  turnRate            = 312,
  workerTime          = 0,

  weapons             = {

    [1] = {
      def                = [[COR_GOL]],
	  badTargetCategory  = [[FIXEDWING GUNSHIP TOOFAST INFANTRY]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER ]],
    },

    [2] = {
      def                = [[TANK_M240MACHINEGUN]],
	  badTargetCategory  = [[FIXEDWING TANK BUILDING]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],

    },
	
    [3] = {
      def                = [[SQUISH]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,	  
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER TOOFAST]],
    },

  },


  weaponDefs          = {

    COR_GOL             = {
      name                    = [[125mm 2A46]],
	  accuracy                = 192,
      areaOfEffect            = 16,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        reaim_time = 10, -- COB
		
	    gatherradius = [[105]],
	    smoothradius = [[70]],
	    smoothmult   = [[0.4]],
		
		--light_color = [[3 2.33 1.5]],
		light_radius = 0,	

	  },
      
      damage                  = {
        default = 530,
        subs    = 0,
      },

      explosionGenerator      = [[custom:TESS]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
	  avoidFriendly           = true,
	  collideFriendly         = true,
      range                   = 2500 / Shared.RANGE_DIVISOR, --2500 meters
      reloadtime              = 8,
	  size                    = 0,
      soundHit                = [[weapon/cannon/supergun_bass_boost]],
      soundStart              = [[weapon/Abrams01]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1750, --was 584, 1750 m/s
    },
	
    TANK_50MACHINEGUN = {
      name                    = [[M2 Machinegun]],
      accuracy                = 256,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      burnblow                = true,
      --burst                   = 1,
      --burstrate               = 0.1,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customParams        = {
		reaim_time = 8, -- COB
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 40,
		tanks = 0,
		buildings = 2,
        planes  = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 500,
      reloadtime              = 0.15,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/distant_gunshot2]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1000,
    },	
	
   TANK_M240MACHINEGUN = {
      name                    = [[M240 Machinegun]],
      accuracy                = 350,
      alphaDecay              = 0.7,
      areaOfEffect            = 96,
      burnblow                = true,
      burst                   = 3,
      burstrate               = 0.1,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customParams        = {
		reaim_time = 8, -- COB
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 10,
		tanks = 0,
		buildings = 1,
        planes  = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 300,
      reloadtime              = 0.1,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/distant_fire3]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1000,
    },	



    SQUISH = {
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
        default = 20,
        tanks  = 0,
		buildings  = 10,
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
	
	
	
	SLOWBEAM = {
      name                    = [[Slowing Beam]],
      areaOfEffect            = 8,
      beamDecay               = 0.9,
      beamTime                = 0.1,
      beamttl                 = 50,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
        reaim_time = 8, -- COB
		
        timeslow_damagefactor = 1,
        timeslow_onlyslow = 1,
        timeslow_smartretarget = 0.33,
		
		light_camera_height = 1800,
		light_color = [[0.6 0.22 0.8]],
		light_radius = 200,
      },

      damage                  = {
        default = 600,
      },

      explosionGenerator      = [[custom:flashslow]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      largeBeamLaser          = true,
      laserFlareSize          = 4,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 440,
      reloadtime              = 1,
      rgbColor                = [[0.27 0 0.36]],
      soundStart              = [[weapon/laser/pulse_laser2]],
      soundStartVolume        = 15,
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 11,
      tolerance               = 18000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
    },


  },


  featureDefs         = {

    DEAD       = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[t72_dead.s3o]],
	  reclaimable	   = false,
    },

	
    HEAP       = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = false,
    },

  },

}


return lowerkeys({ amphassault = unitDef })
