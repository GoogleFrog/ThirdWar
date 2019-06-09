unitDef = {
  unitname               = [[cloakarty]],
  name                   = [[Mortar]],
  description            = [[Mortar Infantry]],
  acceleration           = 0.25,
  brakeRate              = 0.3,
  buildCostMetal         = 75,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  buildPic               = [[mortar.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[3]],
	idle_cloak = 1,
	selection_scale = 0.25,
  },

  explodeAs              = [[BIG_UNITEX]],
  transportSize       	 = 1,
  footprintX             = 3,
  footprintZ             = 3,
  transportSize       	 = 1,
  iconType               = [[kbotarty]],
  highTrajectory         = 1,
  idleAutoHeal           = 5,
  idleTime               = 5000,
  moveState           	 = 0,  
  leaveTracks            = false,
  maxDamage              = 50,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[KBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP TOOFAST]],
  objectName             = [[rifleman.s3o]],
  script                 = [[rifleman.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:THUDMUZZLE]],
      [[custom:THUDSHELLS]],
      [[custom:THUDDUST]],
    },

  },

  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 1500,
  upright                = true,

  weapons                = {

    {
      def                = [[M224_MORTAR]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT HOVER]],
    },

  },

  weaponDefs             = {

    M224_MORTAR = {
      name                    = [[M224 Mortar]],
      accuracy                = 500,
      areaOfEffect            = 64,
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
		light_camera_height = 1400,
		light_color = [[0.80 0.54 0.23]],
		light_radius = 200,
      },

      damage                  = {
        default = 75,
		infantry= 150,
        planes  = 75,
        subs    = 0,
      },

      edgeEffectiveness       = 0.1,
      explosionGenerator      = [[custom:MARY_SUE]],
	  --flightTime              = 8,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
	  myGravity               = 0.2,
      noSelfDamage            = false,
	  avoidFriendly           = true,
	  collideFriendly         = true,
      range                   = 3500 / Shared.RANGE_DIVISOR, --3500meters
	  tolerance               = 1150,
      reloadtime              = 3,
      soundHit                = [[explosion/mortarhit]],
	  soundHitVolume		  = 9,
      soundStart              = [[weapon/mortar1]],
	  soundStartVolume		  = 5,
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 480, --160 m/s
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

return lowerkeys({ cloakarty = unitDef })
