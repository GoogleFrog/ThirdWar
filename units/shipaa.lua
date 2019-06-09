unitDef = {
  unitname               = [[shipaa]],

  name                   = [[Anti-Air Frigate]],
  description            = [[Anti-Air Frigate]],
  acceleration           = 0.00498,
  activateWhenBuilt   = true,
  brakeRate              = 0.0808,

  buildCostMetal         = 2000,
  energyUse           	 = .20 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .20 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,

  buildPic               = [[shipaa.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 4 4]],
  collisionVolumeScales  = [[32 32 128]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[45]],
	turnatfullspeed = [[1]],
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[shipaa]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 40,
  maxDamage              = 2000,
  maxVelocity            = 2,
  minCloakDistance       = 75,
  minWaterDepth          = 5,
  movementClass          = [[BOAT4]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER]],
  objectName             = [[shipaa.s3o]],
  radarDistance          = 1000,
  script				 = [[shipaa.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 1000,
  sonarDistance          = 0,
  turninplace            = 0,
  turnRate               = 486,
  waterline              = 4,
  workerTime             = 0,

  weapons                = {

    [1] = {
      def                = [[AALASER]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

--problem in the script doesnt allow for 3 weapons...
--    [2] = {
--      def                = [[AALASER]],
--      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
--    },

	[2] = {
      def         = [[AMS]],      
    },	

  },


  weaponDefs             = {

    AALASER       = {
      name                    = [[Anti-Air Machinegun]],
      accuracy                = 50,
      areaOfEffect            = 8,
      canattackground         = false,
      collideFriendly         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
	  },

      damage                  = {
        default = 40,
        planes  = 40,
        subs    = 0,
      },

      duration                = 0.02,
      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      fireStarter             = 10,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      lodDistance             = 10000,
      predictBoost            = 1,
      proximityPriority       = 4,
      range                   = 3000 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.08,
      rgbColor                = [[1 0.95 0.4]],
      --soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/minigun]],
      soundTrigger            = true,
	  thickness               = 2,
      tolerance               = 1000,      
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1500,
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
      shieldAlpha             = 0.9,
      shieldBadColor          = [[0.1 0.1 0.1 1]],
      shieldGoodColor         = [[1.0 1.0 1 1]],
      shieldInterceptType     = 1,
      shieldPower             = 7000,
	  shieldStartingPower     = 2048,
      shieldPowerRegen        = 500,
      shieldPowerRegenEnergy  = 1,
      shieldRadius            = 500,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },	
	
	FRIGATE_MISSILE_LAU = {
      name                    = [[Homing Missiles]],
      areaOfEffect            = 8,
	  avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 5,

	  customParams        	  = {
		isaa = [[1]],
		script_reload = [[20]],
		script_burst = [[3]],
		
		light_camera_height = 2000,
		light_radius = 200,
	  },

      damage                  = {
        default = 300,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 3.5,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      metalpershot            = 0,
      model                   = [[hobbes.s3o]],
      noSelfDamage            = true,
      range                   = 1750,
      reloadtime              = 4,
      smokeTrail              = true,
      soundHit                = [[explosion/ex_small13]],
      soundStart              = [[weapon/missile/missile_fire11]],
      startVelocity           = 400,
      texture2                = [[lightsmoketrail]],
      tolerance               = 10000,
      tracks                  = true,
      turnRate                = 50,
      turret                  = true,
      weaponAcceleration      = 300,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 800,
    },
	

    BOGUS_MISSILE = {
      name                    = [[Missiles]],
      areaOfEffect            = 48,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 0,
      },

      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      metalpershot            = 0,
      range                   = 800,
      reloadtime              = 0.5,
      startVelocity           = 450,
      tolerance               = 9000,
      turnRate                = 33000,
      turret                  = true,
      weaponAcceleration      = 101,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2000,
    },


    FLAK          = {
      name                    = [[Flak Cannon]],
      accuracy                = 1000,
      areaOfEffect            = 64,
      burnblow                = true,
      canattackground         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 10,
        planes  = 100,
        subs    = 2.5,
      },

      edgeEffectiveness       = 0.85,
      explosionGenerator      = [[custom:FLAK_HIT_24]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 900,
      reloadtime              = 0.4,
      soundHit                = [[weapon/flak_hit]],
      soundStart              = [[weapon/flak_fire]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2000,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[shipaa_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shipaa = unitDef })
