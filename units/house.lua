unitDef = {
  unitname                      = [[house]],
  name                          = [[Residential Light]],
  description                   = [[Metal +0.1]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostMetal                = 100,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  buildingGroundDecalSizeY      = 6,
  buildingGroundDecalType       = [[energysolar_aoplane.dds]],
  buildPic                      = [[house01.png]],
  category                      = [[SINK UNARMED STUPIDTARGET SOLAR]],
  corpse                        = [[DEAD]],

  customParams                  = {
    pylonrange      = 100,
    aimposoffset    = [[0 16 0]],
    midposoffset    = [[0 0 0]],
    removewait      = 1,
    default_spacing = 0,
  },

  energyMake                    = -0.1,
  metalMake              		= 0.1,  
  explodeAs                     = [[SMALL_BUILDINGEX]],
  footprintX                    = 5,
  footprintZ                    = 5,
  iconType                      = [[energy_med]],
  idleAutoHeal                  = 0,
  idleTime                      = 1800,
  maxDamage                     = 200,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[house01.s3o]],
  onoffable                     = true,
  script                        = [[house.lua]],
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  sightDistance                 = 273,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[ooooooooooooooooooooooooo]],

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[arm_solar_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris4x4a.s3o]],
    },

  },

}

return lowerkeys({ house = unitDef })
