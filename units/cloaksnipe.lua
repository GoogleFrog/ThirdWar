unitDef = {
  unitname               = [[cloaksnipe]],
  name                   = [[Sniper]],
  description            = [[Stealth Sniper]],
  acceleration           = 0.3,
  brakeRate              = 0.2,
  buildCostMetal         = 50,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  buildPic               = [[sniper.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  cloakCost              = 0.02,
  cloakCostMoving        = 0.02,
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[3]],
	idle_cloak = 1,
	selection_scale = 0.25,
	dontfireatradarcommand = '1',
  },

  decloakOnFire          = false,
  transportSize       	 = 1,
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[sniper]],
  idleAutoHeal           = 1,
  idleTime               = 5000,
  leaveTracks            = false,
  losEmitHeight          = 8,
  initCloaked            = true,
  maxDamage              = 10,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = -24, --should be less later but until we have ai and sea transports...
  moveState           	 = 0,
  fireState           	 = 1,
  minCloakDistance       = 60,
  movementClass       	 = [[TKBOT2]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP SUB WALL]],
  objectName             = [[sniper.s3o]],
  script                 = [[sniper.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:emg_shells_l]],
      [[custom:flashmuzzle1]],
	  
	  [[custom:blood_spray]],
	  [[custom:blood_explode]],
    },

  },

  sightDistance          = 1000,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 2200,
  upright                = true,

  weapons                = {

    {
      def                = [[SHOCKRIFLE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    SHOCKRIFLE = {
      name                    = [[Pulsed Particle Projector]],
      --areaOfEffect            = 0,
      colormap                = [[0 0 0.4 0   0 0 0.6 0.3   0 0 0.8 0.6   0 0 0.9 0.8   0 0 1 1   0 0 1 1]],
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        	  = {
		light_radius = 0,
	  },
	  
      damage                  = {		
        default = 100,
		infantry = 50,
		tanks   = 0.0,
		lightarmor   = 1.0,
        planes  = 100,
        subs    = 0,
      },

      explosionGenerator      = [[custom:FLASHPLOSION]],
      fireTolerance           = 512, -- 2.8 degrees
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 0,
      noSelfDamage            = true,
      range                   = 2000 / Shared.RANGE_DIVISOR, --2000 meters
      reloadtime              = 10,
      rgbColor                = [[1 0.2 0.2]],
      --separation              = 1.5,
      size                    = 1,
      sizeDecay               = 0,
      soundStart              = [[weapon/distant_gunshot2]],
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 340, --1050 m/s
    },

  },

  featureDefs            = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[rifleman_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ cloaksnipe = unitDef })
