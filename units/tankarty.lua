unitDef = {
  unitname            = [[tankarty]],
  name                = [[M107 SPG]],
  description         = [[Self-Propelled Artillery]],
  acceleration        = 0.0018,
  brakeRate           = 0.036,
  buildCostMetal      = 500, --actual cost is $160,000 but that is way too cheap
  builder             = false,
  buildPic            = [[m107.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[42 42 42]],
  selectionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[tankarty]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  leaveTracks         = true,
  highTrajectory      = 0,  
  maxDamage           = 500,
  maxSlope            = 18,
  maxVelocity         = 2.15,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  fireState           = 1,
  moveState           = 0,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName          = [[m107.s3o]],
  script		      = [[m107.cob]],    
  pushResistant       = 0,
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 500,
  trackOffset         = 8,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 26,
  turninplace         = 0,
  turnRate            = 400,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[M107_175MM]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs          = {

    M107_175MM = {
      name                    = [[175mm Cannon]],
      accuracy                = 10,
      areaOfEffect            = 112,
	  avoidFeature            = false,
	  avoidGround             = false,
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
        default = 1000,        
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
      range                   = 30000 / Shared.RANGE_DIVISOR, --10,600m
      reloadtime              = 60,
      soundHit                = [[weapon/cannon/distant_explosion]],
	  soundHitVolume		  = 6,
      soundStart              = [[weapon/cannons/M107]],
	  soundStartVolume		  = 6,
      turret                  = true,
      weaponType              = [[Cannon]],
      --startVelocity           = 130,
	  --weaponAcceleration      = -60,	  
      weaponVelocity          = 1024,--480 m/s, was 720
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[m107_dead.s3o]],
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

return lowerkeys({ tankarty = unitDef })
