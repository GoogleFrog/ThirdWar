unitDef = {
  unitname               = [[shipheavyarty]],
  name                   = [[Battleship]],
  description            = [[Battleship (Heavy Artillery)]],
  acceleration           = 0.0029,
  activateWhenBuilt   = true,
  brakeRate              = 0.0475,
  buildCostMetal         = 10000,
  energyUse           	 = 1.0 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = 1.0 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[shipheavyarty.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  cantBeTransported      = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 5 0]],
  collisionVolumeScales  = [[45 45 260]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    modelradius    = [[80]],
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 10,
  footprintZ             = 10,
  highTrajectory         = 2,
  iconType               = [[shipheavyarty]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 10000,
  maxVelocity            = 2.2,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[BOAT10]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName             = [[shipheavyarty.s3o]],
  script                 = [[shipheavyarty.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:xamelimpact]],
      [[custom:ROACHPLOSION]],
      [[custom:shellshockflash]],
    },

  },
  sightDistance          = 1000,
  sonarDistance          = 660,
  turninplace            = 0,
  turnRate               = 50,
  waterLine              = 4,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[PLASMA]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 330,
	  --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },


    {
      def                = [[PLASMA]],
      mainDir            = [[0 0 -1]],
      maxAngleDif        = 330,
	  --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },


    {
      def                = [[PLASMA]],
      mainDir            = [[0 0 -1]],
      maxAngleDif        = 330,
	  --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs             = {

    PLASMA = {
      name                    = [[16"/50 caliber Mark 7 gun]],
      areaOfEffect            = 96,
      avoidFeature            = false,
	  avoidGround             = false,
      burst                   = 3,
      burstrate               = 0.2,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 2000,        
        subs    = 0,
      },

      explosionGenerator      = [[custom:PLASMA_HIT_96]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      projectiles             = 1,
      metalpershot            = 1,	  
      range                   = 40000 / Shared.RANGE_DIVISOR, --39km
	  myGravity               = 0.1,
      reloadtime              = 30, --2 rounds per minute
      soundHit                = [[weapon/cannon/distant_explosion]],
	  soundHitVolume		  = 1.0,
      soundStart              = [[weapon/cannons/BigB]],
	  soundStartVolume		  = 6,
      sprayAngle              = 768,
      tolerance               = 41000 / Shared.RANGE_DIVISOR,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 640,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[shipheavyarty_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 7,
      footprintZ       = 7,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shipheavyarty = unitDef })
