unitDef = {
  unitname            = [[topol]],
  name                = [[Topol]],
  description         = [[Mobile ICBM launcher, nuke costs 7200m ]], --RT-2PM2 Topol-M
  acceleration        = 0.012,
  brakeRate           = 0.018,
  buildCostMetal      = 1000, --$250,000
  energyUse           	 = .025 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .025 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[topol.png]],
  canMove             = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[80 20 40]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],

  customParams           = {
	modelradius    = [[30]],
	stockpiletime  = [[240]],
	stockpilecost  = [[7200]], --nuke is 9 billion, we'll make it 9 million for the game
	priority_misc  = 0, -- Low
	modelradius    = [[36]],	
	selection_scale = 2.0,  	
  },  



  explodeAs           = [[BIG_UNITEX_MERL]],
  fireState           = 0,
  moveState           = 0,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehiclelrarty]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 500,
  maxSlope            = 18,
  maxVelocity         = 3,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  noChaseCategory     = [[TERRAFORM SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
  objectName          = [[topol.s3o]],
  script              = [[topol.lua]],
  selfDestructAs      = [[custom:LONDON_FLAT]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],
    },

  },

  sightDistance       = 500,
  trackOffset         = 15,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 40,
  turninplace         = 0,
  turnRate            = 200,

  weapons             = {

    {
      def                = [[TACNUKE]],
      badTargetCategory  = [[SWIM LAND SUB SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },
  },

  weaponDefs          = {

    TACNUKE        = {
      name                    = [[800kt W88 Trident II Nuclear Missile]],      
      areaOfEffect            = 2100,
	  accuracy                = 40, --600 ft accurate radius	
      cegTag                  = [[NUCKLEARMINI]],
      collideFriendly         = false,
      collideFeature          = false,
      commandfire             = false,
      craterBoost             = 8,
      craterMult              = 8,

	  customParams        	  = {
		light_color = [[2.92 2.64 1.76]],
		light_radius = 3000,
	  },

      damage                  = {
        default = 13000.1,
		subs    = 2000.1,
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
      reloadtime              = 240,
      smokeTrail              = false,
	  soundStart              = [[weapon/missile/heavymissile_launch]],
	  soundStartVolume		  = 15,	  
      soundHit                = [[explosion/nukehit]],
	  soundHitVolume		  = 8,
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

  },

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 6,
      object           = [[topol_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 6,
      object           = [[debris3x3c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ topol = unitDef })

