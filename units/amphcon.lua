unitDef = {
  unitname            = [[amphcon]],
  name                = [[Conch]],
  description            = [[Construction Worker, Builds at 2 m/s]],
  acceleration           = 0.25,
  activateWhenBuilt      = true,
  brakeRate              = 0.5,
  buildCostMetal         = 50,
  buildDistance          = 128,
  builder                = true,

  customParams           = {
	modelradius    = [[3]],
	idle_cloak = 1,
	selection_scale = 0.25,	
	aimposoffset   = [[0 2 0]],
  },  
  
  buildoptions           = {
    [[jumpbomb]],
    [[shieldbomb]],

	[[house]],
	
	[[factorycloak]],
	[[factoryveh]],
	[[factorygunship]],	
	[[factoryplane]],
	[[factorytank]],
	[[factoryship]],

	[[staticmex]],
	[[energywind]],
	[[staticstorage]],
	[[energypylon]],
	[[staticcon]],	

	[[wall]],  --should just be fence for infantry engineers, and concrete wall for vehicle workers
	[[staticradar]],
	[[turretmissile]],	
	[[turretriot]],	
	
	[[turretaalaser]],
	[[turretaaclose]],
	
	[[turretaaflak]],
	[[turretaaheavy]],	
	
	
	
  },

  buildPic               = [[engineer.png]],
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 4 0]],
  collisionVolumeScales  = [[28 40 28]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],

  sfxtypes               = {

    explosiongenerators = {
	
      [[custom:emg_shells_l]],
      [[custom:flashmuzzle1]],	  
	  [[custom:blood_spray]],
	  [[custom:blood_explode]],
      
      
	  
    },

  },

  --explodeAs              = [[SMALL_BLOODEX]],
  energyMake             = 0,
  metalMake              = 0,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[builder]],
  idleAutoHeal           = 5,
  idleTime               = 5000,
  initCloaked            = false,
  leaveTracks            = false,
  maxDamage              = 50,
  maxSlope               = 36,
  maxVelocity            = 1,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  objectName             = [[engineer.s3o]],
  script                 = [[cloakcon.lua]],
  --selfDestructAs         = [[SMALL_BLOODEX]],
  showNanoSpray          = false,
  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  noChaseCategory     	 = [[FIXEDWING SATELLITE GUNSHIP]],
  trackWidth             = 18,
  turnRate               = 2200,
  upright                = true,
  workerTime             = 2,

  weapons                = {


	
  },  

  weaponDefs             = {

    ENGY_CAPTURE = {
      name                    = [[Capture Ray]],
      beamdecay               = 0.9,
      beamTime                = 1/30,
      beamttl                 = 3,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
        capture_scaling = 0,
        is_capture = 1,

		stats_hide_damage = 1, -- continuous laser
		stats_hide_reload = 1,
		
		light_radius = 120,
		light_color = [[0 0.6 0.15]],
      },

      damage                  = {
        default = 1,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 0,
      largeBeamLaser          = true,
      laserFlareSize          = 0,
      minIntensity            = 1,
      range                   = 100,
      reloadtime              = 1/30,
      rgbColor                = [[0 0.8 0.2]],
      scrollSpeed             = 2,
      soundStart              = [[weapon/laser/pulse_laser2]],
      soundStartVolume        = 0.5,
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[dosray]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 2,
      tolerance               = 120,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
    },	
	
  },
  
  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 1,
      footprintZ       = 1,
      object           = [[spherejeth_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 1,
      footprintZ       = 1,
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ amphcon = unitDef })
