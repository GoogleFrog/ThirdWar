unitDef = {
  unitname         = [[wall]],
  name             = [[Concrete Wall]],
  description      = [[Barricade]],
  acceleration     = 0,
  brakeRate        = 0,
  buildCostMetal   = 10,
  --builder          = true,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 15,
  --buildingGroundDecalSizeY      = 15,
  --buildingGroundDecalType       = [[factoryhover_aoplane.dds]],
  buildPic         = [[wall.png]],
  --canMove          = true,
  --canPatrol        = true,
  category         = [[UNARMED SINK WALL]],
  selectionVolumeOffsets  = [[0 0 0]],
  selectionVolumeScales   = [[32 16 32]],
  selectionVolumeType     = [[box]],
  corpse           = [[DEAD]],

  customParams     = {    
	modelradius    = [[10]],
	default_spacing = 0,
	aimposoffset   = [[0 0 -24]],
    midposoffset    = [[0 0 -24]],
	
	selection_scale = 0.0,
    
  },

  energyUse        = 0,
  explodeAs        = [[SMALL_BUILDINGEX]],
  footprintX       = 2,
  footprintZ       = 1,
  iconType         = [[storage]],
  maxDamage        = 1000,
  maxSlope         = 18,
  maxVelocity      = 0,
  minCloakDistance = 0,  
  noAutoFire       = false,
  objectName       = [[wall.s3o]],
  script	       = [[wall.lua]],
  selfDestructAs   = [[SMALL_BUILDINGEX]],  
  sightDistance    = 0,
  turnRate         = 0,
  --useBuildingGroundDecal = true,
  --waterline        = 1,
  --workerTime       = 10,
  yardMap          = [[xox xox xox]],

  featureDefs      = {

    DEAD  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 1,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = true,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 1,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ wall = unitDef })
