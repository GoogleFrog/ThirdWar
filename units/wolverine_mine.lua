unitDef = {
  unitname               = [[wolverine_mine]],
  name                   = [[Claw]],
  description            = [[Badger Mine]],
  acceleration           = 0,
  activateWhenBuilt      = false,
  brakeRate              = 0,
  buildCostMetal         = 1,
  builder                = false,
  buildPic               = [[wolverine_mine.png]],
  canGuard               = false,
  canMove                = false,
  canPatrol              = false,
  category               = [[FLOAT MINE STUPIDTARGET]],
  cloakCost              = 0,
  collisionVolumeOffsets = [[0 -4 0]],
  collisionVolumeScales  = [[20 20 20]],
  collisionVolumeType    = [[ellipsoid]],

  customParams           = {
    dontcount = [[1]],
	mobilebuilding = [[1]],
	idle_cloak = 1,
  },

  explodeAs              = [[bomb_DEATH]],
  footprintX             = 1,
  footprintZ             = 1,
  levelGround            = false,
  iconType               = [[mine]],
  idleAutoHeal           = 10,
  idleTime               = 300,
  initCloaked            = true,
  kamikaze               = true,
  kamikazeDistance       = 64,
  kamikazeUseLOS         = false,
  maxDamage              = 40,
  maxSlope               = 255,
  maxVelocity            = 0,
  minCloakDistance       = 50,
  noAutoFire             = false,
  noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName             = [[claw.s3o]],
  onoffable              = false,
  reclaimable            = false,
  script                 = [[wolverine_mine.lua]],  
  selfDestructAs      	 = [[bomb_DEATH]],  
  selfDestructCountdown  = 0.25,
  sightDistance          = 64,
  stealth                = true,
  turnRate               = 0,
  waterline              = 1,
  workerTime             = 0,
  yardMap                = [[y]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:VINDIBACK]],
      [[custom:digdig]],
    },

  },
  

}

local weaponDefs = {
  bomb_DEATH = {
    areaOfEffect       = 256,
    craterBoost        = 1,
    craterMult         = 3.5,
    edgeEffectiveness  = 0.4,
    explosionGenerator = "custom:ROACHPLOSION",
    explosionSpeed     = 10000,
    impulseBoost       = 0,
    impulseFactor      = 0.3,
    name               = "Explosion",
    soundHit           = "explosion/mini_nuke",
    damage = {
      default          = 2000,
    },
  },
}

return lowerkeys({ wolverine_mine = unitDef })
