unitDef = {
  unitname                      = [[turretaaclose]],
  name                          = [[SAM]],
  description                   = [[Anti-Air Missile Turret]],
  buildCostMetal                = 400,
  builder                       = false,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 2,
  --buildingGroundDecalSizeY      = 2,
  --buildingGroundDecalType       = [[turretaaclose_aoplane.dds]],
  buildPic                      = [[SAM.png]],
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 12 0]],
  collisionVolumeScales         = [[42 53 42]],
  collisionVolumeType	        = [[CylY]],
  corpse                        = [[DEAD]],

  customParams                  = {

  
  },

  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[defenseskirmaa]],
  levelGround                   = false,
  maxDamage                     = 100,
  maxSlope                      = 18,
  minCloakDistance              = 75,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[SAM.s3o]],
  script                        = [[turretSAM.lua]],
  selfDestructAs                = [[SMALL_BUILDINGEX]],

  sfxtypes                      = {

    explosiongenerators = {
--      [[custom:STORMMUZZLE]],
	  [[custom:sa6rearsmoke]],
      [[custom:STORMBACK]],
    },

  },
  sightDistance                 = 500,
  useBuildingGroundDecal        = true,
  waterline						= 10,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo]],

  weapons                       = {

    {
      def                = [[MISSILE]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	  --maxAngleDif        = 60,
    },

  },


  weaponDefs                    = {

    MISSILE = {
      name                    = [[3M9M1 Missile]],
      areaOfEffect            = 48,
	  cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      --burst                   = 3,
      --burstrate               = 2.667,
      cylinderTargeting       = 5,	  
	  canattackground         = false,

	  customParams            = {
		reaim_time = 10, -- COB
	    --gatherradius = [[120]],
	    --smoothradius = [[80]],
	    --smoothmult   = [[0.25]],
		script_reload = [[30]], --book says 10 minute reload time...
		script_burst = [[4]],		
		
		light_color = [[1.0 1 0.2]],
		light_radius = 256,
		isaa = [[1]],
	  },
	  
      damage                  = {
        default = 500,
        subs    = 0,
      },

      edgeEffectiveness       = 0.4,
	  metalpershot            = 6,	  --check this
      explosionGenerator      = [[custom:xamelimpact]],
      fireStarter             = 20,
      flightTime              = 5,
      impulseBoost            = 0,
      impulseFactor           = 0.6,
      interceptedByShieldType = 1,
      model                   = [[wep_m_frostshard.s3o]],
      noSelfDamage            = true,
      range                   = 20000 / Shared.RANGE_DIVISOR, --SA6 range is 20km
      reloadtime              = 10,
      smokeTrail              = true,
	  texture2                = [[lightsmoketrail]],
      soundHit                = [[weapon/missile/missile2_hit]],
	  soundHitVolume          = 0.75,
      soundStart              = [[weapon/missile/SA6_3]],
	  soundStartVolume        = 2.75,
      startVelocity           = 800,
      tolerance               = 21000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      trajectoryHeight        = 0.45,
      turnRate                = 10000,
      turret                  = true,
      weaponAcceleration      = 500,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1956,
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
      object           = [[debris3x3a.s3o]],
    },

  },

}

return lowerkeys({ turretaaclose = unitDef })
