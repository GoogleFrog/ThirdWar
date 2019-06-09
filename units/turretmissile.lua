unitDef = {
  unitname                      = [[turretmissile]],
  name                          = [[Guard Tower]],
  description                   = [[Defense Tower]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostMetal                = 100,
  builder                       = false,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 4,
  --buildingGroundDecalSizeY      = 4,
  --buildingGroundDecalType       = [[turretmissile_aoplane.dds]],
  buildPic                      = [[turretmissile.png]],
  category                      = [[TURRET CHEAP]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 80 32]],
  collisionVolumeType           = [[CylY]],
  --selectionVolumeOffsets 		= [[0 10 0]],
  --selectionVolumeScales  		= [[32 130 32]],
  --selectionVolumeType    		= [[cylZ]],  
  corpse                        = [[DEAD]],

  customParams                  = {
    --aimposoffset   = [[0 125 0]],
	selection_scale = 1.45,
	--midposoffset   = [[0 60 0]], --this does cause the spot they have to aim to move up, but then infantry cant attack it...
	--modelradius    = [[16]],	
  },

  explodeAs                     = [[BIG_UNITEX]],
  floater                       = false,
  footprintX                    = 2,
  footprintZ                    = 2,
  iconType                      = [[defenseskirm]],
  idleAutoHeal                  = 0,
  idleTime                      = 1800,
  levelGround                   = false,
  losEmitHeight                 = 60,
  maxDamage                     = 200,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[guardtower.s3o]],
  script                        = [[guardtower.lua]],
  selfDestructAs                = [[BIG_UNITEX]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:muzzle50]],
      [[custom:shells_50]],
	  [[custom:minigunmuzzle]],
	  [[custom:rockomuzzle]],
    },

  },
  sightDistance                 = 1000,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oyo yyy oyo]],

  weapons                       = {

    {
      def                = [[M134]],
      badTargetCategory  = [[TANK BUILDING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
      --mainDir            = [[0 1 0]],
      --maxAngleDif        = 240,
    },
  
    {
      def                = [[SPIKE_MISSILE]],
      badTargetCategory  = [[FIXEDWING INFANTRY TOOFAST]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs                    = {

    M134 = {
      name                    = [[M134 minigun]],
      accuracy                = 224,
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
        default = 15,
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
      range                   = 2000 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.07,	--1550 round drum
	  tolerance               = 3500 / Shared.RANGE_DIVISOR,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/machinegunp/3burst4]],
	  soundStartVolume        = 3.2,
	  projectiles             = 2,
	  size 					  = 1,
	  --soundTrigger            = true,
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --284
    },  

    SPIKE_MISSILE = {
      name                    = [[FGM 148 Javelin]],
	  accuracy				  = 16,
      areaOfEffect            = 24,
	  avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 5,

	  customParams        	  = {
		--isaa = [[1]],
		--script_reload = [[20]],
		--script_burst = [[3]],
		
		light_camera_height = 2000,
		light_radius = 200,
	  },

      damage                  = {
        default = 500,
		infantry= 50,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 7,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 125,
      model                   = [[wep_m_ajax.s3o]],
      noSelfDamage            = false,
      predictBoost            = 1,
      range                   = 4750 / Shared.RANGE_DIVISOR,
      reloadtime              = 15,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/sabot_hit]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/missile/sabot_fire]],
      soundStartVolume        = 7,
      startVelocity           = 600, --should be 206 m/s or 460 mph
      texture2                = [[darksmoketrail]],
      tolerance               = 1000,
      tracks                  = true,
      turnRate                = 1000,
      turret                  = true,
      weaponAcceleration      = 34,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 618,  --460 mph, 206 meters per second
	  wobble                  = 200,	
    }, 
	
    ARMRL_MISSILE = {
      name                    = [[Homing Missiles]],
	  accuracy                = 16,
      areaOfEffect            = 8,
	  avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 5,

	  customParams        	  = {
		isaa = [[1]],
		script_reload = [[20]],
		script_burst = [[3]],
		
		light_camera_height = 2000,
		light_radius = 200,
	  },

      damage                  = {
        default = 300,
		tanks   = 600,
		infantry= 25,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 7,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      metalpershot            = 1,
      model                   = [[hobbes.s3o]],
      noSelfDamage            = true,
      range                   = 3000 / Shared.RANGE_DIVISOR,
      reloadtime              = 15,
      smokeTrail              = false,
      soundHit                = [[explosion/ex_small13]],
      soundStart              = [[weapon/missile/missile_fire11]],
      startVelocity           = 750,
      texture2                = [[lightsmoketrail]],
      tolerance               = 700,
      tracks                  = false,
      turnRate                = 0,
      turret                  = true,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 750,
    },

  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[guardtower_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
    },

  },

}

return lowerkeys({ turretmissile = unitDef })
