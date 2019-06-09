unitDef = {
  unitname            = [[hoverriot]],
  name                   = [[Mace Gunner]],
  description            = [[Machinegun Infantry]],
  acceleration           = 0.25,
  brakeRate              = 0.2,
  buildCostMetal         = 50,
  buildPic               = [[gunner.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[4]],
	idle_cloak = 1,
	selection_scale = 0.5,
  },

  explodeAs              = [[SMALL_UNITEX]],
  transportSize       	 = 1,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[kbotriot]],
  idleAutoHeal           = 5,
  idleTime               = 5000,
  leaveTracks            = false,
  maxDamage              = 50,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = 22,
  moveState           	 = 0,
  minCloakDistance       = 75,
  movementClass          = [[KBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB WALL]],
  objectName             = [[rifleman.s3o]],
  script                 = [[rifleman.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:emg_shells_l]],
      [[custom:flashmuzzle1]],
	  
	  [[custom:blood_spray]],
	  [[custom:blood_explode]],
    },

  },

  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 20,
  turnRate               = 1800,
  upright                = true,

  weapons                = {

    {
      def                = [[WARRIOR_WEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    WARRIOR_WEAPON = {
      name                    = [[Heavy Pulse MG]],
      accuracy                = 128,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      burnblow                = true,
      --burst                   = 1,
      --burstrate               = 0.1,
      craterBoost             = 0.0,
      craterMult              = 0.0,

      customParams        = {
		light_camera_height = 1200,
		light_color = [[1.0 0.76 0.18]],
		light_radius = 0,
      },

      damage                  = {
        default = 14,
		buildings = 1,
		tanks   = 0.0,
		lightarmor   = 0.0,
        planes  = 4,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 250,
      reloadtime              = 0.08,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/distant_fire3]],
      stages                  = 10,
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --should be 300 1050 m/s
    },

  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      --featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      --object           = [[spherewarrior_dead.s3o]],
    },

    --HEAP  = {
--      blocking         = false,
      --footprintX       = 2,
      --footprintZ       = 2,
      --object           = [[debris3x3a.s3o]],
    --},

  },

}

return lowerkeys({ hoverriot = unitDef })
