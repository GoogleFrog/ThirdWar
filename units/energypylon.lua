unitDef = {
  unitname                      = [[energypylon]],
  name                          = [[Power Tower]],
  description                   = [[Extends the electric grid]],
  activateWhenBuilt             = true,
  buildCostMetal                = 10,
  builder                       = false,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 5,
  --buildingGroundDecalSizeY      = 5,
  --buildingGroundDecalType       = [[energypylon_aoplane.dds]],
  buildPic                      = [[energypylon.png]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[48 48 48]],
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    pylonrange 	   = 150,
    aimposoffset   = [[0 0 0]],
    midposoffset   = [[0 -6 0]],
    modelradius    = [[24]],
	removewait     = 1,
	default_spacing = 41, -- Diagonal connection.
  },

  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[pylon]],
  idleAutoHeal                  = 1,
  idleTime                      = 1800,
  levelGround                   = false,
  maxDamage                     = 500,
  maxSlope                      = 75,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[powertower.s3o]],
  script                        = "energypylon.lua",
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  yardMap                       = [[ooo ooo ooo]], --oyo yyy oyo  the gap in the middle causes infantry pathing problems

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[powertower_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ energypylon = unitDef })
