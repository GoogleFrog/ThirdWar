unitDef = {
  unitname                      = [[factoryveh]],
  name                          = [[Rover Assembly]],
  description                   = [[Produces Light Vehicles]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostMetal                = 400,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 11,
  buildingGroundDecalSizeY      = 11,
  buildingGroundDecalType       = [[factoryveh_aoplane.dds]],

  buildoptions                  = {
  
    [[vehcon]],        
    [[tankheavyraid]],	
    [[vehraid]],
    [[vehsupport]],
    [[vehriot]],		
	[[vehaa]],
    [[vehcapture]],
    [[veharty]],
    [[vehheavyarty]],
	[[striderarty]],
	[[topol]],
	[[truck]],
    
  },

  buildPic                      = [[factoryveh.png]],
  canMove                       = true,
  canPatrol                     = true,
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 -25]],
  collisionVolumeScales         = [[120 40 40]],
  collisionVolumeType           = [[box]],
  selectionVolumeOffsets        = [[0 0 10]],
  selectionVolumeScales         = [[120 70 112]],
  selectionVolumeType           = [[box]],
  corpse                        = [[DEAD]],

  customParams                  = {
	sortName       = [[2]],
	default_spacing = 8,

	solid_factory  = 3,
	aimposoffset   = [[0 0 -35]],
	midposoffset   = [[0 0 -10]],
	modelradius    = [[100]],
	unstick_help   = 1,
  },

  energyStorage                 = 0,
  metalStorage                  = 20,    
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 8,
  footprintZ                    = 8,
  iconType                      = [[facvehicle]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  moveState                     = 1,
  noAutoFire                    = false,
  objectName                    = [[factoryveh.dae]],
  script                        = [[factoryveh.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  sightDistance                 = 273,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = "xoooooox xoooooox xoooooox xccccccx xccccccx xccccccx xccccccx xccccccx",

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 8,
      footprintZ       = 8,
      object           = [[factoryveh_d.dae]],
      collisionVolumeOffsets = [[0 0 -20]],
      collisionVolumeScales  = [[110 35 75]],
      collisionVolumeType    = [[box]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 7,
      footprintZ       = 7,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ factoryveh = unitDef })
