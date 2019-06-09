unitDef = {
  unitname            = [[jumpskirm]],
  name                = [[Moderator]],
  description            = [[Light Armor]],
  acceleration        	 = 0.0028,  --m1 abrams 0 to 20 mph in 7 seconds
  brakeRate           	 = 0.0058,
  buildCostMetal         = 500,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[lightarmor.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canManualFire          = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[28 32 9]], 
  collisionVolumeType    = [[cylY]],  
  corpse                 = [[DEAD]],

  customParams           = {
	aimposoffset   = [[0 8 0]],
	midposoffset   = [[0 3 0]],
	modelradius    = [[16]],	
	selection_scale = 0.45, 
	
	--stockpiletime  = [[15]],
	--stockpilecost  = [[100]],
	priority_misc  = 0,		
  },

  
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[vehicleassault]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 750,
  maxSlope               = 18,
  maxVelocity            = 2,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[bradley.s3o]],
  script                 = [[bradley.cob]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:flashmuzzle1]],      
	  [[custom:brawlermuzzle]],
	  [[custom:sa6rearsmoke]],
    },

  },
  sightDistance          = 500,
  trackOffset            = 6,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 18,
  turninplace            = 0,
  turnRate               = 430,
  workerTime             = 0,

  weapons                = {

  
    {
      def                = [[SPIKE_MISSILE]],
      --maxAngleDif        = 20,		  
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP FLOAT HOVER GUNSHIP]],
    },  
    {
      def                = [[M242Mk38]], --2x M242 Mk 38 Mod 2
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER GUNSHIP]],
    },
    {
      def                = [[TANK_M240MACHINEGUN]],
      --maxAngleDif        = 20,	 	  
	  badTargetCategory  = [[FIXEDWING TANK BUILDING WALL]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],

    },	
	
    {
      def                = [[SQUISH]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,	  
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER TOOFAST]],
    },	

  },


  weaponDefs             = {

   M242Mk38 = {
      name                    = [[M242 Mk 38]],
	  accuracy                = 32,
      areaOfEffect            = 16,
	  burst                   = 3,
      burstRate               = .25,
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {        
		reaim_time = 4, -- COB
		light_camera_height = 1500,
		light_radius = 0,
      },
	  
      damage                  = {
        default = 100, --25×137 mm
        tanks   = 1,
		buildings  = 5,
		planes  = 250,
        ships    = 0,		
        subs    = 0,
      },

	  --duration                = 0.02,
	  edgeEffectiveness       = 0.25,
      explosionGenerator      = [[custom:DEFAULT]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 3000 / Shared.RANGE_DIVISOR,
	  size                    = 0,
	  --myGravity               = 1,
      reloadtime              = 1.5,
	  projectiles             = 1,
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/cannon/M242]],
	  soundStartVolume        = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3600,
    },

   TANK_M240MACHINEGUN = {
      name                    = [[M240 Machinegun]],
      accuracy                = 350,
      alphaDecay              = 0.7,
      areaOfEffect            = 96,
      burnblow                = true,
      burst                   = 3,
      burstrate               = 0.1,
      craterBoost             = 0.0,
      craterMult              = 0.0,

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

    SPIKE_MISSILE = {
      name                    = [[FGM 148 Javelin]],
      areaOfEffect            = 24,
	  accuracy 		          = 8,
	  avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 5,
	  commandfire             = true,

	  customParams        	  = {
		--isaa = [[1]],
		--script_reload = [[20]],
		--script_burst = [[3]],
		reaim_time = 15,
		
		light_camera_height = 2000,
		light_radius = 200,
	  },

      damage                  = {
        default = 500, --18.5 lbs warhead, pierces 600 to 800 mm of Rolled Hardened Armor 
		infantry= 50,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 7,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      --metalpershot            = 50, --costs $175,000 each
	  --stockpile               = true,
      --stockpileTime           = 15,	  
      model                   = [[wep_m_ajax.s3o]],
      noSelfDamage            = false,
      predictBoost            = 1,
      range                   = 4750 / Shared.RANGE_DIVISOR, --new spike is 4750 but this is imbalanced?
      reloadtime              = 30,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/sabot_hit]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/missile/sabot_fire]],
      soundStartVolume        = 7,
      startVelocity           = 600, --should be 206 m/s or 460 mph
      texture2                = [[darksmoketrail]],
      tolerance               = 1000,
      tracks                  = true,
      turnRate                = 1000,
      turret                  = false,
      weaponAcceleration      = 34,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 618,  --460 mph, 206 meters per second
	  wobble                  = 200,	
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
      object           = [[corraid_dead.s3o]],
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

return lowerkeys({ jumpskirm = unitDef })
