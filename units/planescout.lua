unitDef = {
  unitname            = [[planescout]],
  name                = [[Sentry]],
  description         = [[Radar Plane]],
  brakerate           = 0.4,
  buildCostMetal      = 4000,
  energyUse           = .40 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .40 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[radarplane.png]],
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[UNARMED FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[35 12 60]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  cruiseAlt           = 600,

  customParams        = {
	modelradius    = [[60]],
	--specialreloadtime = [[600]],
	refuelturnradius = [[120]],
	priority_misc = 2, -- High
	landflystate   = [[2]],
  },
  
  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[planescout]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxAcc              = 0.5,
  maxDamage           = 1000,
  maxAileron          = 0.018,
  maxElevator         = 0.02,
  maxRudder           = 0.008,
  maxVelocity         = 22,
  minCloakDistance    = 600,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[e3.s3o]],
  script              = [[planescout.lua]],
  radarDistance       = 9000,
  radarDistanceJam    = 0,  
  selfDestructAs      = [[GUNSHIPEX]],
  sightDistance       = 1500,
  sonarDistance       = 700,
  turnRadius          = 90, --was 90
  turninplace            = 0,
  turnRate               = 75,
  workerTime          = 0,

  featureDefs         = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[armpnix_dead.s3o]],
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

return lowerkeys({ planescout = unitDef })
