unitDef = {
  unitname                      = [[staticnuke]],
  name                          = [[Nuclear Silo]],
  description                   = [[Strategic Nuclear Launcher, 4 minute stockpile, nuke costs 7200m ]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostMetal                = 8000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 10,
  buildingGroundDecalSizeY      = 10,
  buildingGroundDecalType       = [[staticnuke_aoplane.dds]],
  buildPic                      = [[staticnuke.png]],
  category                      = [[SINK UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
	stockpiletime  = [[240]],
	stockpilecost  = [[7200]],
	priority_misc  = 1, -- Medium
  },

  explodeAs                     = [[ATOMIC_BLAST]],
  footprintX                    = 6,
  footprintZ                    = 8,
  iconType                      = [[nuke]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 10000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[Silencer.s3o]],
  script                        = [[staticnuke.lua]],
  selfDestructAs                = [[ATOMIC_BLAST]],
  sightDistance                 = 500,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardmap                       = [[oooooooooooooooooooooooooooooooooooooooooooooooo]],

  weapons                       = {

    {
      def                = [[CRBLMSSL]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs                    = {

    CRBLMSSL = {
      name                    = [[500 kt Nuclear Missile]],
      areaOfEffect            = 2100,
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
        default = 11500.1,
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
      reloadtime              = 5,
      smokeTrail              = false,
	  soundStart              = [[weapon/missile/heavymissile_launch]],
	  soundStartVolume		  = 15,
      soundHit                = [[explosion/nukehit]],
	  soundHitVolume		  = 10,
      startVelocity           = 800,
      stockpile               = true,
      stockpileTime           = 240,
      targetable              = 1,
      texture1                = [[null]], --flare
      tolerance               = 4000,
      weaponAcceleration      = 0,
      weaponTimer             = 10,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 800,
    },

  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 8,
      object           = [[silencer_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 6,
      footprintZ       = 8,
      object           = [[debris4x4a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ staticnuke = unitDef })
