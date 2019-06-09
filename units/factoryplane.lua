unitDef = {
  unitname                      = [[factoryplane]],
  name                          = [[Airplane Plant]],
  description                   = [[Produces Airplanes, Builds at 10 m/s]],
  acceleration                  = 0,
  activateWhenBuilt             = false,
  brakeRate                     = 0,
  buildCostMetal                = 800,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 11,
  buildingGroundDecalSizeY      = 11,
  buildingGroundDecalType       = [[factoryplane_aoplane.dds]],

  buildoptions                  = {
    [[planecon]],	
		
    [[planescout]],	
	
	[[gunshipheavyskirm]],
    [[gunshiptrans]],
    [[gunshipheavytrans]],    

    [[planefighter]],
    [[planeheavyfighter]],	
	[[bomberdisarm]],    
	
	[[bomberriot]],
	[[bomberprec]],
	[[bomberheavy]],	

	

	
  },

  buildPic                      = [[factoryplane.png]],
  canMove                       = true,
  canPatrol                     = true,
  category                      = [[FLOAT UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
    pad_count = 1,
    landflystate   = [[2]],
    sortName = [[4]],
	modelradius    = [[50]],
	midposoffset   = [[0 20 0]],
	nongroundfac = [[1]],
	default_spacing = 8,
  },

  energyStorage                 = 0,
  metalStorage                  = 20,    
  energyUse                     = 0,
  landflystate   				= 2, --I dont think this does anything
  explodeAs                     = [[LARGE_BUILDINGEX]],
  fireState                     = 0,
  footprintX                    = 8,
  footprintZ                    = 7,
  iconType                      = [[facair]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 3000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  minCloakDistance              = 150,
  moveState        				= 2,
  noAutoFire                    = false,
  objectName                    = [[airbase.s3o]],
  script                        = [[factoryplane.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  sightDistance                 = 273,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  waterline						= 0,
  workerTime                    = 10,
  yardMap                       = [[oooooooo oooooooo oooooooo occooooo occooooo oooooooo oooooooo]],

  featureDefs                   = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 7,
      footprintZ       = 6,
      object           = [[corap_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ factoryplane = unitDef })
