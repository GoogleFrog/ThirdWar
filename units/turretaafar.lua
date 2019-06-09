unitDef = {
  unitname                      = [[turretaafar]],
  name                          = [[Chainsaw]],
  description                   = [[Long-Range Anti-Air Missile Battery]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostMetal                = 800,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 3.6,
  buildingGroundDecalSizeY      = 3.6,
  buildingGroundDecalType       = [[turretaafar_aoplane.dds]],
  buildPic                      = [[turretaafar.png]],
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 12 0]],
  collisionVolumeScales         = [[58 76 58]],
  collisionVolumeType	        = [[CylY]],
  corpse                        = [[DEAD]],

  customParams                  = {
	aimposoffset   = [[0 10 0]],
	modelradius    = [[19]],
  },

  explodeAs                     = [[LARGE_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 4,
  footprintZ                    = 4,
  iconType                      = [[staticskirmaa]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  losEmitHeight                 = 40,
  maxDamage                     = 500,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 5000,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[armcir.s3o]],
  script                        = [[turretaafar.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  sightDistance                 = 500,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooooooooooooooo]],
	
  sfxtypes            = {

    explosiongenerators = {
      [[custom:light_red_short]],
      [[custom:light_green_short]],
      [[custom:light_blue_short]],
    },

  },
	
  weapons                       = {

    {
      def                = [[MISSILE]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },


  weaponDefs                    = {

    MISSILE = {
      name                    = [[Long-Range SAM]],
      --areaOfEffect            = 24,
	  accuracy                = 16,
      canattackground         = false,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[0.6 0.7 0.7]],
		light_radius = 420,
	  },

      damage                  = {
        default = 500,
        planes  = 500,
        subs    = 12.5,
      },

      explosionGenerator      = [[custom:MISSILE_HIT_PIKES_160]],
      fireStarter             = 20,
      flightTime              = 5,
      impactOnly              = true,
      impulseBoost            = 0.123,
      impulseFactor           = 0.0492,
      interceptedByShieldType = 1,
      model                   = [[wep_m_frostshard.s3o]],
      noSelfDamage            = true,
      range                   = 15000 / Shared.RANGE_DIVISOR,
      reloadtime              = 5.5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/med_aa_hit]],
      soundStart              = [[weapon/missile/med_aa_fire]],
      soundTrigger            = true,
      startVelocity           = 500,
      texture2                = [[lightsmoketrail]],
      tolerance               = 16000,
      tracks                  = true,
      turnRate                = 10000,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1900,
    },

  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[chainsaw_d.dae]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3a.s3o]],
    },

  },

}

return lowerkeys({ turretaafar = unitDef })
