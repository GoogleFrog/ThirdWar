unitDef = {
  unitname            = [[bomberheavy]],
  name                = [[B2]],
  description         = [[Stealth Bomber, can carry nukes]],
  brakerate           = 0.4,
  buildCostMetal      = 20000, --2 billion
  energyUse           = 2.00 * Shared.UPKEEP_MULTIPLIER,	--171,000 per flight hour for stealth bomber
  metalUse            = 2.00 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[stealthbomber.png]],
  canFly              = true,
  --canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  --canSubmerge         = false,
  canManualFire       = true,
  category            = [[FIXEDWING]],
  cloakCost              = 0.1,
  cloakCostMoving        = 0.1,
  collide             = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[80 10 30]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[95 25 60]],
  selectionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  cruiseAlt           = 601,

  customParams        = {
	modelradius    = [[30]],
	refuelturnradius = [[120]],
	requireammo    = [[1]],
    reammoseconds    = [[60]],	--todo: for each hour of flight the b2 needs 129 hours of maintenence.
	
	stockpiletime  = [[60]],
	stockpilecost  = [[4800]],
	priority_misc  = 0,
	landflystate   = [[2]],
  },

  decloakOnFire       = false,  
  explodeAs           = [[GUNSHIPEX]],
  --energyUse           = 5, --costs 171,000 per hour of flight time  
  --metalUse            = 5,
  diveState			  = 0,
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[stealthbomber]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  initCloaked         = true,
  maneuverleashlength = [[1380]],
  maxAcc              = 0.5,
  maxBank             = 0.6,
  maxDamage           = 300,
  maxElevator         = 0.02,
  --maxRudder           = 0.009,
  maxFuel             = 10,
  maxPitch            = 0.4,
  maxVelocity         = 28,
  minCloakDistance    = 510,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  refuelTime          = 60, 
  objectName          = [[b2.s3o]],   
  script              = [[stealthbomber.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:light_red]],
      [[custom:light_green]],
    },

  },
  sightDistance       = 1000,
  turnRadius          = 10,
  workerTime          = 0,

  weapons             = {

  
    {
      def                = [[BOGUS_BOMB]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER SUB]],
    },

    {
      def                = [[BOMBSABOT]],
      mainDir            = [[0 -1 0]],
      maxAngleDif        = 90,
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER SUB]],
    },
	{
      def                = [[SHIELD_CHECK]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER SUB]],
    },

    {
      def                = [[BOMBSABOTNUKE]],
      badTargetCategory  = [[SWIM LAND SUB SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },	


	
  },


  weaponDefs          = {

  
    BOGUS_BOMB = {
      name                    = [[Fake Bomb]],
      areaOfEffect            = 192,
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
	  },

      damage                  = {
        default = 0,
      },

	  --metalpershot        	  = 250,
      edgeEffectiveness       = 0,
      explosionGenerator      = [[custom:NONE]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      model                   = [[]],
      myGravity               = 1,
      range                   = 192,
      reloadtime              = 10,
      weaponType              = [[AircraftBomb]],
    },


    BOMBSABOT  = {
      name                    = [[B61 Bomb]], --or B83
      areaOfEffect            = 192,
      avoidFeature            = false,
      avoidFriendly           = false,
      --cegTag                  = [[KBOTROCKETTRAIL]],
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
	  cylinderTargeting	      = 1,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
		light_color = [[1.1 0.9 0.45]],
		light_radius = 220,
	  },

      damage                  = {
        default = 5000.01,
        planes  = 5000.01,
        subs    = 1000.01,
      },
	  
	  customParams            = {
		torp_underwater = [[bomberprec_a_torpedo]],
	  },

      explosionGenerator      = [[custom:NUKE_150]],
	  metalpershot            = 0, --should be 250 but its really annoying when it doesnt bomb, factor into unit cost??
      fireStarter             = 70,
      flightTime              = 2,
	  heightmod				  = 0,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
	  leadlimit               = 0,
      model                   = [[wep_b_paveway.s3o]],
	  leadLimit               = 20,
      range                   = 192,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[weapon/bomb_hit]],
      soundStart              = [[weapon/bomb_drop]],
	  --stockpile               = true,
      --stockpileTime           = 60,	  
      startVelocity           = 200,
      tolerance               = 8000,
      tracks                  = true,
      turnRate                = 2500,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 50,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1500,
    },
	
	SHIELD_CHECK = {
      name                    = [[Fake Poker For Shields]],
      areaOfEffect            = 0,
	  avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
	  collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
	  },

      damage                  = {
        default = -1E-06,
      },

	  explosionGenerator      = [[custom:NONE]],
      flightTime              = 2,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
	  model                   = [[emptyModel.s3o]],
      range                   = 600,
      reloadtime              = 10,
      rgbColor                = [[0 0 0]],
	  startVelocity           = 2000,
	  texture1                = [[null]],
	  texture2                = [[null]],
	  texture3                = [[null]],
      turret                  = true,
	  trajectoryHeight        = 1.5,
      weaponAcceleration      = 2000,
	  weaponType              = [[MissileLauncher]],
      weaponVelocity          = 2000,
	  waterWeapon             = true,
    },

    BOMBSABOTNUKE  = {
      name                    = [[400 kt Nuclear Bomb]], --or B83
      areaOfEffect            = 1800,
      avoidFeature            = false,
      avoidFriendly           = false,
      --cegTag                  = [[KBOTROCKETTRAIL]],
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 4,
      craterMult              = 4,
	  cylinderTargeting	      = 1,
	  --commandfire             = true,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
		light_color = [[1.1 0.9 0.45]],
		light_radius = 0,
	  },

      damage                  = {
        default = 9000.1,
        subs    = 800.1,
      },


      explosionGenerator      = [[custom:LONDON_FLAT]],
	  --metalpershot            = 0, --should be 250 but its really annoying when it doesnt bomb, factor into unit cost??
      fireStarter             = 70,
      flightTime              = 2,
	  heightmod				  = 0,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
	  leadlimit               = 0,
      model                   = [[wep_b_paveway.s3o]],
	  leadLimit               = 20,
      range                   = 192,
      reloadtime              = 60,
      smokeTrail              = false,
	  stockpile               = true,
      stockpileTime           = 120,	
      soundHit                = [[explosion/nukehit]],
	  soundHitVolume		  = 9,
      soundStart              = [[weapon/bomb_drop]],
      texture1                = [[null]], --flare	  
      startVelocity           = 200,
      tolerance               = 8000,
      tracks                  = true,
      turnRate                = 2500,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 50,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1500,
    },	
	
	A_TORPEDO = {
      name                    = [[Torpedo BombSabot For Bubble Effect]],
      areaOfEffect            = 32,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 4000,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
	  metalpershot        	  = 250,
      fixedLauncher           = true,
      flightTime              = 1.5,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_b_paveway.s3o]],
	  numbounce               = 4,
      range                   = 225,
      reloadtime              = 5,
      soundHit                = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/torpedo]],
      startVelocity           = 200,
      tracks                  = false,
      turnRate                = 3750,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 50,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 200,
    },	
  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[b2_dead.s3o]],
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

return lowerkeys({ bomberheavy = unitDef })
