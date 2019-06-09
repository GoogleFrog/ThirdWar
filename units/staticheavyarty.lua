unitDef = {
  unitname                      = [[staticheavyarty]],
  name                          = [[Big Bertha]],
  description                   = [[Strategic Plasma Cannon]],
  buildCostMetal                = 10000,
  energyUse           	 		= 1.0 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 		= 1.0 * Shared.UPKEEP_MULTIPLIER,   
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  buildingGroundDecalSizeY      = 6,
  buildingGroundDecalType       = [[staticheavyarty_aoplane.dds]],
  buildPic                      = [[staticheavyarty.png]],
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[70 194 70]],
  collisionVolumeType           = [[cylY]],
  corpse                        = [[DEAD]],

  customParams                  = {
	neededlink     = 50,
    pylonrange     = 50,	
    modelradius    = [[35]],
	stockpiletime  = [[60]],
	stockpilecost  = [[200]],
	priority_misc  = 1, -- Low		
  },

  explodeAs                     = [[ATOMIC_BLAST]],
  footprintX                    = 4,
  footprintZ                    = 4,
  iconType                      = [[lrpc]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  losEmitHeight                 = 90,
  maxDamage                     = 4000,
  maxSlope                      = 18,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noChaseCategory               = [[FIXEDWING GUNSHIP]],
  objectName                    = [[armbrtha.s3o]],
  script                        = [[staticheavyarty.lua]],
  selfDestructAs                = [[ATOMIC_BLAST]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:staticheavyarty_SHOCKWAVE]],
      [[custom:staticheavyarty_SMOKE]],
      [[custom:staticheavyarty_FLARE]],
    },

  },

  sightDistance                 = 1000,
  useBuildingGroundDecal        = true,
  yardMap                       = [[oooo oooo oooo oooo]],

  weapons                       = {

    {
      def                = [[PLASMA]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER SUB GUNSHIP]],
    },

  },

  weaponDefs                    = {

    PLASMA = {
      name                    = [[Very Heavy Plasma Cannon]],
      accuracy                = 256,
      areaOfEffect            = 192,
      avoidFeature            = false,
      avoidGround             = false,
      cegTag                  = [[vulcanfx]],
      craterBoost             = 0.25,
      craterMult              = 0.5,

      customParams            = {
        gatherradius = [[128]],
        smoothradius = [[96]],
        smoothmult   = [[0.4]],
		
		light_color = [[2.4 1.5 0.6]],
      },
	  
      damage                  = {
        default = 20000,
        subs    = 2000,
      },

      explosionGenerator      = [[custom:lrpc_expl]],
	  fireTolerance           = 1820, -- 10 degrees
      impulseBoost            = 0.5,
      impulseFactor           = 0.2,
      interceptedByShieldType = 2,
      noSelfDamage            = true,
      range                   = 12000,
      reloadtime              = 20,
      stockpile               = true,
      stockpileTime           = 20,	  
	  --metalpershot            = 5,	  
      soundHit                = [[weapon/cannon/reaper_hit_boost]],
	  soundHitVolume		  = 10,
      soundStart              = [[weapon/cannons/huge]],
	  soundStartVolume		  = 8,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1900,
    },

  },

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[armbrtha_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ staticheavyarty = unitDef })
