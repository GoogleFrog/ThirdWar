unitDef = {
  unitname                      = [[energysingu]],
  name                          = [[Singularity Reactor]],
  description                   = [[Medium Powerplant (+75)]],
  activateWhenBuilt             = true,
  buildCostMetal                = 1400,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  BuildingGroundDecalSizeY      = 6,
  BuildingGroundDecalType       = [[energyfusion_ground.dds]],
  buildPic                      = [[energyfusion.png]],
  category                      = [[SINK UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
    pylonrange = 500,
	removewait = 1,
  },

  energyStorage                 = 20,    
  energyMake                    = 75,
  energyUse                     = 0,
  explodeAs                     = [[ATOMIC_BLAST]],
  footprintX                    = 5,
  footprintZ                    = 4,
  iconType                      = [[energyfusion]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 2000,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  objectName                    = [[energyfusion.s3o]],
  script                        = "energyfusion.lua",
  selfDestructAs                = [[ATOMIC_BLAST]],
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  yardMap                       = [[ooooo ooooo ooooo ooooo]],

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 4,
      object           = [[energyfusion_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 4,
      object           = [[debris4x4b.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ energysingu = unitDef })
