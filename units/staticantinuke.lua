unitDef = {
  unitname                      = [[staticantinuke]],
  name                          = [[Antinuke]],
  description                   = [[Strategic Nuke Interception System]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostMetal                = 3000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  buildingGroundDecalSizeY      = 6,
  buildingGroundDecalType       = [[antinuke_decal.dds]],
  buildPic                      = [[staticantinuke.png]],
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[70 70 110]],
  collisionVolumeType           = [[CylZ]],
  corpse                        = [[DEAD]],

  customParams                  = {
	removewait     = 1,
    nuke_coverage  = 1400,
	--stockpiletime  = [[60]],
	--stockpilecost  = [[300]],
	priority_misc  = 1, -- High	
  },

  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 5,
  footprintZ                    = 8,
  iconType                      = [[antinuke]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  maxDamage                     = 6000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  objectName                    = [[antinuke.s3o]],
  radarDistance                 = 2500,
  radarEmitHeight			    = 24,
  --stockpile               		= true,
  --stockpileTime           		= 240,  
  script                        = [[staticantinuke.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  sightDistance                 = 500,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardmap                       = [[oooooooooooooooooooooooooooooooooooooooo]],

  weapons                       = {

    {
      def = [[AMD_ROCKET]],
    },

  },


  weaponDefs                    = {

    AMD_ROCKET = {
      name                    = [[Anti-Nuke Missile Fake]],
      areaOfEffect            = 420,
      avoidFriendly           = false,
      avoidGround             = false,
      avoidFeature            = false,
      collideFriendly         = false,
      collideGround           = false,
      collideFeature          = false,
      coverage                = 100000,
      craterBoost             = 1,
      craterMult              = 2,
	  
	  customParams            = {
        reaim_time = 15,
        nuke_coverage = 1400,
	  },
	  
      damage                  = {
        default = 1500,
        subs    = 75,
      },

      explosionGenerator      = [[custom:ANTINUKE]],
      fireStarter             = 100,
      flightTime              = 20,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      interceptor             = 1,
      model                   = [[antinukemissile.s3o]],
      noSelfDamage            = true,
      range                   = 1400, --was 1900
      reloadtime              = 6,
      --stockpile               = true,
      --stockpileTime           = 60,	  
      smokeTrail              = true,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startVelocity           = 800,
      tolerance               = 4000,
      tracks                  = true,
      turnrate                = 65535,
      weaponAcceleration      = 800,
      weaponTimer             = 0.4,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 4800,
    },

  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 8,
      object           = [[antinuke_dead.s3o]],
	  reclaimable	   = false,
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 8,
      object           = [[debris4x4a.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ staticantinuke = unitDef })