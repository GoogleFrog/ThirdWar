unitDef = {
  unitname            = [[gunshipcon]],
  name                = [[Wasp]],
  description            = [[Construction Rover, Builds at 5 m/s]],
  acceleration           = 0.0166,
  brakeRate              = 0.0125,
  buildCostMetal         = 100,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  buildDistance          = 180,
  builder                = true,

  buildoptions           = {
    [[jumpbomb]],
    [[shieldbomb]],
	
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
	[[factoryplane]],
	[[factorytank]],
	[[factoryship]],
	
	[[staticradar]],
	[[staticheavyradar]],
	[[staticjammer]],
	[[turretmissile]],	
	[[turretriot]],	
	
	[[turrettorp]],
	[[turretaalaser]],
	[[turretaaclose]],
	
	[[turretaaflak]],
	[[turretaaheavy]],	
	[[wall]],
	
	[[staticantinuke]],
	[[staticarty]],
	[[staticheavyarty]],
	[[staticmissilesilo]],
	[[staticnuke]],	
	
  },

  buildPic               = [[vehcon.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  --canload             = [[1]],  
  category               = [[LAND UNARMED]],
  collisionVolumeOffsets = [[0 5 0]],
  collisionVolumeScales  = [[28 28 40]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[20]],
  },

  
  energyMake             = 0.0,
  metalMake              = 0.0,  
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[builder]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 500,
  maxSlope               = 18,
  maxVelocity            = 2.5,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName             = [[corcv.s3o]],
  releaseHeld            = true,  
  selfDestructAs         = [[BIG_UNITEX]],
  showNanoSpray          = false,
  sightDistance          = 500,
  trackOffset            = 3,
  trackStrength          = 6,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 32,
  turninplace            = 0,
  turnRate               = 625,
  workerTime             = 5,

  --transportCapacity   = 6,
  --transportMass       = 330,
  transportSize       = 4,  
  
  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[corcv_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ gunshipcon = unitDef })
