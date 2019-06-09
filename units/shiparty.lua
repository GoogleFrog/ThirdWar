unitDef = {
  unitname               = [[shiparty]],
  name                   = [[Envoy]],
  description            = [[Cruiser (Artillery)]],
  acceleration           = 0.00317,
  activateWhenBuilt      = true,
  brakeRate              = 0.142,
  buildCostMetal         = 5000,
  energyUse           	 = .50 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .50 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[shiparty.png]],
  canMove                = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 1 3]],
  collisionVolumeScales  = [[32 32 132]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {

    --extradrawrange = 200,
    modelradius    = [[55]],
    turnatfullspeed = [[1]],
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[shiparty]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 25,
  maxDamage              = 4000,
  maxVelocity            = 1.5,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT4]],
  moveState              = 0,
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP TOOFAST]],
  objectName             = [[shiparty.s3o]],
  script                 = [[shiparty.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 1000,
  sonarDistance          = 660,
  turninplace            = 0,
  turnRate               = 50,
  waterline              = 0,

  weapons                = {

    [1] = {
      def                = [[PLASMA]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP HOVER]],
    },
	
    [2] = {
      def                = [[DEPTH_CHARGE]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },	
	

  },

  weaponDefs             = {

    PLASMA = {
      name                    = [[Plasma Cannon]],
	  accuracy                = 120,
      areaOfEffect            = 96,
      avoidFeature            = false,
	  avoidGround             = false,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 500,
        planes  = 500,
        subs    = 30,
      },

      explosionGenerator      = [[custom:PLASMA_HIT_96]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
	  myGravity               = 0.1,
      projectiles             = 1,
      range                   = 20000 / Shared.RANGE_DIVISOR,
      reloadtime              = 5,
      soundHit                = [[weapon/cannon/cannon_hit2]],
      soundStart              = [[weapon/cannon/heavy_cannon]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000,
    },
	
    DEPTH_CHARGE = {
      name                    = [[Depth Charge]],
      areaOfEffect            = 290,
      avoidFriendly           = false,
      bounceSlip              = 0.94,
      bounceRebound           = 0.8,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 900.5,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:TORPEDOHITHUGE]],
      fixedLauncher           = true,
      flightTime              = 2.1,
      groundBounce            = true,
      heightMod               = 0,
      impulseBoost            = 0.4,
      impulseFactor           = 1,
      interceptedByShieldType = 2,
      model                   = [[depthcharge_big.s3o]],
      myGravity               = 0.2,
      noSelfDamage            = false,
      numbounce               = 3,
      predictBoost            = 0,
      range                   = 270,
      reloadtime              = 8,
      soundHitDry             = [[explosion/mini_nuke]],
      soundHitWet             = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/torp_land]],
      soundStartVolume        = 8,
      startVelocity           = 5,
      tolerance               = 1000000,
      tracks                  = true,
      turnRate                = 30000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 15,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 280,
    },	
	
  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[shiparty_dead.s3o]],
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

return lowerkeys({ shiparty = unitDef })
