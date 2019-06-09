unitDef = {
  unitname               = [[shipassault]],
  name                   = [[Cruiser]],
  description            = [[Ticonderoga]],
  acceleration           = 0.00568,
  activateWhenBuilt      = true,
  brakeRate              = 0.042,
  buildCostMetal         = 10000,
  energyUse           	 = 1.0 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = 1.0 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[shipassault.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 6 5]],
  collisionVolumeScales  = [[55 55 130]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],
  --Core_color.dds Core_other.dds
  customParams           = {
    modelradius    = [[55]],
	turnatfullspeed = [[1]],
	extradrawrange = 800,
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[shipassault]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 25,
  maxDamage              = 4000,
  maxVelocity            = 2.0,
  minCloakDistance       = 75,
  minWaterDepth          = 5,
  movementClass          = [[BOAT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB SINK TURRET]],
  objectName             = [[shipassault.s3o]],
  script				 = [[shipassault.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:emg_shells_l]],
      [[custom:RAIDMUZZLE]],
      [[custom:LEVLRMUZZLE]],
      [[custom:RIOT_SHELL_L]],	  
    },

  },

  sightDistance          = 1000,
  sonarDistance          = 430,
  turninplace            = 0,
  turnRate               = 75,
  workerTime             = 0,

  weapons                = {

    [1] = {
      def                = [[Mark45]], --5"/54 caliber Mark 45 gun
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },

    [2] = {
      def                = [[MISSILE]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },
	
    [3] = {
      def                = [[MACHINEGUN]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },	

  },


  weaponDefs             = {
  
    Mark45 = {
      name                    = [[5"/54 caliber Mark 45 gun]], --127mm
	  accuracy                = 96,
      areaOfEffect            = 16,
	  --burst                   = 2,
      --burstRate               = 0.333,
      craterBoost             = 0.1,
      craterMult              = 0.1,


      damage                  = {
        default = 550, --127mm
        planes  = 550,
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
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/cannon/cannon_fire5]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1500, --2500 fps of 1500 fps
    },  
	
	
    MISSILE      = {
      name                    = [[Destroyer Missiles]],
      areaOfEffect            = 48,
      cegTag                  = [[missiletrailyellow]],
	  collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 1500,
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
      fireStarter             = 100,
	  fixedLauncher			  = true,	  
      flightTime              = 40,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_m_hailstorm.s3o]],
      noSelfDamage            = true,
      range                   = 40000 / Shared.RANGE_DIVISOR,
      reloadtime              = 16,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/missile_fire12]],
      soundStart              = [[weapon/missile/missile_fire10]],
      startVelocity			  = 100,
      tolerance               = 40000 / Shared.RANGE_DIVISOR,
	  turnrate				  = 30000,
	  tracks                  = true,
	  turret				  = true,	  
	  --waterWeapon			  = true,
      weaponAcceleration      = 300,
      weaponTimer             = 1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 3600,
    },

    MACHINEGUN = {
      name                    = [[Heavy Pulse MG]],
      accuracy                = 100,
      alphaDecay              = 0.7,
      areaOfEffect            = 96,
      burnblow                = true,
      burst                   = 3,
      burstrate               = 0.1,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customParams        = {
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 150,
      },

      damage                  = {
        default = 30,
        planes  = 5,
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
      range                   = 1200 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.2 + 2/30,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/distant_fire3]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000,
    },



  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[shipassault_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shipassault = unitDef })
