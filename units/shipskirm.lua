unitDef = {
  unitname               = [[shipskirm]],
  name                   = [[Patrol Boat]],
  description            = [[PT boat]],
  acceleration           = 0.0039,
  activateWhenBuilt      = true,
  brakeRate              = 0.115,
  buildCostMetal         = 250, --25 million / 10
  energyUse           	 = .025 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .025 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[pbr.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 2 0]],
  collisionVolumeScales  = [[24 24 60]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	turnatfullspeed = [[1]],
    modelradius     = [[24]],
  },


  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[shipskirm]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 30,
  maxDamage              = 500,
  maxVelocity            = 2.3,
  minCloakDistance       = 350,
  minWaterDepth          = 10,
  movementClass          = [[BOAT3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[shipskirm.s3o]],
  script		         = [[shipskirm.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],
  sfxtypes               = {

    explosiongenerators = {
      [[custom:MISSILE_EXPLOSION]],
      [[custom:MEDMISSILE_EXPLOSION]],
    },

  },

  sightDistance          = 1000,
  sonarDistance          = 720,
  turninplace            = 0,
  turnRate               = 100,
  waterline              = 4,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[M242Mk38]], --2x M242 Mk 38 Mod 2
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER GUNSHIP]],
    },
	
    {
      def                = [[STINGER]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	  maxAngleDif        = 30,
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

    STINGER = {
      name                    = [[Quad FIM 92 Stinger]],
      areaOfEffect            = 8,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[1.0 0.9 0.0]],
		light_radius = 380,
		script_burst = [[6]],
		script_reload = [[5]],
	  },

      damage                  = {
        default = 200,
        planes  = 200,
        subs    = 0,
      },

	  metalpershot            = 4,
      explosionGenerator      = [[custom:FLASH2]],
      fixedlauncher           = true,
      fireStarter             = 70,
      flightTime              = 4,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_m_phoenix.s3o]],
      noSelfDamage            = true,
      range                   = 8000 / Shared.RANGE_DIVISOR,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/sabot_hit]],
      soundStart              = [[weapon/missile/missile_fire]],
      startVelocity           = 250,
      texture2                = [[AAsmoketrail]],
      tolerance               = 9000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 9000,
      turret                  = true,
      weaponAcceleration      = 750,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1900,
    },
	
     ROCKET = {
      name                    = [[Unguided Rocket]],
      areaOfEffect            = 75,
	  burst                   = 4,
	  burstRate               = 0.3,
      cegTag                  = [[missiletrailred]],
      craterBoost             = 1,
      craterMult              = 2,

      customParams        = {
		light_camera_height = 1800,
      },
	  
      damage                  = {
        default = 800,
        planes  = 800,
        subs    = 0,
      },

      metalpershot            = 12,
	  fireStarter             = 70,
      flightTime              = 8,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_hailstorm.s3o]],
      noSelfDamage            = true,
      predictBoost            = 1,
      range                   = 10000,
	  myGravity               = 0.04,
      reloadtime              = 10.0,
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med4]],
      soundHitVolume          = 4,
      soundStart              = [[weapon/missile/missile2_fire_bass]],
      soundStartVolume        = 4,
      startVelocity           = 580,
      texture2                = [[darksmoketrail]],
      tracks                  = false,
      trajectoryHeight        = 0.6,
      turnrate                = 1000,
      turret                  = true,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 857,
	  wobble                  = 3000,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[shipskirm_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shipskirm = unitDef })
