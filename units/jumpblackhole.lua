unitDef = {
  unitname              = [[jumpblackhole]],
  name                  = [[Placeholder]],
  description         = [[Heavy Tank]],
  acceleration        = 0.002,  --m1 abrams 0 to 20 mph in 7 seconds
  brakeRate           = 0.005,
  buildCostMetal      = 900,
  energyMake          = -0.10 * Shared.UPKEEP_MULTIPLIER,
  metalMake           = -0.10 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[tankheavyassault.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND TANK ARMOR]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[28 32 9]], 
  collisionVolumeType    = [[cylY]],  
  corpse              = [[DEAD]],

  customParams        = {
	modelradius    = [[18]],	
	selection_scale = 0.5,  
  },

  explodeAs           = [[BIG_UNIT]],
  transportSize       = 60,
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[abrams]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 1000,
  maxSlope            = 18,
  maxVelocity         = 2,		--abrams max speed is 45 mph
  --maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[m1abrams.s3o]],
  script	      	  = [[m1abrams.cob]],
  selfDestructAs      = [[BIG_UNIT]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],
      [[custom:WARMUZZLE]],
      [[custom:muzzle50]],
      [[custom:shells_50]],
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
	  --mainDir            = [[0 0 1]],
      --maxAngleDif        = 12,
	  badTargetCategory  = [[FIXEDWING GUNSHIP TOOFAST INFANTRY]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER ]],
    },

    [2] = {
      def                = [[TANK_50MACHINEGUN]],	  
      badTargetCategory  = [[FIXEDWING BUILDING TANK]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER ]],

    },		
	
    [3] = {
      def                = [[TANK_M240MACHINEGUN]],
	  badTargetCategory  = [[FIXEDWING TANK BUILDING]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],

    },
	
    [4] = {
      def                = [[SQUISH]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,	  
	  badTargetCategory  = [[FIXEDWING TANK]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER TOOFAST]],
    },

  },


  weaponDefs          = {

    COR_GOL             = {
      name                    = [[120mm M256]],
	  accuracy                = 128,
      areaOfEffect            = 32,
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
        default = 750,
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
      reloadtime              = 6,
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
		lightarmor = 1,
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
      range                   = 1500 / Shared.RANGE_DIVISOR,
	  size                    = 0.5,
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
		lightarmor = 0,
		buildings = 1,
        planes  = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.25,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 900 / Shared.RANGE_DIVISOR,
	  size                    = 0,
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
	



  },


  featureDefs         = {

    DEAD       = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[m1abrams_dead.s3o]],
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

return lowerkeys({ jumpblackhole = unitDef })
