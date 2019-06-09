unitDef = {
  unitname            = [[tankriot]],
  name                = [[Gainful]],  --based on SA6
  description         = [[SA6 Medium AA Missile Launcher]],
  acceleration        = 0.004,
  brakeRate           = 0.005,
  buildCostMetal      = 1000,
  energyMake          = -0.10 * Shared.UPKEEP_MULTIPLIER,
  metalMake           = -0.10 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[SA6.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 -2 0]],
  collisionVolumeScales  = [[28 32 9]], 
  collisionVolumeType    = [[cylY]], 
  corpse              = [[DEAD]],

  customParams        = {
	modelradius    = [[18]],	
	selection_scale = 0.5,    
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[tankriot]],
  moveState			  = 0,
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 750,
  maxSlope            = 18,
  maxVelocity         = 2,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM LAND SINK TURRET SHIP SWIM FLOAT SUB HOVER DECOY]],
  objectName          = [[SA6.s3o]],
  script              = [[SA6.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 500,
  trackOffset         = 8,
  trackStrength       = 10,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 16,
  turninplace         = 0,
  turnRate            = 355,
  workerTime          = 0,

  sfxtypes               = {

    explosiongenerators = {
	  [[custom:sa6rearsmoke]],
      [[custom:SLASHMUZZLE]],
      
    },

  },  
  
  weapons             = {

    {
      def                = [[TAWF_BANISHER]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	  --maxAngleDif        = 60,
    },

  },


  weaponDefs          = {

    TAWF_BANISHER = {
      name                    = [[3M9M1 Missile]],
      areaOfEffect            = 32,
	  cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      --burst                   = 3,
      --burstrate               = 2.667,
      cylinderTargeting       = 5,	  
	  canattackground         = false,

	  customParams            = {
		reaim_time = 15, -- COB
	    --gatherradius = [[120]],
	    --smoothradius = [[80]],
	    --smoothmult   = [[0.25]],
		script_reload = [[10]],
		script_burst = [[3]],		
		
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
      reloadtime              = 15,
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


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[SA6_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ tankriot = unitDef })
