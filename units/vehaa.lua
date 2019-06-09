unitDef = {
  unitname               = [[vehaa]],
  name                   = [[Avenger]],
  description            = [[Fast Anti-Air Rover]], --based off AN/TWQ-1 Avenger
  acceleration           = 0.05952,
  brakeRate              = 0.14875,
  buildCostMetal         = 300,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[vehaa.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[18 20 40]],
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[9]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[vehicleaa]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maneuverleashlength    = [[30]],
  maxDamage              = 750,
  maxSlope               = 18,
  maxVelocity            = 4,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER]],
  objectName             = [[vehaa.s3o]],
  script                 = [[vehaa.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  
  sfxtypes               = {

  explosiongenerators = {
      [[custom:STORMMUZZLE]],
      [[custom:STORMBACK]],
    },

  },
  sightDistance          = 500,
  trackOffset            = 6,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 32,
  turninplace            = 0,
  turnRate               = 653,
  upright                = false,
  workerTime             = 0,

  weapons                       = {

    {
      def                = [[STINGER]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	  maxAngleDif        = 45,
    },

  },


  weaponDefs                    = {

    STINGER = {
      name                    = [[Quad FIM 92 Stinger]],
      areaOfEffect            = 8,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[1.0 0.9 0.0]],
		light_radius = 380,
		script_burst = [[4]],
		script_reload = [[5]],
	  },

      damage                  = {
        default = 200,
        planes  = 200,
        subs    = 0,
      },

	  metalpershot            = 4,
      explosionGenerator      = [[custom:FLASH2]],
      fixedlauncher           = true,
      fireStarter             = 70,
      flightTime              = 4,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_m_phoenix.s3o]],
      noSelfDamage            = true,
      range                   = 8000 / Shared.RANGE_DIVISOR,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/sabot_hit]],
      soundStart              = [[weapon/missile/missile_fire]],
      startVelocity           = 250,
      texture2                = [[AAsmoketrail]],
      tolerance               = 9000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 9000,
      turret                  = true,
      weaponAcceleration      = 750,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1900,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[32 40 52]],
      collisionVolumeType    = [[box]],      
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[vehaa_dead.s3o]],
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

return lowerkeys({ vehaa = unitDef })
