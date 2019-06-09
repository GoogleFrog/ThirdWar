unitDef = {
  unitname            = [[dronecarry]],
  name                = [[F18 Hornet]],
  description         = [[Multi-Purpose Fighter]],
  brakerate              = 0.4,
  buildCostMetal         = 500, --carrier allows air units to an area cheaper
  buildPic               = [[f18.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[30 12 50]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 10]],
  selectionVolumeScales  = [[60 60 80]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.01,
  cruiseAlt              = 300,

  customParams           = {
    midposoffset   = [[0 3 0]],
    aimposoffset   = [[0 3 0]],
	modelradius    = [[10]],
	refuelturnradius = [[120]],

	selection_scale = 1.4,
  },

  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  --frontToSpeed           = 0.0,
  iconType               = [[f18]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[1280]],  
  maxBank             	 = 0.55,
  maxAcc                 = 0.6,
  maxDamage              = 400,  
  --maxRudder              = 0.006,
  maxFuel                = 100,
  maxVelocity            = 60,	--600 mph / 260 m/s for all dogfighting aircraft 500 knots is 9gs in a F16, 2.5x for speed boost
  minCloakDistance       = 150,
  mygravity              = 1,
  noChaseCategory        = [[TERRAFORM SUB FIXEDWING]],
  objectName             = [[f18.s3o]],
  script                 = [[f18.lua]],
  selfDestructAs         = [[GUNSHIPEX]],
  sightDistance          = 1000,
  --speedToFront           = 0.0,
  --turnRadius             = 10,
  --turnRate               = 2,
  --turninplace            = 0,

  weapons                = {

    {
      def                = [[M61_VULCAN]],      
      mainDir            = [[0 0 1]],
      maxAngleDif        = 30,
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER FIXEDWING]],
    },



    {
      def                = [[AIM9_MISSILE]],      
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER FIXEDWING]],
	  maxAngleDif        = 20,
    },	
	
  },


  weaponDefs             = {

    M61_VULCAN           = {
      name                    = [[M61 Vulcan]],
	  areaOfEffect            = 8,
      accuracy                = 384,
      alphaDecay              = 0.7,      
      canattackground         = true,
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
		ships    = 0,
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
      canattackground         = true,
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
      flightTime              = 5,
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

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[f18_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ dronecarry = unitDef })
