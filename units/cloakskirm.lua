unitDef = {
  unitname               = [[cloakskirm]],
  name                   = [[Rocket Infantry]],
  description            = [[Anti-Vehicle Infantry, costs 100m per shot]],
  acceleration           = 0.3,
  brakeRate              = 0.2,
  buildCostMetal         = 125,
  --energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  --metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  buildPic               = [[rocketman.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  cloakCost              = 0,
  collisionVolumeOffsets = [[0 1 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],

  customParams           = {

	--midposoffset   = [[0 6 0]],
	reload_move_penalty = 0.75,
	
	modelradius    = [[3]],
	idle_cloak = 1,
	selection_scale = 0.25,
	aimposoffset   = [[0 2 0]],
	
	--stockpilecount  = [[3]],
	--stockpiletime  = [[15]],
	--stockpilecost  = [[100]],
	--priority_misc  = 0,	
	
  },

  explodeAs              = [[BIG_UNITEX]],
  transportSize       	 = 1,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[kbotskirm]],
  fireState				 = 1,
  idleAutoHeal           = 5,
  idleTime               = 5000,
  leaveTracks            = false,
  maxDamage              = 50,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = 20,
  moveState           	 = 0,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB]],
  objectName             = [[rifleman.s3o]],
  script                 = [[rifleman.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:rockomuzzle]],
    },

  },

  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 18,
  turnRate               = 2200,
  upright                = true,

  weapons                = {

    {
      def                = [[SPIKE_MISSILE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    SPIKE_MISSILE = {
      name                    = [[FGM 148 Javelin]],
      areaOfEffect            = 24,
	  accuracy 		          = 8,
	  avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 5,

	  customParams        	  = {
		--isaa = [[1]],
		--script_reload = [[20]],
		--script_burst = [[3]],
		
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
      metalpershot            = 125, --costs $175,000 each
	  --stockpile               = true,
      --stockpileTime           = 15,	  
	  --stockpilecount  		  = 3,
      model                   = [[wep_m_ajax.s3o]],
      noSelfDamage            = false,
      predictBoost            = 1,
      range                   = 4750 / Shared.RANGE_DIVISOR, --new spike is 4750 but this is imbalanced?
      reloadtime              = 15,
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
  
    AT4 = {
      name                    = [[AT4]],
      areaOfEffect            = 48,
      burnblow                = true,
	  avoidFriendly           = true,
	  collideFriendly         = true,
      --cegTag                  = [[missiletrailredsmall]],
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
		light_camera_height = 1600,
		light_color = [[0.90 0.65 0.30]],
		light_radius = 0,
		reload_move_mod_time = 5,
      },

      damage                  = {
        default = 600,
        subs    = 9,
      },

      --fireStarter             = 70,
      flightTime              = 5,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      --model                   = [[wep_m_ajax.s3o]],
      noSelfDamage            = false,
      predictBoost            = 1,
      range                   = 300,
      reloadtime              = 6,
      smokeTrail              = false,
      soundHit                = [[explosion/ex_med5]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/cannon/cannon_fire1]],
      soundStartVolume        = 7,
      --startVelocity           = 350,
      --texture2                = [[darksmoketrail]],
      tracks                  = false,
      turret                  = false,
      --weaponAcceleration      = 200,
      weaponType              = [[Cannon]],
      weaponVelocity          = 150, --should be 100...
    },

  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
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
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ cloakskirm = unitDef })
