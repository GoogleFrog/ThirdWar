unitDef = {
  unitname               = [[tankaa]],
  name                   = [[VADS]],
  description            = [[ZSU23 Anti-Missile/Air Gun]], --M163 VADS Anti-Missile/Air Gun
  acceleration        	 = 0.0021,
  brakeRate           	 = 0.0052,
  buildCostMetal         = 500,
  builder                = false,
  buildPic               = [[zsu23.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[38 52 38]],
  collisionVolumeType    = [[cylY]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[19]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[tankaa]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  --maneuverleashlength    = [[30]],
  maxDamage              = 750,
  maxSlope               = 18,
  maxVelocity            = 1.75,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER WALL]],
  objectName             = [[ZSU23.s3o]],
  script                 = [[ZSU23.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  
  sfxtypes               = {

  explosiongenerators = {
      [[custom:brawlermuzzle]],
	  [[custom:ZSUmuzzle]],
	  [[custom:emg_shells_m]],
    },

  },
  sightDistance          = 500,
  radarDistance       	 = 1400,  
  radarEmitHeight	  	 = 32,
  sonarDistance       	 = 0,   
  trackOffset            = 6,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 25,
  turninplace            = 0,
  turnRate               = 420,
  upright                = false,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[M6120mm]],      
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
      mainDir            = [[0 1 0]],
      maxAngleDif        = 240,
    },
	
	{
      def         = [[AMS]],
      maxAngleDif = 1,
    },	
    {
      def                = [[SQUISH]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,	  
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER TOOFAST]],
    },	
	
  },


  weaponDefs             = {

    M6120mm = {
      name                    = [[23mm 2A7 autocannons ]],
      accuracy                = 192,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      avoidFeature            = false,
      burnblow                = true,
      craterBoost             = 0.0,
      craterMult              = 0.0,
	  --canattackground         = false,
	  cylinderTargeting       = 1,

	  customparams = {
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
		proximity_priority = 5, -- Don't use this unless required as it causes O(N^2) separation checks per slow update.
		isaa = [[1]],
	  },

      damage                  = {
        default = 50,
		tanks   = 0.0,
		lightarmor   = 10.0,
		buildings = 5,
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.8,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 2500 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.08,	--1550 round drum
	  tolerance               = 3500 / Shared.RANGE_DIVISOR,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/ZSUsingle]],
	  soundStartVolume        = 9,
	  --projectiles             = 4,
	  size 					  = 0,
	  --soundTrigger            = true,
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --284
    },
	
    AMS = {
      name                    = [[Anti Missile System]],
      craterMult              = 0,
	  collideFriendly         = false,

      damage                  = {
        default = 3000,
      },

      exteriorShield          = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      shieldAlpha             = 0.0,
      shieldBadColor          = [[0.1 0.1 0.1 0]],
      shieldGoodColor         = [[1.0 1.0 1 0]],
      shieldInterceptType     = 1,
      shieldPower             = 3000,
	  shieldStartingPower     = 3000,
      shieldPowerRegen        = 50,
      shieldPowerRegenEnergy  = 0,
      shieldRadius            = 300,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
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
      object           = [[ZSU23_dead.s3o]],
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

return lowerkeys({ tankaa = unitDef })
