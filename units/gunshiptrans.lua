unitDef = {
  unitname            = [[gunshiptrans]],
  name                = [[UH60 Blackhawk]],
  description         = [[Air Transport]],
  acceleration        = 0.2,
  brakeRate           = 0.96,
  buildCostMetal      = 1000, --should be 2500 for 25 million but...
  energyUse           = .15 * Shared.UPKEEP_MULTIPLIER,
  metalUse            = .15 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[transportchopper.png]],
  canFly              = true,
  canGuard            = true,
  canload             = [[1]],
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[28 16 35]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[45 16 45]],
  selectionVolumeType    = [[cylY]],
  corpse              = [[DEAD]],
  cruiseAlt           = 140,

  customParams        = {
    airstrafecontrol = [[1]],
	midposoffset   = [[0 0 0]],
	modelradius    = [[15]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  hoverAttack         = true,
  iconType            = [[gunshiptransport]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  maxDamage           = 300,
  maxVelocity         = 17.5,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[smallTransport.s3o]],
  script              = [[gunshiptrans.lua]],
  releaseHeld         = true,
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:ATLAS_ENGINE]],
    },

  },
  sightDistance       = 1000,
  transportCapacity   = 22, --11 troops, value is 4x, 1 guy is 4 size
  --transportMass       = 500,
  transportSize       = 5,
  turninplace         = 1,
  turnRate            = 550,
  verticalSpeed       = 30,

  weapons                = {



    {
      def                = [[M240MACHINEGUN]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  mainDir            = [[1 -1 1]],
      maxAngleDif        = 200,
    },
	
	


  },


  weaponDefs             = {

	
   M240MACHINEGUN = {
      name                    = [[M240 Machinegun]],
      accuracy                = 350,
      alphaDecay              = 0.7,
      areaOfEffect            = 96,
      burnblow                = true,
      burst                   = 3,
      burstrate               = 0.1,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customParams        = {
		light_camera_height = 1600,
		light_color = [[0.8 0.76 0.38]],
		light_radius = 0,
      },

      damage                  = {
        default = 12,
        planes  = 0,
        subs    = 0.0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 300,
      reloadtime              = 0.1,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/distant_fire3]],
      stages                  = 10,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1000,
    },
	
 
  },  
  
  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[smalltrans_d.dae]],
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

return lowerkeys({ gunshiptrans = unitDef })
