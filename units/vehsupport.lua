unitDef = {
  unitname               = [[vehsupport]],
  name                   = [[Fencer]],
  description            = [[Deployable Missile Rover (must stop to fire)]],
  acceleration           = 0.0354,
  brakeRate              = 0.0358,
  buildCostMetal         = 150,
  energyUse           	 = .015 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .015 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[vehsupport.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 5 0]],
  collisionVolumeScales  = [[26 30 36]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[45 45 45]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[13]],
	chase_everything = [[1]], -- Does not get stupidtarget added to noChaseCats
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[vehiclesupport]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 200,
  maxSlope               = 18,
  maxVelocity            = 4,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[cormist_512.s3o]],
  script                 = [[vehsupport.lua]],
  pushResistant          = 0,
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],
    },

  },
  sightDistance          = 500,
  trackOffset            = -6,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 30,
  turninplace            = 0,
  turnRate               = 486,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[CORTRUCK_MISSILE]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    CORTRUCK_MISSILE = {
      name                    = [[Homing Missiles]],
      areaOfEffect            = 48,
      avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
		light_camera_height = 2000,
		light_radius = 200,
      },

      damage                  = {
        default = 200,
		infantry = 25,
        subs    = 2,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_frostshard.s3o]],
      range                   = 2700 / Shared.RANGE_DIVISOR,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med17]],
      soundStart              = [[weapon/missile/missile_fire11]],
      startVelocity           = 450,
      texture2                = [[lightsmoketrail]],
      tolerance               = 4000,
      tracks                  = false,
      turnRate                = 12000,
      turret                  = true,
      weaponAcceleration      = 250,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 780,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[cormist_dead_new.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ vehsupport = unitDef })
