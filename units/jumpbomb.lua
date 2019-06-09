unitDef = {
  unitname               = [[jumpbomb]],
  name                   = [[Mine]],
  description            = [[Anti-Vehicle Mine]],
  acceleration           = 0,
  brakeRate              = 0,
  buildCostMetal         = 50,
  builder                = false,
  buildPic               = [[jumpbomb.png]],
  canGuard               = true,
  canMove                = false,
  canPatrol              = true,
  category               = [[LAND]],
  cloakCost              = 0.01,
  cloakCostMoving        = 0.01,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[20 20 20]],
  collisionVolumeType    = [[ellipsoid]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[28 28 28]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    canjump          = 0,
    jump_range       = 0,
    jump_height      = 0,
    jump_speed       = 0,
    jump_reload      = 0,
    jump_from_midair = 0,
	aimposoffset   = [[0 2 0]],
	midposoffset   = [[0 2 0]],
	modelradius    = [[10]],
    selection_scale = 1, -- Maybe change later
	
	default_spacing = 10,
  },

  explodeAs              = [[jumpbomb_DEATH]],
  fireState              = 2,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[jumpjetbomb]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  leaveTracks            = false,
  initCloaked            = true,
  kamikaze               = true,
  kamikazeDistance       = 25,
  kamikazeUseLOS         = true,
  maneuverleashlength    = [[140]],
  maxDamage              = 40,
  maxSlope               = 36,
  maxVelocity            = 0,
  maxWaterDepth          = 500,
  minCloakDistance       = 10,
  movementClass          = [[SKBOT2]],
  noAutoFire             = false,
  noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName             = [[skuttle.s3o]],
  selfDestructAs         = [[jumpbomb_DEATH]],
  selfDestructCountdown  = 0,
  script                 = [[jumpbomb.lua]],
  sightDistance          = 0,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointy]],
  trackWidth             = 34,
  turnRate               = 2000,
  workerTime             = 0,
  yardMap                = [[o]],
  
  featureDefs            = {

    DEAD      = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[skuttle_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP      = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },
}

--------------------------------------------------------------------------------

local weaponDefs = {
  jumpbomb_DEATH = {
    areaOfEffect       = 192,
    craterBoost        = 4,
    craterMult         = 5,
    edgeEffectiveness  = 0.3,
    explosionGenerator = "custom:DOT_Pillager_Explo",
    explosionSpeed     = 10000,
    impulseBoost       = 0,
    impulseFactor      = 0.1,
    name               = "Explosion",
    soundHit           = "weapon/cannon/distant_explosion",
	
	customParams       = {
		burst = Shared.BURST_UNRELIABLE,

      lups_explodelife = 1.5,
	},
    damage = {
      default          = 5000,
	  tanks            = 5000,
    },
  },
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------
return lowerkeys({ jumpbomb = unitDef })
