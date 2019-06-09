unitDef = {
  unitname               = [[cloakassault]],
  name                   = [[Arsonist]],
  description            = [[Flamethrower Infantry]],
  acceleration           = 0.2,
  brakeRate              = 0.4,
  buildCostMetal         = 25,
  energyMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,
  metalMake           	 = -0.05 * Shared.UPKEEP_MULTIPLIER,   
  buildPic               = [[flamethrower.png]],
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
	modelradius    = [[3]],
	idle_cloak = 1,
	selection_scale = 0.25,

  },

  explodeAs           	 = [[SMALL_UNITEX]],
  transportSize       	 = 1,
  --damageModifier         = 0.25, --1/4 chance of hitting once stopped and in prone
  moveState           	 = 0,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[kbotraider]],
  idleAutoHeal           = 5,
  idleTime               = 5000,
  leaveTracks            = false,
  maxDamage              = 50,
  maxSlope               = 36,
  maxVelocity            = 1.0,
  maxWaterDepth          = 16,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB WALL]],
  objectName             = [[rifleman.s3o]],
  script                 = [[rifleman.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],

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
      def                = [[FLAMETHROWER]],
      badTargetCategory  = [[FIREPROOF]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },

	
  },

  weaponDefs             = {

    FLAMETHROWER = {
      name                    = [[Flamethrower]],
	  accuracy                = 16,
      areaOfEffect            = 48,
      avoidGround             = false,
      avoidFeature            = false,
      avoidFriendly           = true,
      collideFeature          = false,
      collideGround           = false,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[flamer]],

      customParams            = {
        flamethrower = [[1]],
        setunitsonfire = "1",
        burnchance = "0.4", -- Per-impact
        burntime = [[900]],
          
        light_camera_height = 2800,
        light_color = [[0.6 0.39 0.18]],
        light_radius = 260,
        light_fade_time = 10,
        light_beam_mult_frames = 5,
        light_beam_mult = 5,
      
        combatrange = 128,
      },
    
      damage                  = {
        default 	= 50,
		tanks   	= 1.0,
		infantry	= 100,
        subs    	= 0.01,
      },

      duration                = 0.01,
      explosionGenerator      = [[custom:SMOKE]],
      fallOffRate             = 1,
      fireStarter             = 100,
      heightMod               = 1,
      impulseBoost            = 0,
      impulseFactor           = 0,
      intensity               = 0.3,
      interceptedByShieldType = 1,
      noExplode               = true,
      noSelfDamage            = true,
      range                   = 128,
      reloadtime              = 0.16,
      rgbColor                = [[1 1 1]],
      soundStart              = [[weapon/flamethrower]],
      soundTrigger            = true,
      texture1                = [[flame]],
      thickness	              = 0,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 800,
    },

    CAPTURERAY = {
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
		
		light_radius = 0,
		light_color = [[0 0.6 0.15]],
      },

      damage                  = {
        default = 0.5,
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
      thickness               = 1,
      tolerance               = 100,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 290,
    },	

	
  },

  featureDefs            = {

    --DEAD  = {
    --  blocking         = false,
      --featureDead      = [[HEAP]],
    --  footprintX       = 2,
    --  footprintZ       = 2,
      --object           = [[spherebot_dead.s3o]],
    --},

    --HEAP  = {
      --blocking         = false,
      --footprintX       = 2,
      --footprintZ       = 2,
      --object           = [[debris2x2b.s3o]],
    --},

  },

}

return lowerkeys({ cloakassault = unitDef })
