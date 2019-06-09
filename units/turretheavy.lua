unitDef = {
  unitname                      = [[turretheavy]],
  name                          = [[Cannon Tower]],
  description                   = [[Medium Range Defense Fortress - Power by connecting to a 50 energy grid]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostMetal                = 1000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[turretheavy_aoplane.dds]],
  buildPic                      = [[turretheavy.png]],
  category                      = [[SINK TURRET]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[45 100 45]],
  collisionVolumeType           = [[CylY]],
  corpse                        = [[DEAD]],

  customParams                  = {
    keeptooltip    = [[any string I want]],
    neededlink     = 50,
    pylonrange     = 50,
	extradrawrange = 430,
	aimposoffset   = [[0 30 0]],
	midposoffset   = [[0 0 0]],
	modelradius    = [[20]],
  },

  damageModifier                = 0.25,
  energyUse                     = 2,
  explodeAs                     = [[ESTOR_BUILDING]],
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[staticassaultriot]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  losEmitHeight                 = 70,
  maxDamage                     = 3000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noChaseCategory               = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
  objectName                    = [[DDM.s3o]],
  onoffable                     = true,
  script                        = [[turretheavy.lua]],
  selfDestructAs                = [[ESTOR_BUILDING]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],
    },

  },
  sightDistance                 = 1000,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],

  weapons                       = {

    {
      def                = [[PLASMA]],
	  badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs                    = {



    PLASMA  = {
      name                    = [[Heavy Cannon]],
	  accuracy                = 64,
      areaOfEffect            = 128,
      avoidFeature            = false,
      burnBlow                = true,
      craterBoost             = 0.7,
      craterMult              = 1.2,

      customParams            = {
		light_color = [[2.2 1.6 0.9]],
		light_radius = 0,
      },

      damage                  = {
        default = 1000,
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:FLASHSMALLBUILDING]],
	  metalpershot            = 2,
      fireStarter             = 99,
	  flightTime              = 9,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      proximityPriority       = 6,
      range                   = 6000 / Shared.RANGE_DIVISOR,
      reloadtime              = 15,
      soundHit                = [[weapon/cannon/cannon_hit4]],
	  --soundHitVolume          = 70,
      soundStart              = [[weapon/cannon/heavy_cannon2]],
      sprayangle              = 768,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 480,
    },

  },


  featureDefs                   = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[ddm_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ turretheavy = unitDef })
