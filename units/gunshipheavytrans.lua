unitDef = {
  unitname               = [[gunshipheavytrans]],
  name                   = [[CH-47D Chinhook]],
  description            = [[Armed Heavy Air Transport]],
  acceleration           = 0.2,
  airStrafe              = 0,
  brakeRate              = 0.248,
  buildCostMetal         = 2000, --should be 4000 for 40 million but...
  energyUse           	 = .30 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .30 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[heavytransport.png]],
  canFly                 = true,
  canGuard               = true,
  canload                = [[1]],
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[GUNSHIP]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[60 25 100]],
  collisionVolumeType    = [[Box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[55 25 90]],
  selectionVolumeType    = [[Box]],
  corpse                 = [[DEAD]],
  cruiseAlt              = 150,

  customParams           = {
	midposoffset   = [[0 0 0]],
	aimposoffset   = [[0 10 0]],
	modelradius    = [[15]],
  },

  explodeAs              = [[GUNSHIPEX]],
  floater                = true,
  firestate				 = 1,
  footprintX             = 4,
  footprintZ             = 4,
  hoverAttack            = true,
  iconType               = [[heavygunshiptransport]],
  idleAutoHeal           = 0,
  idleTime               = 1800,
  maneuverleashlength    = [[1280]],
  maxDamage              = 1000,
  maxVelocity            = 10,
  minCloakDistance       = 75,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[ch47.s3o]],
  script				 = [[ch47.lua]],
  releaseHeld            = true,
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:VINDIBACK]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
    },

  },
  sightDistance          = 1000,
  transportCapacity      = 60, --60 troops, 
  transportSize          = 25,
  --transportMass       	 = 1000,
  turninplace            = 1,
  turnRate               = 420,
  upright                = true,
  verticalSpeed          = 30,
  workerTime             = 0,

  weapons                = {

	{
      def                = [[MACHINEGUN50]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  mainDir            = [[-1 -1 1]],
      maxAngleDif        = 200,
    },


    {
      def                = [[M240MACHINEGUN]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  mainDir            = [[1 -1 1]],
      maxAngleDif        = 200,
    },
	
	


  },


  weaponDefs             = {

    MACHINEGUN50 = {
      name                    = [[M2 Machinegun]],
      accuracy                = 256,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      burnblow                = true,
      --burst                   = 1,
      --burstrate               = 0.1,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customParams        = {
		reaim_time = 8, -- COB
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 40,
		tanks = 0,
		lightarmor = 1,
		buildings = 2,
        planes  = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 1500 / Shared.RANGE_DIVISOR,
	  size                    = 0.5,
      reloadtime              = 0.15,
      rgbColor                = [[1 0.95 0.4]],
      --separation              = 1.5,
      soundStart              = [[weapon/distant_gunshot2]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2950,
    },	
	
   M240MACHINEGUN = {
      name                    = [[M240 Machinegun]],
      accuracy                = 350,
      alphaDecay              = 0.7,
      areaOfEffect            = 96,
      burnblow                = true,
      burst                   = 3,
      burstrate               = 0.1,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customParams        = {
		reaim_time = 8, -- COB
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 10,
		tanks = 0,
		lightarmor = 0,
		buildings = 1,
        planes  = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.25,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 900 / Shared.RANGE_DIVISOR,
	  size                    = 0,
      reloadtime              = 0.1,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/distant_fire3]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000,
    },	
	
 
  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
	  collisionVolumeScales  = [[40 40 80]],
	  collisionVolumeType    = [[CylZ]],
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[heavytrans_d.dae]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris3x3c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ gunshipheavytrans = unitDef })
