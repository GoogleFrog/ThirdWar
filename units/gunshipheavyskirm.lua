unitDef = {
  unitname            = [[gunshipheavyskirm]],
  name                = [[AH64 Gunship]],
  description         = [[Fire Support Gunship]],
  acceleration        = 0.25, --climb rate of 1100 ft/ min
  brakeRate           = 0.40,
  buildCostMetal      = 1800,
  energyUse        	  = .20 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .20 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[gunship.png]],
  canManualFire       = true,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP]],
  collide             = true,
  collisionVolumeOffsets = [[0 0 -5]],
  collisionVolumeScales  = [[40 20 60]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  cruiseAlt           = 180,

  customParams        = {
    airstrafecontrol = [[0]],
	modelradius    = [[10]],
    requireammo      = [[16]],
    reammoseconds    = [[30]],	
	landflystate   = [[2]],
	
  },

  explodeAs           = [[GUNSHIPEX]],
  fireState           = 2,
  moveState           = 1,    
  retreatState        = 1,
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  hoverAttack         = true,
  iconType            = [[gunshipheavyskirm]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  maxDamage           = 500,
  maxVelocity         = 9,
  maxFuel             = 100,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
  objectName          = [[ah64.s3o]],
  script              = [[ah64.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:emg_shells_m]],
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],
    },

  },
  sightDistance       = 1250,
  turninplace         = 1,
  turnRate            = 600,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[M230]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,
      badTargetCategory  = [[FIXEDWING TANK]],	  
      onlyTargetCategory = [[FIXEDWING SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP FIXEDWING HOVER]],
    },

    {
      def                = [[HELLFIRE_ROCKET]],
      mainDir            = [[0 -0.35 1]],
      maxAngleDif        = 60,
      badTargetCategory  = [[FIXEDWING INFANTRY]],
      onlyTargetCategory = [[FIXEDWING SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP FIXEDWING HOVER]],
    },	
	
    {
      def                = [[HYDRA_ROCKET_SALVO]],
      mainDir            = [[0 -0.35 1]],
      maxAngleDif        = 60,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP FIXEDWING HOVER]],
    },	

  },


  weaponDefs          = {

    M230 = {
      name                    = [[M230]],
      areaOfEffect            = 16,
	  accuracy                = 128,
      avoidFeature            = false,
	  burnBlow                = true,
      collideFriendly         = true,
      craterBoost             = 0.0,
      craterMult              = 0.0,

      customparams = {
        combatrange = 600,
        --light_camera_height = 2000,
        --light_color = [[0.9 0.84 0.45]],
        --light_ground_height = 120,
      },
	  
      damage                  = {
        default = 50, --should defeat light armor but not tanks
		tanks = 1,
		buildings = 5,
		ships    = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 2,
	  --myGravity               = 0.15, --was 0.15?
      noSelfDamage            = true,
      range                   = 2500 / Shared.RANGE_DIVISOR, --1500m
	  tolerance               = 4000 / Shared.RANGE_DIVISOR, --4km
      reloadtime              = 0.094, --625 to 650 rpm
      rgbColor                = [[1 0.95 0.5]],
      soundStart              = [[weapon/AH64]],
	  soundStartVolume        = 14,
	  soundHit                = [[weapon/impacts/dirt6]],
	  soundHitVolume          = 2,
      sprayAngle              = 1400,
	  size               	  = 0.5,
      
      turret                  = true,
      --weaponTimer             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2650, --805 m/s
    },

    HELLFIRE_ROCKET = {
      name                    = [[AGM-114 Hellfire]], 
      areaOfEffect            = 96,
      avoidFeature            = false,
      avoidFriendly           = true,
	  avoidNeutral            = false,
      cegTag                  = [[BANISHERTRAIL]],
      collideFriendly         = true,
      craterBoost             = 0.25,
      craterMult              = 0.5,
	  --commandfire             = false,	  

      customparams = {
		light_camera_height = 2500,
		light_color = [[0.55 0.27 0.05]],
		light_radius = 360,
	    setunitsonfire = "1",
	    burnchance = "1",		
      },

      damage                  = {
		default = 500,
        tanks = 1000, --18 apaches can destroy 288 tanks.  16 each.  4 pods carry 16 hellfires, so 1 rocket kills a tank each
        lightarmor = 1000,		
        subs    = 0,
      },

	  metalpershot            = 5,
      dance                   = 30,
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:napalm_phoenix]],
      fireStarter             = 250,
      flightTime              = 4,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[hobbes.s3o]],
      noSelfDamage            = true,
      range                   = 8000 / Shared.RANGE_DIVISOR, --500m to 8000m
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/missile/missile_fire6]],
      startVelocity           = 780,
      tolerance               = 9000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 9000,
      turret                  = true,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1350, --450 m/s
      --wobble                  = 0,	  
    },	
	
    HYDRA_ROCKET_SALVO = {
      name                    = [[70mm Hydra]],
      areaOfEffect            = 24,
      avoidFeature            = false,
      avoidFriendly           = true,
	  avoidNeutral            = false,
      burst                   = 19,
      burstrate               = 0.06,
      cegTag                  = [[missiletrailyellow]],
      collideFriendly         = true,
      craterBoost             = 0.123,
      craterMult              = 0.246,
	  commandfire             = true,	  

      customparams = {
		combatrange = 8000 / Shared.RANGE_DIVISOR,
		light_camera_height = 2500,
		light_color = [[0.55 0.27 0.05]],
		light_radius = 360,
	    setunitsonfire = "0",
	    burnchance = "0",		
      },
	  
	  
      damage                  = {
		default = 100,
        tanks = 100,
        subs    = 0,
      },

	  metalpershot            = 5, --$3000 each,  $57,000 for 19
      dance                   = 30,
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:MEDMISSILE_EXPLOSION]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[hobbes.s3o]],
      noSelfDamage            = true,
      range                   = 8000 / Shared.RANGE_DIVISOR, --500m to 8000m
      reloadtime              = 12,
      smokeTrail              = false,
      soundHit                = [[explosion/ex_med17]],
      soundStart              = [[weapon/missile/rapid_rocket_fire]],
      startVelocity           = 1400,
      tolerance               = 9000 / Shared.RANGE_DIVISOR,
      tracks                  = false,
      turnRate                = 1400,
      turret                  = true,
      weaponAcceleration      = 1000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 2100, --700 m/s
      wobble                  = 4000,	  
    },	
	
  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[ah64_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ gunshipheavyskirm = unitDef })
