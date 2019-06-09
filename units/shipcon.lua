unitDef = {
  unitname               = [[shipcon]],
  name                   = [[Mariner]],
  description            = [[Construction Ship, Builds at 7.5 m/s]],
  acceleration           = 0.051375,
  activateWhenBuilt   = true,
  brakeRate              = 0.0061,
  buildCostMetal         = 750,
  energyUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .10 * Shared.UPKEEP_MULTIPLIER,   
  buildDistance          = 330,
  builder                = true,

  buildoptions           = {
    [[jumpbomb]], 
	[[staticmex]],
	[[energysolar]],
	[[energyfusion]],
	[[energysingu]],
	[[energywind]],
	[[energygeo]],
	[[staticstorage]],
	[[energypylon]],
	[[staticcon]],
	[[staticrearm]],
	
	[[factorycloak]],
	[[factoryveh]],
	[[factorygunship]],	
	[[factoryplane]],
	[[factorytank]],
	[[factoryship]],
	
	[[staticradar]],
	[[staticheavyradar]],
	[[staticjammer]],
	[[turretmissile]],
	[[turretimpulse]],
	[[turretriot]],	
	[[turretantiheavy]],
	
	[[turrettorp]],
	[[turretaalaser]],
	[[turretaaclose]],
	
	[[turretaaflak]],
	[[turretaaheavy]],
	
	[[staticshield]],
	[[staticantinuke]],
	[[staticarty]],
	[[staticheavyarty]],
	[[staticmissilesilo]],
	[[staticnuke]],	
  },

  buildPic               = [[shipcon.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP UNARMED]],
  collisionVolumeOffsets = [[0 8 0]],
  collisionVolumeScales  = [[25 25 96]],

  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[40]],
	turnatfullspeed = [[1]],
  },
  
  energyMake             = 0,
  metalMake              = 0,  
  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[builder]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 500,
  maxVelocity            = 2.5,
  minCloakDistance       = 75,
  minWaterDepth          = 5,
  movementClass          = [[BOAT3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName             = [[shipcon.s3o]],
  script                 = [[shipcon.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],
  showNanoSpray          = false,
  sightDistance          = 500,
  sonarDistance          = 0,
  turninplace            = 0,
  turnRate               = 508,
  workerTime             = 10,
  --transportCapacity      = 2048,
  --transportSize          = 200,  

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[shipcon_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shipcon = unitDef })
