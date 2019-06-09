unitDef = {
  unitname               = [[subtacmissile]],
  name                   = [[Ballistic Missile Submarine]],
  description            = [[Nuclear Missile Submarine, drains 30 m/s ]],
  acceleration           = 0.0372,
  activateWhenBuilt      = true,
  brakeRate              = 0.0942,
  buildCostMetal         = 10000,
  energyUse           	 = 1.0 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = 1.0 * Shared.UPKEEP_MULTIPLIER, 
  builder                = false,
  buildPic               = [[submarine2.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canManualFire          = true,
  category               = [[SUB SINK]],
  collisionVolumeOffsets = [[0 -5 0]],
  collisionVolumeScales  = [[30 25 110]],
  collisionVolumeType    = [[cylY]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[30]],
	stockpiletime  = [[240]],
	stockpilecost  = [[7200]], --nuke is 9 billion, we'll make it 9 million for the game
	priority_misc  = 0, -- Low
  },

  explodeAs              = [[BIG_UNITEX]],
  fireState              = 0,
  floatstate			 = 1,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[subtacmissile]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 1000,
  maxVelocity            = 2,
  minCloakDistance       = 75,
  minWaterDepth          = 24,
  movementClass          = [[BOAT4]],
  moveState              = 0,
  noAutoFire             = false,
  objectName             = [[subtacmissile.s3o]],
  selfDestructAs         = [[ATOMIC_BLASTSML]],
  script                 = [[subtacmissile.lua]],
  sightDistance          = 360,
  sonarDistance          = 1500,
  turninplace            = 0,
  turnRate               = 20,
  upright                = true,
  waterline              = 25,
  workerTime             = 0,

  weapons                = {
    --{
    --  def = [[SUB_AMD_ROCKET]],
    --},




    {
      def                = [[TACNUKE]],
      badTargetCategory  = [[SWIM LAND SUB SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },



    {
      def                = [[FAKEWEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],      
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 30,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },
	
	
  },

  weaponDefs             = {

    TACNUKE        = {
      name                    = [[450kt W88 Trident II Nuclear Missile]],      
      areaOfEffect            = 1900,
      cegTag                  = [[NUCKLEARMINI]],
      collideFriendly         = false,
      collideFeature          = false,
      commandfire             = true,
      craterBoost             = 6,
      craterMult              = 6,

	  customParams        	  = {
		light_color = [[2.92 2.64 1.76]],
		light_radius = 3000,
	  },

      damage                  = {
        default = 10000.1,
		subs    = 1000.1,
      },

      edgeEffectiveness       = 0.3,
      explosionGenerator      = [[custom:LONDON_FLAT]],
      fireStarter             = 0,
      flightTime              = 180,
      impulseBoost            = 0.5,
      impulseFactor           = 0.2,
      interceptedByShieldType = 65,
      model                   = [[crblmsslr.s3o]],
      noSelfDamage            = false,
      range                   = 72000,
      reloadtime              = 5,
      smokeTrail              = false,
	  soundStart              = [[weapon/missile/heavymissile_launch]],
	  soundStartVolume		  = 5,
      soundHit                = [[explosion/nukehit]],
	  soundHitVolume		  = 10,
      startVelocity           = 800,
      stockpile               = true,
      stockpileTime           = 240,
      targetable              = 1,
      texture1                = [[null]], --flare
      tolerance               = 72000,
      weaponAcceleration      = 0,
      weaponTimer             = 10,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 800,
    },   
  
    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      canattackground         = false,
      collideFriendly         = true,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[torptrailpurple]],

--      customparams = {
--        timeslow_damagefactor = 2,
--      },

      damage                  = {
		--buildings = 2000,
        default = 2000,
        --subs    = 2000,
      },

      explosionGenerator      = [[custom:TORPEDOHITHUGE]],
	  metalpershot            = 400,
      fixedLauncher           = true,
      flightTime              = 131,
      groundbounce            = 1,
      impactOnly              = true,
      impulseBoost            = 60,
      impulseFactor           = 0.6,
      interceptedByShieldType = 0,
	  leadlimit               = 0,
      model                   = [[wep_t_longbolt.s3o]],
	  numbounce               = 0,
      noSelfDamage            = true,
      range                   = 38000 / Shared.RANGE_DIVISOR,
      reloadtime              = 15,
      rgbcolor                = [[0.9 0.1 0.9]],
      soundHit                = [[explosion/wet/ex_underwater_pulse]],
      soundHitVolume          = 6,
      soundStart              = [[weapon/torpedo]],
      soundStartVolume        = 6,
      startVelocity           = 63,
      tolerance               = 200,
      tracks                  = true,
      turnRate                = 20,
      turret                  = false,
      waterWeapon             = true,
      weaponAcceleration      = 1000,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 120,
    },


    FAKEWEAPON  = {
      name                    = [[Fake Torpedo - Points me in the right direction]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      burnblow                = true,
      collideFriendly         = true,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0.1,
        planes  = 0.1,
        subs    = 0.1,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      flightTime              = 131,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      model                   = [[wep_t_longbolt.s3o]],
      range                   = 38000 / Shared.RANGE_DIVISOR,
      reloadtime              = 30,
      startVelocity           = 63,
      tolerance               = 100,
      tracks                  = true,
      turnRate                = 20,
      turret                  = false,
      waterWeapon             = true,
      weaponAcceleration      = 1000,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 120,
    }, 


  
    SUB_AMD_ROCKET = {
      name                    = [[Anti-Nuke Missile]],
      areaOfEffect            = 420,
      collideFriendly         = false,
      coverage                = 1500,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 3000,
		buildings = 4000,
		ships = 8000,
        subs    = 75,
      },

      explosionGenerator      = [[custom:ANTINUKE]],
      fireStarter             = 100,
      flightTime              = 15,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      interceptor             = 1,
      model                   = [[antinukemissile.s3o]],
      noSelfDamage            = true,
      range                   = 3000,
      reloadtime              = 12,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startVelocity           = 400,
      tolerance               = 4000,
      tracks                  = true,
      turnrate                = 65535,
      waterWeapon             = true,
      weaponAcceleration      = 400,
      weaponTimer             = 1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1300,
    },



  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[subtacmissile_dead.s3o]],
	  collisionVolumeOffsets = [[0 -5 0]],
	  collisionVolumeScales  = [[30 25 110]],
	  collisionVolumeType    = [[box]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ subtacmissile = unitDef })
