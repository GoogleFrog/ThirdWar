unitDef = {
  unitname            = [[bomberprec]],
  name                   = [[A10 Thunderbolt]],
  description            = [[Close Air Support Ground Attacker]],
  brakerate              = 0.4,
  buildCostMetal         = 2000,
  energyUse           	 = 0.20 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = 0.20 * Shared.UPKEEP_MULTIPLIER,   
  buildPic               = [[bombera10.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[25 8 40]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 10]],
  selectionVolumeScales  = [[50 50 70]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.02,
  cruiseAlt              = 225,

  customParams           = {

	landflystate   = [[2]],
  
	specialreloadtime = [[600]],
	boost_speed_mult = 2,
	boost_accel_mult = 6,
	boost_duration = 30, -- frames

	fighter_pullup_dist = 400,

	midposoffset   = [[0 3 0]],
	modelradius    = [[5]],
	refuelturnradius = [[80]],
  },

  explodeAs              = [[SMALL_BUILDINGEX]],
  fireState              = 2,
  moveState           	 = 1,  
  retreatState           = 1,
  landflystate   		 = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  --frontToSpeed           = 0,
  iconType               = [[a10]],
  idleAutoHeal           = 0,
  idleTime               = 0,
  maneuverleashlength    = [[1280]],
  maxAcc                 = 0.55,
  maxDamage              = 500,
  --Fuel                	 = 100,
  maxfuel                = 100,
  maxBank            	 = 0.6,
  --maxRudder              = 0.007,
  maxVelocity            = 22,
  minCloakDistance       = 75,
  mygravity              = 1,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING]],
  objectName             = [[a10.s3o]],
  script                 = [[a10.lua]],
  selfDestructAs         = [[SMALL_BUILDINGEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:emg_shells_m]],	  
      [[custom:a10muzzle]],
      [[custom:flashmuzzle1]],
      [[custom:FLAMER]],	
	  
    },

  },
  sightDistance          = 1000,
  --speedToFront           = 0,
  --turnRadius             = 1,
  --turnRate               = 1,
  --turninplace            = 0,

  weapons                = {


    {
      def                = [[FIGHTER_EMG]],
      --badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 45,
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },



    {
      def                = [[MISSILE]],      
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
	  maxAngleDif        = 10,
    },

    {
      def                = [[BOMB]],      
      badTargetCategory  = [[GUNSHIP FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER SUB]],
	  maxAngleDif        = 25,
    },

  },


  weaponDefs             = {

    FIGHTER_EMG           = {
      name                    = [[30mm GAU]],
	  areaOfEffect            = 48,
      accuracy                = 512,
      alphaDecay              = 0.7,
      areaOfEffect            = 8,
      canattackground         = true,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[0]],
		
		light_camera_height = 1600,
		light_color = [[0.9 0.86 0.45]],
		light_radius = 0,
	  },

      damage                  = {
        default = 40,
        planes  = 40,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:EMG_HIT_HE]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.8,
      interceptedByShieldType = 2,
      predictBoost            = 1,
      proximityPriority       = 4,
      range                   = 1000,
      reloadtime              = 0.05,
	  projectiles             = 3,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/a10/fire1]],
	  soundStartVolume        = 4,
	  soundHit                = [[weapon/a10/impact]],
	  soundHitVolume     	  = 4,
      stages                  = 10,
      sweepfire               = false,
      tolerance               = 1500,
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2000, --1010 m/s  + aircraft speed?
    },



    MISSILE = {
      name                    = [[AGM-65 Maverick]],
      areaOfEffect            = 72,
      avoidFriendly           = false,
      canattackground         = true,
      cegTag                  = [[missiletrailyellow]],
      collideFriendly         = true,
      craterBoost             = 1,
      craterMult              = 2,
      cylinderTargeting       = 6,

	  customParams        	  = {
		isaa = [[0]],
		light_color = [[1.0 0.8 0.1]],
		light_radius = 150,
	  },

      damage                  = {
        default = 500, --57 kg (126 lb) 
        planes  = 500,
        subs    = 0,
      },

	  metalpershot            = 15,
      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
      fireStarter             = 70,
      flightTime              = 4,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,      
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 6600,
      reloadtime              = 5,
      smokeTrail              = true,      
      soundStart              = [[weapon/missile/missile_fire6]],
	  soundStartVolume        = 6,
	  soundHit                = [[weapon/missile/snd_explosion_fighter]],
	  --soundHitVolume          = 2,
      startVelocity           = 1020,
      texture2                = [[lightsmoketrail]],
      --tolerance               = 6600,
      tracks                  = true,
      turnRate                = 12000,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1340, --320 m/s
    },	

   BOMB = {
      name                    = [[MK82 Bomb]],
      areaOfEffect            = 128,
      avoidFeature            = false,
      avoidFriendly           = false,
      burnblow                = true,
      --cegTag                  = [[KBOTROCKETTRAIL]],
      collideFriendly         = false,
   
      craterBoost             = 1,
      craterMult              = 2,

      customParams            = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
        light_color = [[1.6 0.85 0.38]],
        light_radius = 750,
      },

      damage                  = {
        default = 800,
        planes  = 800,
        subs    = 800,
      },

	  metalpershot            = 1,
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:FLASHSMALLBUILDING]],
      fireStarter             = 100,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = -0.8,
      interceptedByShieldType = 2,
      model                   = [[wep_b_paveway.s3o]],
      range                   = 500,
      reloadtime              = 5,
      smokeTrail              = false,
      soundHit                = [[weapon/bomb_hit]],
      --soundStart              = [[weapon/bomb_drop]],
      soundStart              = [[weapon/missile/liche_fire]],
	  soundStartVolume		  = 2,
      startVelocity           = 620,
      tolerance               = 1000,
      tracks                  = true,
      turnRate                = 500,
      weaponAcceleration      = 200,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 660,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[a10_dead.s3o]],
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

return lowerkeys({ bomberprec = unitDef })
