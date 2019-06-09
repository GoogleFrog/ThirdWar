unitDef = {
  unitname            = [[decoydrone]],
  name                = [[Decoy]],
  description         = [[Decoy]],
  brakerate           = 0.3,
  buildCostMetal      = 150,
  buildPic            = [[bomberdisarm.png]],
  canFly              = true,
  canMove             = true,
  canSubmerge         = false,
  category            = [[FIXEDWING DECOY]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 4]],
  collisionVolumeScales  = [[45 20 50]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[70 25 70]],
  selectionVolumeType    = [[cylY]],
  corpse              = [[DEAD]],
  cruiseAlt           = 200,

  customParams        = {
    modelradius    = [[10]],
    requireammo    = [[1]],
    refuelturnradius = [[170]],
    reammoseconds    = [[15]],
  },

  --metalpershot        = 5,
  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bomberriot]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  maxAcc              = 0.5,
  maxDamage           = 200,
  maxFuel             = 10000,
  maxBank             = 0.5,
  maxVelocity         = 50,
  minCloakDistance    = 75,
  noChaseCategory     = [[TERRAFORM FIXEDWING LAND SHIP SWIM GUNSHIP SUB HOVER]],
  objectName          = [[f-1.s3o]],
  script              = [[gunshipbomb.lua]],
  selfDestructAs      = [[GUNSHIPEX]],
  sightDistance       = 100,
  --turnRadius          = 400,


  featureDefs         = {

    DEAD      = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[wreck2x2b.s3o]],
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

return lowerkeys({ decoydrone = unitDef })
