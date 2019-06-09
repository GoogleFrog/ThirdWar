unitDef = {
  unitname            = [[planecon]],
  name                = [[Crane]],
  description         = [[Construction Aircraft, Builds at 4 m/s]],
  acceleration        = 0.1,
  airStrafe           = 0,
  brakeRate           = 0.08,
  buildCostMetal      = 500,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  buildDistance       = 160,
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[42 42 42]],
  selectionVolumeType    = [[ellipsoid]], 
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[planecon.png]],
  buildRange3D        = false,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP UNARMED]],
  collisionVolumeOffsets        = [[0 0 -5]],
  collisionVolumeScales         = [[42 8 42]],
  collisionVolumeType           = [[cylY]],
  collide             = true,
  corpse              = [[DEAD]],
  cruiseAlt           = 220,

  customParams        = {
    airstrafecontrol = [[0]],
	modelradius    = [[10]],
	midposoffset   = [[0 4 0]],
  },

  energyUse           = 0,
  energyMake          = 0,
  metalMake           = 0,  
  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[builderair]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxDamage           = 250,
  maxVelocity         = 24,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[crane.s3o]],
  script              = [[planecon.lua]],
  selfDestructAs      = [[GUNSHIPEX]],
  showNanoSpray       = false,
  sightDistance       = 1000,
  turnRate            = 500,
  workerTime          = 4,

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[crane_d.dae]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ planecon = unitDef })
