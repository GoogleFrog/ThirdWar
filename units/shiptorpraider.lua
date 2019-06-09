unitDef = {

  unitname            = [[shiptorpraider]],
  name                = [[Hunter]],
  description         = [[Depth Charge Boat]],
  acceleration        = 0.0028,
  activateWhenBuilt   = true,
  brakeRate           = 0.013,
  buildCostMetal      = 500,
  energyUse           = 0.05 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = 0.05 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[shiptorpraider.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[SHIP]],
  collisionVolumeOffsets = [[0 -1 0]],
  collisionVolumeScales  = [[20 20 40]],
  collisionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {
	modelradius    = [[14]],
	turnatfullspeed = [[1]],
  },


  explodeAs           = [[SMALL_UNITEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[shiptorpraider]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  maxDamage           = 500,
  maxVelocity         = 3,
  minCloakDistance    = 75,
  minWaterDepth       = 5,
  movementClass       = [[BOAT3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE HOVER]],
  objectName          = [[SHIPTORPRAIDER]],
  script              = [[shiptorpraider.lua]],
  selfDestructAs      = [[SMALL_UNITEX]],
  sightDistance       = 1000,
  sonarDistance       = 500,
  turnRate            = 100,
  waterline           = 0,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[DEPTHCHARGE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },
    
    {
      def                = [[FAKEGUN]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },

    {
      def                = [[FAKE_DEPTHCHARGE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },
  },


  weaponDefs          = {

     DEPTHCHARGE = {
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
      numbounce               = 0,
      predictBoost            = 1,
      range                   = 300,
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
    
    FAKE_DEPTHCHARGE = {
      name                    = [[Fake Depth Charge]],
      areaOfEffect            = 290,
      avoidFriendly           = false,
      bounceSlip              = 0.4,
      bounceRebound           = 0.4,
      canAttackGround         = false,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 900.5,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:TORPEDOHITHUGE]],
      fixedLauncher           = true,
      flightTime              = 4,
      groundBounce            = true,
      heightMod               = 0,
      impulseBoost            = 0.4,
      impulseFactor           = 1,
      interceptedByShieldType = 2,
      model                   = [[depthcharge_big.s3o]],
      myGravity               = 0.2,
      noSelfDamage            = false,
      numbounce               = 1,
      predictBoost            = 0,
      range                   = 270,
      reloadtime              = 8,
      soundHitDry             = [[explosion/mini_nuke]],
      soundHitWet             = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/torp_land]],
      soundStartVolume        = 8,
      tolerance               = 1000000,
      tracks                  = false,
      turnRate                = 0,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 5,
    },
    
    FAKEGUN = {
      name                    = [[Fake Weapon]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1E-06,
        planes  = 1E-06,
        subs    = 5E-08,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      flightTime              = 1,
      impactOnly              = true,
      interceptedByShieldType = 2,
      range                   = 75,
      reloadtime              = 8,
      size                    = 1E-06,
      smokeTrail              = false,
      targetborder            = 1,
      
      textures                = {
        [[null]],
        [[null]],
        [[null]],
      },

      turnrate                = 10000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 200,
      weaponTimer             = 0.1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 200,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[shiptorpraider_dead.s3o]],
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


return lowerkeys({ shiptorpraider = unitDef })
