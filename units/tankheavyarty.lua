unitDef = {
  unitname               = [[tankheavyarty]],
  name                   = [[SPG]],
  description            = [[Self Propelled Gun Artillery Tank]],
  acceleration       	 = 0.0018,  --m1 abrams 0 to 20 mph in 7 seconds
  brakeRate           	 = 0.0048,
  buildCostMetal         = 1000,
  energyUse           	 = .30 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .30 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[spg.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[34 34 50]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[17]],
  },

  explodeAs              = [[BIG_UNIT]],
  fireState           	 = 2,
  footprintX             = 4,
  footprintZ             = 4,
  highTrajectory         = 0,
  iconType               = [[tanklrarty]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 500,
  maxSlope               = 18,
  maxVelocity            = 2,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK4]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName             = [[k9.s3o]],
  script	      	  	 = [[k9.cob]],
  selfDestructAs         = [[BIG_UNIT]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],
      [[custom:WARMUZZLE]],
      [[custom:flashmuzzle1]],	  
      [[custom:emg_shells_l]],	
      [[custom:wolvmuzzle1]],
    },

  },
  sightDistance          = 500,
  trackOffset            = 8,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 26,
  turninplace            = 0,
  turnRate               = 312,
  workerTime             = 0,

  weapons                = {

  
    [1] = {
      def                = [[K9_155MM]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },
	
    [2] = {
      def                = [[MACHINEGUN50]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[ TOOFAST FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],

    },
	
    [3] = {
      def                = [[SQUISH]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,	  
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER TOOFAST]],
    },

  },


  weaponDefs             = {

    K9_155MM = {
      name                    = [[155mm Cannon]],
      accuracy                = 10,
      areaOfEffect            = 96,
	  avoidFeature            = false,
	  avoidGround             = false,
      craterBoost             = 1,
      craterMult              = 2,
      noSelfDamage            = true,
	  avoidFriendly           = true,
	  collideFriendly         = true,	  

      customParams            = {
        reaim_time = 15, -- COB
		light_color = [[1.4 0.8 0.3]],
      },

      damage                  = {
        default = 300,        
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
	  explosionGenerator      = [[custom:DOT_Pillager_Explo]],	  
      impulseBoost            = 0,
      impulseFactor           = 0.4,
	  --flightTime              = 9,
      interceptedByShieldType = 2,
	  myGravity               = 0.3,
      noSelfDamage            = true,
      range                   = 30000 / Shared.RANGE_DIVISOR, --10,600m
      reloadtime              = 10,
      soundHit                = [[weapon/cannon/distant_explosion]],
	  soundHitVolume		  = 5,
      soundStart              = [[weapon/cannon/pillager_fire]],
	  soundStartVolume		  = 6,
      turret                  = true,
      weaponType              = [[Cannon]],
      --startVelocity           = 130,
	  --weaponAcceleration      = -60,	  
      weaponVelocity          = 1024,--480 m/s, was 720
    },  

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


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[k9_dead.s3o]],
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

return lowerkeys({ tankheavyarty = unitDef })
