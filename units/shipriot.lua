unitDef = {
  unitname               = [[shipriot]],
  name                   = [[Destroyer]], 
  description            = [[Destroyer]],--USS Thomas Hudner  or USS Bainbridge
  acceleration           = 0.00417,
  activateWhenBuilt      = true,
  brakeRate              = 0.142,
  buildCostMetal         = 6500, --650 million / 10
  energyUse           	 = .65 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .65 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[destroyer.png]],
  --canManualFire          = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  CollisionSphereScale   = 0.5,
  collisionVolumeOffsets = [[15 -15 0]],
  collisionVolumeScales  = [[120 120 270]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    turnatfullspeed = [[1]],
    --extradrawrange = 420,
    modelradius    = [[60]],	
	--stockpiletime  = [[60]],
	--stockpilecost  = [[1000]],
	priority_misc  = 1
  },

  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[shipriot]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 2000,
  maxVelocity            = 1.75,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE]],
  objectName             = [[destroyer.s3o]],
  script                 = [[shipriot.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],
  sightDistance          = 1000,
  
  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:RAIDDUST]],
    },

  },
  
  sonarDistance          = 600,
  turninplace            = 0,
  turnRate               = 55,
  waterline              = 0,
  workerTime             = 0,

  weapons                = {

    [1] = {
      def                = [[Mark45]], --5"/54 caliber Mark 45 gun
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },

    [2] = {
      def                = [[Mark45]], --5"/54 caliber Mark 45 gun
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },

	
	
	
  },


  weaponDefs             = {

    Mark45 = {
      name                    = [[5"/54 caliber Mark 45 gun]], --127mm
	  accuracy                = 96,
      areaOfEffect            = 16,
	  burst                   = 2,
      burstRate               = 0.667,
      craterBoost             = 0.1,
      craterMult              = 0.1,


      damage                  = {
        default = 900, --127mm        
        subs    = 0,
      },

	  duration                = 0.02,
      explosionGenerator      = [[custom:DEFAULT]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 24000 / Shared.RANGE_DIVISOR,
	  metalpershot            = 1,
	  --myGravity               = 1,
      reloadtime              = 3.333,
	  projectiles             = 1,
	  size                    = 1,
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/cannon/howitzer]],
	  soundStartVolume        = 8,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1500, --2500 fps of 1500 fps
    },  

    M242Mk38 = {
      name                    = [[M242 Mk 38]],
	  accuracy                = 32,
      areaOfEffect            = 16,
	  burst                   = 3,
      burstRate               = .25,
      craterBoost             = 0,
      craterMult              = 0,


      damage                  = {
        default = 100, --25×137 mm
        tanks   = 1,
		buildings  = 5,
		planes  = 250,
        ships    = 0,		
        subs    = 0,
      },

	  --duration                = 0.02,
      explosionGenerator      = [[custom:DEFAULT]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 3000 / Shared.RANGE_DIVISOR,
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
	
	TACNUKE        = {
      name                    = [[Tactical Nuke]],
      areaOfEffect            = 224,
      collideFriendly         = false,
      commandfire             = true,
      craterBoost             = 4,
      craterMult              = 3.5,           
	  cegTag                  = [[bigdisarmtrail]],


	  customParams        = {
        combatrange = 30000,
		light_color = [[1.35 0.8 0.36]],
		light_radius = 400,	
      },
	  
      damage                  = {
        default = 3000,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:NUKE_150]],
      fireStarter             = 0,
      flightTime              = 20,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_empmissile.s3o]],
      noSelfDamage            = true,
      range                   = 12000,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[explosion/mini_nuke]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      stockpile               = true,
      stockpileTime           = 10^5,
      tolerance               = 12000,
      turnrate                = 18000,
      waterWeapon             = false,
      weaponAcceleration      = 180,
      weaponTimer             = 4,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1200,
    }, 

    AMS = {
      name                    = [[Anti Missile System]],
      craterMult              = 0,
	  collideFriendly         = false,

      damage                  = {
        default = 10,
      },

      exteriorShield          = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      shieldAlpha             = 0.1,
      shieldBadColor          = [[0.1 0.1 0.1 0]],
      shieldGoodColor         = [[1.0 1.0 1 0]],
      shieldInterceptType     = 1,
      shieldPower             = 3500,
	  shieldStartingPower     = 2048,
      shieldPowerRegen        = 100,
      shieldPowerRegenEnergy  = 1,
      shieldRadius            = 500,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
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
		tanks   = 1.0,
        planes  = 30,
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
      range                   = 1200 / Shared.RANGE_DIVISOR, --1200m
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

    
  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[destroyer_dead.s3o]],
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

return lowerkeys({ shipriot = unitDef })
