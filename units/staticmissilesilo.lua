unitDef = {
  unitname                      = [[staticmissilesilo]],
  name                          = [[Missile Silo]],
  description                   = [[Produces Tactical Missiles]],
  buildCostMetal                = 1000,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  buildingGroundDecalSizeY      = 6,
  buildingGroundDecalType       = [[staticmissilesilo_aoplane.dds]],

  buildoptions                  = {
    [[tacnuke]],
    [[seismic]],
    [[empmissile]],
    [[napalmmissile]],
	
  },

  buildPic                      = [[staticmissilesilo.png]],
  canFight                      = false,
  canMove                       = false,
  canPatrol                     = false,
  category                      = [[SINK UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
	nongroundfac = [[1]],
	neededlink     = 10,
  },

  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  fireState                     = 0,
  footprintX                    = 6,
  footprintZ                    = 6,
  iconType                      = [[cruisemissile]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 8000,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  objectName                    = [[missilesilo.s3o]],
  script                        = [[staticmissilesilo.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = [[oooooo occcco occcco occcco occcco oooooo]],

  featureDefs                   = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[missilesilo_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP = {
      blocking         = false,
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ staticmissilesilo = unitDef })
