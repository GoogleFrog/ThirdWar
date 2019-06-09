unitDef = {
  unitname               = [[shieldbomb]],
  name                   = [[Claymore]],
  description            = [[Anti-Personel Mine]],
  acceleration           = 0,
  activateWhenBuilt      = true,
  brakeRate              = 0,
  buildCostMetal         = 1,
  buildPic               = [[shieldbomb.png]],
  canGuard               = true,
  canMove                = false,
  canPatrol              = true,
  category               = [[LAND TOOFAST]],
  cloakCost              = 0.01,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[16 16 16]],
  collisionVolumeType    = [[ellipsoid]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[28 28 28]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[7]],
	idle_cloak = 1,
    selection_scale = 1, -- Maybe change later
	default_spacing = 8,
  },

  explodeAs              = [[shieldbomb_DEATH]],
  fireState              = 2,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[walkerbomb]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  kamikaze               = true,
  kamikazeDistance       = 20,
  kamikazeUseLOS         = true,
  leaveTracks            = false,
  maxDamage              = 10,
  maxSlope               = 36,
  maxVelocity            = 0,
  maxWaterDepth          = 0,
  minCloakDistance       = 5,
  movementClass          = [[SKBOT2]],
  noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName             = [[logroach.s3o]],
  pushResistant          = 0,
  script                 = [[shieldbomb.lua]],
  selfDestructAs         = [[shieldbomb_DEATH]],
  selfDestructCountdown  = 0,
  yardMap                = [[o]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:VINDIBACK]],
      [[custom:digdig]],
    },

  },

  sightDistance          = 0,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointy]],
  trackWidth             = 20,
  turnRate               = 3000,
  
  featureDefs            = {

    DEAD      = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[logroach_dead.s3o]],
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
  shieldbomb_DEATH = {
    areaOfEffect       = 160,
    craterBoost        = 1,
    craterMult         = 3.5,
    edgeEffectiveness  = 0.4,
    explosionGenerator = "custom:FLASH64",
    explosionSpeed     = 4000, --4000 fps
    impulseBoost       = 0,
    impulseFactor      = 0.3,
    name               = "Explosion",
    soundHit           = "weapon/cannon/generic_cannon",
    damage = {
      default          = 50,
	  infantry         = 400,
	  tanks            = 10,
	  buildings        = 10,
    },
    customParams = {
      burst = Shared.BURST_UNRELIABLE,
    },
  },
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------
return lowerkeys({ shieldbomb = unitDef })
