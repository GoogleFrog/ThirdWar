unitDef = {
  unitname               = [[striderarty]],
  name                   = [[M270]],
  description            = [[Multiple Launch Rocket System]],
  acceleration           = 0.004,
  brakeRate              = 0.005,
  buildCostMetal         = 1000,
  energyUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[m270.png]],
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
	stockpiletime  = [[20]],
	stockpilecost  = [[100]],
	priority_misc  = 1, -- Low	
  },

  explodeAs              = [[LARGE_BUILDINGEX]],
  fireState              = 1,
  footprintX             = 4,
  footprintZ             = 4,
  highTrajectory      	 = 1,
  iconType               = [[t3arty]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 500,
  maxSlope               = 18,
  maxVelocity            = 2,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK4]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  --objectName          = [[cormart.s3o]],  
  objectName          	= [[m270.s3o]],
  --script		 		 = [[tankarty.cob]],   
  script		 		 = [[mlrs.cob]],
  selfDestructAs         = [[ATOMIC_BLASTSML]],
  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 20,
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
  


  },


  weaponDefs             = {


 
    ROCKET_SINGLE = {
      name                    = [[Long-Range Rocket Battery]],
	  accuracy                = 16,
      areaOfEffect            = 96,
	  avoidFeature            = false,
	  avoidGround             = false,
      --burst                   = 12,
      --burstrate               = 3, --was .1
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 1,
      craterMult              = 2,
	  commandfire             = false,
	  
	  customParams        	  = {
        reaim_time = 15, -- COB
		--light_camera_height = 2500,
		light_color = [[1.0 0.9 0.5]],
		light_radius = 800,
	  },
	  
      damage                  = {
        default = 800, --200lbs warhead M31
        planes  = 800,
        subs    = 0,
      },

      --metalpershot            = 160,  --An M30 costs $90,000
	  dance                   = 20,
      edgeEffectiveness       = 1.0,
      explosionGenerator      = [[SMALL_BUILDINGEX]], --[[custom:MEDMISSILE_EXPLOSION]]--
      fireStarter             = 100,
      --flightTime              = 48,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_m_frostshard.s3o]],
	  myGravity               = 0.1,
      noSelfDamage            = false,
      projectiles             = 1,
      range                   = 70000 / Shared.RANGE_DIVISOR,
      reloadtime              = 3.33, --240
      smokeTrail              = true,
	  texture2                = [[lightsmoketrail]],
      soundHit                = [[weapon/missile/rapid_rocket_hit]],
      soundHitVolume          = 5,
      soundStart              = [[weapon/missile/MLRSdistant05]],
      soundStartVolume        = 14,
      stockpile               = true,
      stockpileTime           = 20,	  
      startVelocity           = 580,
      tolerance               = 90000 / Shared.RANGE_DIVISOR,
      trajectoryHeight        = 1,
      turnRate                = 2500,
      turret                  = true,
	  tracks                  = true,
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
      burst                   = 12,
      burstrate               = 3, --was .1
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 1,
      craterMult              = 2,
	  commandfire             = true,
	  
	  customParams        	  = {
        reaim_time = 15, -- COB
		--light_camera_height = 2500,
		light_color = [[1.0 0.9 0.5]],
		light_radius = 800,
	  },
	  
      damage                  = {
        default = 800, --200lbs warhead M31
        planes  = 800,
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
      model                   = [[wep_m_frostshard.s3o]],
	  myGravity               = 0.1,
      noSelfDamage            = false,
      projectiles             = 1,
      range                   = 70000 / Shared.RANGE_DIVISOR,
      reloadtime              = 180, --240
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rapid_rocket_hit]],
      soundHitVolume          = 5,
      soundStart              = [[weapon/missile/MLRSdistant05]],
      soundStartVolume        = 14,
      stockpile               = true,
      stockpileTime           = 240,	  
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

	
	
  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[m270_dead.s3o]],
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

return lowerkeys({ striderarty = unitDef })
