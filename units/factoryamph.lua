unitDef = {
  unitname         = [[factoryamph]],
  name             = [[Amphbot Factory]],
  description      = [[Produces Amphibious Bots, Builds at 10 m/s]],
  buildCostMetal   = 400,
  builder          = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 10,
  buildingGroundDecalSizeY      = 10,
  buildingGroundDecalType       = [[factoryamph_aoplane.dds]],  

  buildoptions     = {
    [[amphcon]],
    [[amphraid]],
    [[amphimpulse]],
    [[amphfloater]],
    [[amphriot]],	
    [[amphassault]],
	[[amphlaunch]],
    [[amphaa]],
	[[amphbomb]],
    [[amphtele]],
    
--    [[cloakraid]],
--    [[cloakheavyraid]],
--    [[cloakskirm]],
--    [[cloakriot]],
--    [[cloakassault]],
--    [[cloakarty]],
--    [[cloaksnipe]],
--    [[cloakaa]],
--    [[cloakbomb]],
--    [[cloakjammer]],

  },

  buildPic         = [[factoryamph.png]],
  canMove          = true,
  canPatrol        = true,
  category         = [[UNARMED SINK]],
  collisionVolumeOffsets = [[0 0 -16]],
  collisionVolumeScales  = [[104 70 36]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 14]],
  selectionVolumeScales  = [[104 70 96]],
  selectionVolumeType    = [[box]],
  corpse           = [[DEAD]],

  customParams     = {
	modelradius    = [[100]],
    aimposoffset   = [[0 0 -26]],
    midposoffset   = [[0 0 -10]],
    sortName = [[8]],
	solid_factory = [[3]],
	default_spacing = 8,
	unstick_help   = 1,
  },

  energyUse        = 0,
  explodeAs        = [[LARGE_BUILDINGEX]],
  footprintX       = 7,
  footprintZ       = 7,
  iconType         = [[facamph]],
  idleAutoHeal     = 5,
  idleTime         = 1800,
  maxDamage        = 4000,
  maxSlope         = 15,
  minCloakDistance = 150,
  moveState        = 1,
  noAutoFire       = false,
  objectName       = [[factory2.s3o]],
  script           = "factoryamph.lua",
  selfDestructAs   = [[LARGE_BUILDINGEX]],
  showNanoSpray    = false,
  sightDistance    = 273,
  useBuildingGroundDecal = true,
  workerTime       = 10,
  yardMap          = [[ooooooo ooooooo ooooooo ccccccc ccccccc ccccccc ccccccc]],

  featureDefs      = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 7,
      footprintZ       = 7,
      object           = [[FACTORY2_DEAD.s3o]],
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

return lowerkeys({ factoryamph = unitDef })