unitDef = {
  unitname               = [[howitzer]],
  name                   = [[Howitzer]],
  description            = [[Infantry operated Artillery]],
  acceleration       	 = 0.0018,  --m1 abrams 0 to 20 mph in 7 seconds
  brakeRate           	 = 0.0048,
  buildCostMetal         = 200,
  energyUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[howitzer.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND INFANTRY]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[34 34 50]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[14]],
	selection_scale = 0.5,
  },

  explodeAs              = [[BIG_UNIT]],
  fireState           	 = 2,
  footprintX             = 4,
  footprintZ             = 4,
  highTrajectory         = 0,
  transportSize       	 = 1,
  iconType               = [[kbotarty]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 50,
  maxSlope               = 28,
  maxVelocity            = 0.5,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK4]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName             = [[howitzer.s3o]],
  script	      	  	 = [[howitzer.lua]],
  selfDestructAs         = [[BIG_UNIT]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],      
      [[custom:flashmuzzle1]],      
	  [[custom:brawlermuzzle]],
      [[custom:emg_shells_l]],	

    },

  },
  sightDistance          = 500,
  trackOffset            = 8,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 22,
  turninplace            = 0,
  turnRate               = 312,
  workerTime             = 0,

  weapons                = {

  
    [1] = {
      def                = [[K9_155MM]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },


  },


  weaponDefs             = {

    K9_155MM = {
      name                    = [[155mm Cannon]],
      accuracy                = 10,
      areaOfEffect            = 96,
	  avoidFeature            = false,
	  avoidGround             = true,
      craterBoost             = 1,
      craterMult              = 2,
      noSelfDamage            = true,
	  avoidFriendly           = true,
	  collideFriendly         = true,	  

      customParams            = {
        reaim_time = 15, -- COB
		light_color = [[1.4 0.8 0.3]],
      },

      damage                  = {
        default = 300,        
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
	  explosionGenerator      = [[custom:DOT_Pillager_Explo]],	  
      impulseBoost            = 0,
      impulseFactor           = 0.4,
	  --flightTime              = 9,
      interceptedByShieldType = 2,
	  myGravity               = 0.3,
      noSelfDamage            = true,
      range                   = 24000 / Shared.RANGE_DIVISOR, --10,600m
      reloadtime              = 30,
      soundHit                = [[weapon/cannon/distant_explosion]],
	  soundHitVolume		  = 2,
      soundStart              = [[weapon/cannon/cannon_fire8]],
	  soundStartVolume		  = 3,
      turret                  = true,
      weaponType              = [[Cannon]],
      --startVelocity           = 130,
	  --weaponAcceleration      = -60,	  
      weaponVelocity          = 1024,--480 m/s
    },  



  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[k9_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ howitzer = unitDef })
