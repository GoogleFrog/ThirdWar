unitDef = {
  unitname                      = [[turretaalaser]],
  name                          = [[Phalanx]],
  description                   = [[Anti Missile and Aircraft Minigun]],  
  activateWhenBuilt             = true,
  buildCostMetal                = 400, --3.8 million
  builder                       = false,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 5,
  --buildingGroundDecalSizeY      = 5,
  --buildingGroundDecalType       = [[turretriot_aoplane.dds]],
  buildPic                      = [[phalanx.png]],
  category                      = [[FLOAT TURRET ARMOR]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[45 45 45]],
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    aimposoffset   = [[0 12 0]],
    midposoffset   = [[0 4 0]],
  },

  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[defenseriot]],
  levelGround                   = false,
  maxDamage                     = 100,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  noChaseCategory               = [[FIXEDWING LAND SHIP SWIM GUNSHIP SUB HOVER]],
  objectName                    = [[phalanx.s3o]],
  script                        = [[phalanx.lua]],
  selfDestructAs                = [[SMALL_BUILDINGEX]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:WARMUZZLE]],
      [[custom:DEVA_SHELLS]],
	  [[custom:phalanxmuzzle]],
	  
    },

  },

  sightDistance                 = 750,
  useBuildingGroundDecal        = true,
  yardMap                       = [[o]],

  weapons                       = {

    {
      def                = [[M6120mm]],
      --badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
      mainDir            = [[0 1 0]],
      maxAngleDif        = 240,
    },
	
	{
      def         = [[AMS]],
      maxAngleDif = 1,
    },		

  },

  weaponDefs                    = {

    M6120mm = {
      name                    = [[M61 20mm]],
      accuracy                = 192,
      alphaDecay              = 0.7,
      areaOfEffect            = 16,
      avoidFeature            = false,
      burnblow                = true,
      craterBoost             = 0.0,
      craterMult              = 0.0,
	  cylinderTargeting       = 1,

	  customparams = {
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
		--proximity_priority = 5, -- Don't use this unless required as it causes O(N^2) separation checks per slow update.
	  },

      damage                  = {
        default = 30,
		tanks   = 0.0,
		lightarmor   = 1.0,
		buildings = 1,
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 2500 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.07,	--1550 round drum
	  tolerance               = 3500 / Shared.RANGE_DIVISOR,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/machinegunp/3burst4]],
	  soundStartVolume        = 3.2,
	  projectiles             = 3,
	  size 					  = 0,
	  --soundTrigger            = true,
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --284
    },
	
    AMS = {
      name                    = [[Anti Missile System]],
      craterMult              = 0,
	  collideFriendly         = false,

      damage                  = {
        default = 3500,
      },

      exteriorShield          = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      shieldAlpha             = 0.0,
      shieldBadColor          = [[0.1 0.1 0.1 0]],
      shieldGoodColor         = [[1.0 1.0 1 0]],
      shieldInterceptType     = 1,
      shieldPower             = 3500,
	  shieldStartingPower     = 3500,
      shieldPowerRegen        = 250,
      shieldPowerRegenEnergy  = 0,
      shieldRadius            = 400,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },	
	

  },

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[phalanx_dead.s3o]],
	  reclaimable	   = false,
    },

	HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ turretaalaser = unitDef })
