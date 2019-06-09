unitDef = {
  unitname                      = [[turretaaheavy]],
  name                          = [[LR SAM]],
  description                   = [[Very Long-Range Anti-Air Missile Tower]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostMetal                = 1500,
  builder                       = false,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 6,
  --buildingGroundDecalSizeY      = 6,
  --buildingGroundDecalType       = [[turretaaheavy_aoplane.dds]],
  buildPic                      = [[LRSAM.png]],
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[74 74 74]],
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
	modelradius    = [[37]],
	--freestockpile  = [[0]],
	stockpilecost  = [[300]],
	stockpiletime  = [[20]],
    neededlink     = 10,
	pylonrange     = 50,
  },

  sfxtypes                      = {

    explosiongenerators = {
	  [[custom:sa6rearsmoke]],
      [[custom:STORMBACK]],
    },

  },  
  
  explodeAs                     = [[ESTOR_BUILDING]],
  footprintX                    = 4,
  footprintZ                    = 4,
  iconType                      = [[heavysam]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 1000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[LRSAM.s3o]],
  onoffable                     = false,
  script						= [[turretLRSAM.lua]],
  selfDestructAs                = [[ESTOR_BUILDING]],
  sightDistance                 = 500,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooooooooooooooo]],

  weapons                       = {

    {
      def                = [[ADVSAM]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP SATELLITE]],
    },

  },


  weaponDefs                    = {

    ADVSAM = {
      name                    = [[Advanced Anti-Air Missile]],
      areaOfEffect            = 96,
	  --accuracy                = 16,
      canAttackGround         = false,
      cegTag                  = [[turretaaheavytrail]],
      craterBoost             = 0.1,
      craterMult              = 0.2,
      cylinderTargeting       = 3.2,

	  customParams        	  = {
		isaa = [[1]],

		light_color = [[1.0 1.0 0.5]],
		light_radius = 600,
	  },

      damage                  = {
        default    = 1000,
        planes     = 1000,
        subs       = 0,
      },

      edgeEffectiveness       = 0.75,
      energypershot           = 0,
      explosionGenerator      = [[custom:MISSILE_HIT_SPHERE_120]],
      fireStarter             = 90,
      flightTime              = 5,
      groundbounce            = 1,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      --metalpershot            = 0,
      model                   = [[wep_m_frostshard.s3o]],
      noSelfDamage            = true,
      range                   = 400000 / Shared.RANGE_DIVISOR,
      reloadtime              = 8,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/heavy_aa_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startVelocity           = 780,
      stockpile               = true,
      stockpileTime           = 2000,
      tolerance               = 16000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
	  texture2                = [[AAsmoketrail]],
      trajectoryHeight        = 0.55,
      turnRate                = 9000,
      turret                  = true,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 2100,
    },

  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[LRSAM_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4a.s3o]],
    },

  },

}

return lowerkeys({ turretaaheavy = unitDef })
