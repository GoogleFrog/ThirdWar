unitDef = {
  unitname                      = [[staticarty]],
  name                          = [[Artillery Turret]],
  description                   = [[Three 16" cannons - Requires connection to a 50 energy grid]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostMetal                = 4000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 8,
  buildingGroundDecalSizeY      = 8,
  buildingGroundDecalType       = [[staticarty_aoplane.dds]],
  buildPic                      = [[staticarty.png]],
  category                      = [[SINK]],
  corpse                        = [[DEAD]],

  customParams                  = {
    keeptooltip = [[any string I want]],
    neededlink  = 50,
    pylonrange  = 50,
    aimposoffset   = [[0 26 0]],
    midposoffset   = [[0 10 0]],
  },

  energyUse                     = 5,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 5,
  footprintZ                    = 5,
  highTrajectory                = 2,
  iconType                      = [[staticarty]],
  idleAutoHeal                  = 0,
  idleTime                      = 1800,
  maxDamage                     = 4000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SHIP SATELLITE SWIM SUB HOVER]],
  objectName                    = [[corbhmth.s3o]],
  onoffable                     = false,
  script                        = [[staticarty.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  
  sfxtypes               = {

    explosiongenerators = {
	  [[custom:LARGE_MUZZLE_FLASH_FX]],
    },

  },
  sightDistance                 = 1000,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[ooooo ooooo ooooo ooooo ooooo]],

  weapons                       = {

    {
      def                = [[PLASMA]],
	  --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs                    = {

    PLASMA = {
      name                    = [[16"/50 caliber Mark 7 gun]],
      areaOfEffect            = 96,
      avoidFeature            = false,
	  avoidGround             = false,
	  burst					  = 3,
	  burstRate				  = 0.16,
      craterBoost             = 1,
      craterMult              = 2,

      customParams            = {
		light_color = [[1.4 0.8 0.3]],
      },

      damage                  = {
        default = 2000,        
        subs    = 0,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:330rlexplode]],
      fireStarter             = 120,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      range                   = 40000 / Shared.RANGE_DIVISOR, --39km
	  myGravity               = 0.1,
      reloadtime              = 15,
      metalpershot            = 1,	  
      soundHit                = [[weapon/cannon/distant_explosion]],
	  soundHitVolume		  = 1.0,
      soundStart              = [[weapon/cannons/BigA]],
	  soundStartVolume		  = 6,
      sprayangle              = 1024,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 640,
    },

  },


  featureDefs                   = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[corbhmth_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris4x4b.s3o]],
	  reclaimable	   = true,
    },

  },

}

return lowerkeys({ staticarty = unitDef })
