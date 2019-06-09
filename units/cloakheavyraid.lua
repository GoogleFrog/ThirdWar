unitDef = {
  unitname               = [[cloakheavyraid]],
  name                   = [[Commando]],
  description            = [[Special Forces]],
  acceleration           = 0.5,
  brakeRate              = 0.3,
  buildCostMetal         = 200,
  energyUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,   
  buildPic               = [[commando.png]],
  canManualFire       	 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  cloakCost              = 0.1,
  cloakCostMoving        = 0.1,
  --corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[3]],
	idle_cloak = 1,
	selection_scale = 0.25,
  },

  decloakOnFire          = true,
  explodeAs              = [[SMALL_UNITEX]],
  transportSize       	 = 1,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[stealth]],
  idleAutoHeal           = 5,
  idleTime               = 5000,
  initCloaked            = true,
  leaveTracks            = false,
  maxDamage              = 50,
  maxSlope               = 42,
  maxVelocity            = 1.2,
  --maxWaterDepth          = -96, --they have sea gear
  minCloakDistance       = 60,
  movementClass          = [[KBOT2]],
  fireState              = 1,
  moveState              = 0,
  noChaseCategory        = [[TERRAFORM SUB WALL]],
  objectName             = [[commando.s3o]],
  script                 = [[commando.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:emg_shells_l]],
      [[custom:flashmuzzle1]],
    },

  },

  sightDistance          = 1000,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 18,
  turnRate               = 2200,
  upright                = true,

  weapons                = {


    {
      def                = [[DEPTHCHARGE]],
      badTargetCategory  = [[FIXEDWING SUB GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },
    
    {
      def                = [[FAKEGUN]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },

    {
      def                = [[FAKE_DEPTHCHARGE]],
      badTargetCategory  = [[FIXEDWING SUB GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },
  
    {
      def                = [[M4]],
      badTargetCategory  = [[FIXEDWING UNARMED]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
	
    {
      def                = [[SNIPE]],
      badTargetCategory  = [[FIXEDWING UNARMED]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },	

  },

  weaponDefs             = {

    DEPTHCHARGE = {
      name                    = [[Depth Charge]],
      areaOfEffect            = 280,
      avoidFriendly           = true,
      bounceSlip              = 0.94,
      bounceRebound           = 0.8,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
	  commandfire             = true,

      damage                  = {
        default = 5000.01,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:TORPEDOHITHUGE]],
      fixedLauncher           = true,
      flightTime              = 10,
      groundBounce            = false,
      heightMod               = 0,
      impulseBoost            = 0.4,
      impulseFactor           = 1,
      interceptedByShieldType = 2,
      model                   = [[depthcharge_big.s3o]],
      myGravity               = 0.2,
      noSelfDamage            = false,
      numbounce               = 1,
      predictBoost            = 1,
      range                   = 25,
      reloadtime              = 10,
      soundHitDry             = [[explosion/mini_nuke]],
      soundHitWet             = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/c4_plant]],
      soundStartVolume        = 1,
      startVelocity           = 0,
      tolerance               = 100,
	  size					  = 0.1,
      tracks                  = true,
      turnRate                = 30000,
      turret                  = true,
      waterWeapon             = false,
      --weaponAcceleration      = 150,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 0,
    },
    
    FAKE_DEPTHCHARGE = {
      name                    = [[Fake Depth Charge]],
      areaOfEffect            = 280,
      avoidFriendly           = true,
      bounceSlip              = 0.4,
      bounceRebound           = 0.4,
      canAttackGround         = true,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
	  commandfire             = true,

      damage                  = {
        default = 5000.01,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:TORPEDOHITHUGE]],
      fixedLauncher           = true,
      flightTime              = 10,
      groundBounce            = false,
      --heightMod               = 0,
      impulseBoost            = 0.4,
      impulseFactor           = 1,
      interceptedByShieldType = 2,
      model                   = [[depthcharge_big.s3o]],
      myGravity               = 0.2,
      noSelfDamage            = false,
      numbounce               = 1,
      predictBoost            = 1,
      range                   = 25,
      reloadtime              = 10,
      soundHitDry             = [[explosion/mini_nuke]],
      soundHitWet             = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/c4_plant]],
      soundStartVolume        = 1,
      tolerance               = 100,
	  startVelocity           = 0,
      tracks                  = false,
      turnRate                = 10000,
      turret                  = true,
      waterWeapon             = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 0,
    },
    
    FAKEGUN = {
      name                    = [[Fake Weapon]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1E-06,
        planes  = 1E-06,
        subs    = 5E-08,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      flightTime              = 10,
      impactOnly              = true,
      interceptedByShieldType = 2,
      range                   = 25,
      reloadtime              = 10,
      size                    = 1E-06,
      smokeTrail              = false,
      targetborder            = 1,
      
      textures                = {
        [[null]],
        [[null]],
        [[null]],
      },

      turnrate                = 10000,
      turret                  = true,
      waterWeapon             = false,
	  startVelocity           = 0,
      weaponAcceleration      = 0,
      weaponTimer             = 0.1,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 0,
    },  
  
     M4 = {
      name                    = [[Silenced SMG]],
      accuracy                = 128,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      burnblow                = true,
      --burst                   = 1,
      --burstrate               = 0.1,
      craterBoost             = 0.0,
      craterMult              = 0.0,

      customParams        = {
		light_camera_height = 1200,
		light_color = [[1.0 0.76 0.18]],
		light_radius = 0,
      },

      damage                  = {
        default = 14,
		buildings = 1,
		tanks   = 0.0,
		lightarmor   = 0.0,
		vehicle = 1,
        planes  = 14,
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
      range                   = 400 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.07,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/silencer/fire1]],
	  soundStartVolume		  = 0.5,
      stages                  = 10,
      turret                  = false,
	  size					  = 0,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --should be 300 1050 m/s
    },

     SNIPE = {
      name                    = [[Silenced Sniper]],
      accuracy                = 128,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      burnblow                = true,
      --burst                   = 1,
      --burstrate               = 0.1,
      craterBoost             = 0.0,
      craterMult              = 0.0,

      customParams        = {
		light_camera_height = 1200,
		light_color = [[1.0 0.76 0.18]],
		light_radius = 0,
      },

      damage                  = {
	    infantry = 200,
        default = 50,
		buildings = 50,
		tanks   = 0.0,
		lightarmor   = 0.0,
		vehicle = 1,
        planes  = 50,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.75,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 1250 / Shared.RANGE_DIVISOR,
      reloadtime              = 5.0,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/silencer/fire1B]],
	  soundStartVolume		  = 0.5,
      stages                  = 10,
      turret                  = false,
	  size					  = 0,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --should be 300 1050 m/s
    },	
	
  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[rifleman_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ cloakheavyraid = unitDef })
