unitDef = {
  unitname               = [[jumpscout]],
  name                   = [[Puppy]],
  description            = [[Light Infantry]],
  acceleration           = 0.2,
  brakeRate              = 0.4,
  buildCostMetal         = 25,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,  
  buildPic               = [[cloakraid.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST INFANTRY]],
  cloakCost              = 0,
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[18 28 18]],
  collisionVolumeType    = [[cylY]],
  --corpse                 = [[DEAD]],
  --transportSize       = 1,

  customParams           = {
	modelradius    = [[4]],
	idle_cloak = 1,
	selection_scale = 0.5,
	post_capture_reload = 5,

  },

  --explodeAs           	 = [[SMALL_BLOODEX]],
  damageModifier         = 0.33, --1/4 chance of hitting once stopped and in prone

  transportSize       	 = 1,
  moveState           	 = 0,
  lodDistance            = 0.5,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[rifleman]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = false,
  maxDamage              = 200,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = 16,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB WALL]],
  objectName             = [[rifleman.s3o]],
  script                 = [[rifleman.lua]],
  --selfDestructAs         = [[SMALL_BLOODEX]],

  sfxtypes               = {

    explosiongenerators = {
	
      [[custom:emg_shells_l]],
      [[custom:flashmuzzle1]],
	  
	  [[custom:blood_spray]],
	  [[custom:blood_explode]],
      
      
	  
    },

  },

  sightDistance          = 500,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 14,
  turnRate               = 2500,
  upright                = true,

  weapons                = {

    {
      def                = [[M4]],
      badTargetCategory  = [[FIXEDWING UNARMED]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[CAPTURERAY]],
      --badTargetCategory  = [[SHIP]],
      onlyTargetCategory = [[ UNARMED ]],
    },	

	
  },

  weaponDefs             = {

    M4 = {
      name                    = [[Assault Rifle]],
      alphaDecay              = 0.1,
      --areaOfEffect            = 8,
      burst                   = 3,
      burstrate               = 0.08,
      colormap                = [[1 0.95 0.4 1   1 0.95 0.4 1    0 0 0 0.01    1 0.7 0.2 1]],
      accuracy                = 64,	  
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
		light_camera_height = 1200,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 10,
		buildings = 1,
        subs    = 0.0,
		tanks   = 0.0,
		lightarmor   = 0.0,
		vehicle = 1,
        planes  = 1,
      },

      explosionGenerator      = [[custom:FLASHPLOSION]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noGap                   = false,
      noSelfDamage            = true,
      range                   = 1000 / Shared.RANGE_DIVISOR,
      reloadtime              = 1.0,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      size                    = 1,
      sizeDecay               = 0,
      soundStart              = [[weapon/distant_fire2]],
      soundStartVolume        = 4,
      sprayAngle              = 1180,
      stages                  = 10,
      --tolerance               = 320,
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --//should be 333, 1050 m/s
    },

    CAPTURERAY = {
      name                    = [[Capture Ray]],
      beamdecay               = 0.9,
      beamTime                = 1/8,
      beamttl                 = 3,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
        capture_scaling = 0,
        is_capture = 1,

		stats_hide_damage = 1, -- continuous laser
		stats_hide_reload = 1,
		
		light_radius = 0,
		light_color = [[0 0.6 0.15]],
      },

      damage                  = {
        default = 0.25,
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
      range                   = 110,
      reloadtime              = 1/8,
      rgbColor                = [[0 0.8 0.2]],
      scrollSpeed             = 2,
      --soundStart              = [[weapon/laser/pulse_laser2]],
      --soundStartVolume        = 0.25,
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[dosray]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 1,
      tolerance               = 100,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 10000,
    },	

	
  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[rifleman_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ jumpscout = unitDef })
