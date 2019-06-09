unitDef = {
  unitname            = [[veharty]],
  name                = [[BM21]],
  description            = [[Multiple Launch Rocket System]],
  acceleration           = 0.004,
  brakeRate              = 0.005,
  buildCostMetal         = 750,
  energyUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[bm21.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canManualFire       	 = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[65 65 65]],
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[16]],	
	selection_scale = 0.5,    
	stockpiletime  = [[300]],
	stockpilecost  = [[80]],
	priority_misc  = 0, -- Low	
  },

  explodeAs              = [[LARGE_BUILDINGEX]],
  fireState              = 2,
  footprintX             = 4,
  footprintZ             = 4,
  highTrajectory      	 = 1,
  iconType               = [[t3arty]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 300,
  maxSlope               = 18,
  maxVelocity            = 2.25,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK4]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  --objectName          = [[cormart.s3o]],  
  objectName          	= [[bm21.s3o]],
  --script		 		 = [[tankarty.cob]],   
  script		 		 = [[bm21.cob]],
  selfDestructAs         = [[ATOMIC_BLASTSML]],
  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 16,
  turnRate               = 200,
  upright                = true,
  workerTime             = 0,

  sfxtypes            = {

    explosiongenerators = {
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],	  
    },

  },  
  
  weapons                = {

  
    {
      def                = [[ROCKET_SINGLE]],
	  badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP]],
    },
  
    {
      def                = [[ROCKET_BURST]],
	  badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP]],
    },

  },


  weaponDefs             = {


 

    ROCKET_SINGLE = {
      name                    = [[Long-Range Rocket Battery]],
	  accuracy                = 768,
      areaOfEffect            = 96,
	  avoidFeature            = false,
	  avoidGround             = false,
      --burst                   = 12,
      --burstrate               = 3, --was .1
      cegTag                  = [[RAVENTRAIL]],
      craterBoost             = 1,
      craterMult              = 2,
	  commandfire             = false,
	  
	  customParams        	  = {
        reaim_time = 15, -- COB
		--light_camera_height = 2500,
		light_color = [[1.0 0.9 0.5]],
		light_radius = 600,
	  },
	  
      damage                  = {
        default = 125, --40 to 50 lbs warhead 9M522
		infantry = 200,
        planes  = 125,
        subs    = 0,
      },

      metalpershot            = 2,  --An M30 costs $90,000
	  dance                   = 20,
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[SMALL_BUILDINGEX]], --[[custom:MEDMISSILE_EXPLOSION]]--
      fireStarter             = 100,
      --flightTime              = 48,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[hobbes.s3o]],
	  myGravity               = 0.1,
      noSelfDamage            = false,
      projectiles             = 1,
      range                   = 27500 / Shared.RANGE_DIVISOR,
      reloadtime              = 15, --240
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rapid_rocket_hit]],
      soundHitVolume          = 5,
      soundStart              = [[weapon/missile/MLRSdistant05]],
      soundStartVolume        = 14,
      stockpile               = false,      
      startVelocity           = 580,
      tolerance               = 90000 / Shared.RANGE_DIVISOR,
      trajectoryHeight        = 1,
      turnRate                = 2500,
      turret                  = true,
	  tracks                  = false,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1000, --mach 2.5
      wobble                  = 4000,
    },
	

  
   ROCKET_BURST = {
      name                    = [[Long-Range Rocket Battery]],
	  accuracy                = 768,
      areaOfEffect            = 96,
	  avoidFeature            = false,
	  avoidGround             = false,
      burst                   = 40,
      burstrate               = 0.15,  --has option for .5 second interval or all rockets in 6 seconds
      cegTag                  = [[RAVENTRAIL]],
      craterBoost             = 1,
      craterMult              = 2,
	  commandfire             = true,
	  
	  customParams        	  = {
        reaim_time = 15, -- COB
		--light_camera_height = 2500,
		light_color = [[1.0 0.9 0.5]],
		light_radius = 600,
	  },
	  
      damage                  = {
        default = 125, --40 to 50 lbs warhead 9M522
		infantry = 200,
        planes  = 125,
        subs    = 0,
      },

      --metalpershot            = 160,  --An M30 costs $90,000
	  dance                   = 20,
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[SMALL_BUILDINGEX]], --[[custom:MEDMISSILE_EXPLOSION]]--
      fireStarter             = 100,
      --flightTime              = 48,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[hobbes.s3o]],
	  myGravity               = 0.1,
      noSelfDamage            = false,
      projectiles             = 1,
      range                   = 27500 / Shared.RANGE_DIVISOR,
      reloadtime              = 300,
      smokeTrail              = true,	        
	  texture2                = [[lightsmoketrail]],
      soundHit                = [[weapon/missile/rapid_rocket_hit]],
      soundHitVolume          = 5,
      soundStart              = [[weapon/missile/MLRSdistant05]],
      soundStartVolume        = 14,
      stockpile               = true,
      stockpileTime           = 240,	  
      startVelocity           = 580,
      tolerance               = 40000 / Shared.RANGE_DIVISOR,
      trajectoryHeight        = 1,
      turnRate                = 2500,
      turret                  = true,
	  tracks                  = false,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1000, --mach 2.5
      wobble                  = 4000,
    },
	
  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[bm21_dead.s3o]],
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

return lowerkeys({ veharty = unitDef })
