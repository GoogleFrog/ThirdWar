unitDef = {
  unitname               = [[subraider]],
  name                   = [[Submarine]],
  description            = [[Attack Submarine (Stealth Raider)]],
  acceleration           = 0.0372,
  activateWhenBuilt      = true,
  brakeRate              = 0.0942,
  buildCostMetal         = 7000, --2016 price is 1.5 billion for a los angeles class
  energyUse           	 = .70 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .70 * Shared.UPKEEP_MULTIPLIER, 
  builder                = false,
  buildPic               = [[submarine.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SUB SINK]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[22 22 89]],
  collisionVolumeType    = [[CylZ]],
  selectionVolumeOffsets = [[0 10 0]],
  selectionVolumeScales  = [[32 30 132]],
  selectionVolumeType    = [[cylZ]],  
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[26]],
	aimposoffset   = [[0 -5 0]],
	midposoffset   = [[0 -5 0]],
    turnatfullspeed = [[1]],
	stockpiletime  = [[20]],
	stockpilecost  = [[400]],
	priority_misc  = 0, -- Medium	
  },

  explodeAs              = [[BIG_UNITEX]],
  fireState              = 1,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[subraider]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 1000,
  maxVelocity            = 2,
  minCloakDistance       = 75,
  minWaterDepth          = 24,
  movementClass          = [[BOAT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName             = [[sub.s3o]],
  script                 = [[subraider.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 360,
  sonarDistance          = 1600,
  turninplace            = 0,
  turnRate               = 30,
  upright                = true,
  waterline              = 20,
  workerTime             = 0,

  weapons                = {

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

    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      canattackground         = false,
      collideFriendly         = true,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[torptrailpurple]],

      customparams = {
        timeslow_damagefactor = 2,
      },

      damage                  = {
		--buildings = 2000,
        default = 2000,
        --subs    = 2000,
      },

      explosionGenerator      = [[custom:TORPEDOHITHUGE]],
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
      reloadtime              = 5,
      rgbcolor                = [[0.9 0.1 0.9]],
      soundHit                = [[explosion/wet/ex_underwater_pulse]],
      soundHitVolume          = 6,
      soundStart              = [[weapon/torpedo]],
      soundStartVolume        = 6,
      startVelocity           = 63,
      tolerance               = 13000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 1000,
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
	  --metalpershot            = 400,
      stockpile               = true,
      stockpileTime           = 10^4,	  
      fixedLauncher           = true,
      flightTime              = 131,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      model                   = [[wep_t_longbolt.s3o]],
      range                   = 38000 / Shared.RANGE_DIVISOR,
      reloadtime              = 5,
      startVelocity           = 63,
      tolerance               = 13000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 1000,
      turret                  = false,
      waterWeapon             = true,
      weaponAcceleration      = 100,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 120,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[sub_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ subraider = unitDef })
