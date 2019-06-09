unitDef = {
  unitname               = [[gunshipkrow]],
  name                = [[B2]],
  description         = [[Stealth Bomber]],
  brakerate           = 0.4,
  buildCostMetal      = 10000,
  builder             = false,
  buildPic            = [[bomberprec.png]],
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
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
	modelradius    = [[15]],
	refuelturnradius = [[120]],
	requireammo    = [[1]],
    reammoseconds    = [[60]],	
  },

  decloakOnFire       = false,  
  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bomberassault]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  initCloaked         = true,
  maneuverleashlength = [[1380]],
  maxAcc              = 0.5,
  maxBank             = 0.6,
  maxDamage           = 500,
  maxElevator         = 0.02,
  --maxRudder           = 0.009,
  maxFuel             = 10000,
  maxPitch            = 0.4,
  maxVelocity         = 50,
  minCloakDistance    = 150,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName          = [[corshad.s3o]],
  refuelTime          = 60,  
  script              = [[bomberprec.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:light_red]],
      [[custom:light_green]],
    },

  },
  sightDistance       = 1000,
  turnRadius          = 5,
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


  },


  weaponDefs          = {

  
    BOGUS_BOMB = {
      name                    = [[Fake Bomb]],
      areaOfEffect            = 80,
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
	  },

      damage                  = {
        default = 0,
      },

	  metalpershot        	  = 250,
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
      name                    = [[Guided Bomb]],
      areaOfEffect            = 32,
      avoidFeature            = false,
      avoidFriendly           = false,
      cegTag                  = [[KBOTROCKETTRAIL]],
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
        default = 4000.1,
        planes  = 0.1,
        subs    = 2000.1,
      },
	  
	  customParams            = {
		torp_underwater = [[bomberprec_a_torpedo]],
	  },

      explosionGenerator      = [[custom:xamelimpact]],
	  metalpershot            = 250,
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
      reloadtime              = 5,
      smokeTrail              = false,
      soundHit                = [[weapon/bomb_hit]],
      soundStart              = [[weapon/bomb_drop]],
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
      reloadtime              = 0.1,
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
      object           = [[spirit_dead.s3o]],
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
return lowerkeys({ gunshipkrow = unitDef })
