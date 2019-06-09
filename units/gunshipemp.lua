unitDef = {
  unitname            = [[gunshipemp]],
  name                   = [[Fighter]],
  description            = [[Air Superiority Fighter]],
  brakerate              = 0.4,
  buildCostMetal         = 2000,
  buildPic               = [[f16.png]],
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
  cruiseAlt              = 280,

  customParams           = {

	specialreloadtime = [[600]],
	boost_speed_mult = 2,
	boost_accel_mult = 6,
	boost_duration = 30, -- frames

	fighter_pullup_dist = 400,

	midposoffset   = [[0 3 0]],
	modelradius    = [[5]],
	refuelturnradius = [[80]],
  },

  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  --frontToSpeed           = 0,
  iconType               = [[fighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[1280]],
  maxAcc                 = 0.55,
  maxDamage              = 350,
  maxFuel                = 10000,
  maxBank            	 = 0.6,
  --maxRudder              = 0.007,
  maxVelocity            = 60,
  minCloakDistance       = 150,
  mygravity              = 1,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SWIM FLOAT SUB HOVER]],
  objectName             = [[f16.s3o]],
  script                 = [[f16.lua]],
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:MUZZLE_ORANGE]],
      [[custom:FF_PUFF]],
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],
    },

  },
  sightDistance          = 1000,
  --speedToFront           = 0,
  --turnRadius             = 1,
  --turnRate               = 1,
  --turninplace            = 0,

  weapons                = {

    {
      def                = [[M61_VULCAN]],
      --badTargetCategory  = [[GUNSHIP]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 30,
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },



    {
      def                = [[AIM9_MISSILE]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	  maxAngleDif        = 20,
    },		
	
  },


  weaponDefs             = {

    M61_VULCAN           = {
      name                    = [[M61 Vulcan]],
	  areaOfEffect            = 8,
      accuracy                = 384,
      alphaDecay              = 0.7,      
      canattackground         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		
		light_camera_height = 1600,
		light_color = [[0.9 0.86 0.45]],
		light_radius = 0,
	  },

      damage                  = {
        default = 50,
        planes  = 50,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:ARCHPLOSION]],
	  fireTolerance           = 256, -- 1.4 degrees
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.8,
      interceptedByShieldType = 1,
      predictBoost            = 1,
      proximityPriority       = 4,
      range                   = 1000, --3km
      reloadtime              = 0.04,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/minigun]],
      stages                  = 10,
      sweepfire               = false,
      tolerance               = 2000,
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2850, --1050 m/s + aircraft speed
    },



    AIM9_MISSILE = {
      name                    = [[Guided Missiles]],
      areaOfEffect            = 24,
      avoidFriendly           = false,
      canattackground         = false,
      cegTag                  = [[missiletrailyellow]],
      collideFriendly         = true,
      craterBoost             = 1,
      craterMult              = 2,
      cylinderTargeting       = 2,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[0.5 0.6 0.6]],
	  },

      damage                  = {
        default = 500,
        planes  = 500,
        subs    = 0,
      },

	  metalpershot            = 9,
      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	  fireTolerance           = 256, -- 1.4 degrees
      fireStarter             = 70,
      flightTime              = 4,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,      
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 10000, --35.4km
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/snd_explosion_fighter]],
      soundStart              = [[weapon/missile/missile_fire6]],
      startVelocity           = 1800,
      texture2                = [[lightsmoketrail]],
      tolerance               = 10600,
      tracks                  = true,
      turnRate                = 7500,
      weaponAcceleration      = 3000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1957, --mach2.5 is 857 m/s
    },	
	
  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[f16.s3o]],
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

return lowerkeys({ gunshipemp = unitDef })
