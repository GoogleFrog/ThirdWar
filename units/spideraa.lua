unitDef = {
  unitname               = [[spideraa]],
  name                   = [[Stinger]], --should be based off FIM92 stinger
  description            = [[Anti-Air Infantry]],
  acceleration           = 0.5,
  brakeRate              = 0.32,
  buildCostMetal         = 200, --weapon cost is $38,000
  buildPic               = [[cloakaa.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  --cloakCost              = 0.1,
  --cloakCostMoving        = 0.5,
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[4]],
	idle_cloak = 1,
	selection_scale = 0.5,
  },

  explodeAs              = [[BIG_UNITEX]],
  transportSize       	 = 1,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[kbotaa]],
  idleAutoHeal           = 5,
  idleTime               = 5000,
  initCloaked            = false,
  leaveTracks            = false,
  maxDamage              = 25,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = 22,
  minCloakDistance       = 140,
  movementClass          = [[KBOT2]],
  moveState              = 0,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SWIM FLOAT SUB HOVER DECOY]],
  objectName             = [[rifleman.s3o]],
  script                 = [[rifleman.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:NONE]],
      [[custom:NONE]],
    },

  },

  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 17,
  turnRate               = 2200,
  upright                = true,



  weapons                = {

    {
      def                = [[MISSILE]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[GUNSHIP FIXEDWING]],
    },

  },

  weaponDefs             = {

    MISSILE = {
      name                    = [[FIM92 Stinger]],
      areaOfEffect            = 8,
      canAttackGround         = false,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

      customParams            = {
        isaa = [[1]],
        script_reload = [[10]],        
        light_color = [[1.0 0.9 0.0]],
        light_radius = 380,
      },

      damage                  = {
        default = 200,
        planes  = 200,
        subs    = 0,
      },

	  metalpershot            = 4,
      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 4,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_m_phoenix.s3o]],
      noSelfDamage            = true,
      range                   = 8000 / Shared.RANGE_DIVISOR, --stinger has 8km range, should e 2400 but, buffer range for lock
      reloadtime              = 10,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/Stinger02]],
	  soundStartVolume        = 8,
      startVelocity           = 500, 
      texture2                = [[AAsmoketrail]],
      tolerance               = 9000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 8000,
      turret                  = true,
      weaponAcceleration      = 750,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 2500,  --750 m/s max mach 2.5
    },

  },

  featureDefs            = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[spherejeth_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ spideraa = unitDef })
