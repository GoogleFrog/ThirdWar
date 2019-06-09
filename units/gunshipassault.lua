unitDef = {
  unitname            = [[gunshipassault]],
  name                = [[Phoenix]],
  description         = [[Saturation Napalm Bomber]],
  brakerate           = 0.4,
  buildCostMetal      = 3000,
  builder             = false,
  buildPic            = [[bomberriot.png]],
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 -5]],
  collisionVolumeScales  = [[55 15 70]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[80 25 80]],
  selectionVolumeType    = [[cylY]],
  corpse              = [[DEAD]],
  cruiseAlt           = 500,

  customParams        = {
	modelradius    = [[80]],
	refuelturnradius = [[120]],
	requireammo    = [[1]],
    reammoseconds    = [[60]],	
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[bomberraider]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxBank             = 0.2,
  maxAcc              = 0.4,
  maxDamage           = 1000,
  --maxAileron          = 0.018,
  --maxElevator         = 0.02,
  --maxRudder           = 0.008,
  maxFuel             = 100000,
  maxVelocity         = 50,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP SUB]],
  objectName          = [[b1lancer.s3o]],
  refuelTime          = 60,  
  script			  = [[bomberriot.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:light_red]],
      [[custom:light_green]],
    },

  },
  sightDistance       = 750,
  --turnRadius          = 200,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[NAPALM]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

    {
      def                = [[CLUSTERBOMB]],
	  mainDir            = [[0 0 1]],
	  maxAngleDif        = 90,	  
    },	
	
    --{
--      def                = [[STRAFE_GAU]],
      --badTargetCategory  = [[GUNSHIP]],
--      mainDir            = [[0 0 1]],
--      maxAngleDif        = 20,
--      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
--    },		
	
	
  },


  weaponDefs          = {

    NAPALM = {
      name                    = [[Cluster Bombs]],
      areaOfEffect            = 216,
      avoidFeature            = false,
      avoidFriendly           = false,
      burst                   = 15,
      burstrate               = 0.075,
      collideFeature          = false,
      collideFriendly         = true,
	  craterAreaOfEffect      = 6,
      craterBoost             = 1,
      craterMult              = 2,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
	    setunitsonfire = "1",
		burntime = 30,
		
	    gatherradius     = [[240]],
	    smoothradius     = [[120]],
		smoothmult       = [[0.5]],		
		
	  },
	  
      damage                  = {
        default = 1000,
        planes  = 1000,
        subs    = 0.0,
      },

      --metalpershot            = 2,
	  edgeEffectiveness       = 0.7,
      explosionGenerator      = [[custom:napalm_phoenix]],
      fireStarter             = 250,
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 2,
      model                   = [[wep_b_fabby.s3o]],
      myGravity               = 0.7,
      noSelfDamage            = false,
      reloadtime              = 1,
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/bomb_drop_short]],
      sprayangle              = 64000,
      weaponType              = [[AircraftBomb]],
    },
	
	

    STRAFE_GAU           = {
      name                    = [[Air Autocannon]],
	  areaOfEffect            = 48,
      accuracy                = 512,
      alphaDecay              = 0.7,
      areaOfEffect            = 8,
      canattackground         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		
		light_camera_height = 1600,
		light_color = [[0.9 0.86 0.45]],
		light_radius = 0,
	  },

      damage                  = {
        default = 40,
        planes  = 40,
        subs    = 0.0,
      },

      explosionGenerator      = [[custom:ARCHPLOSION]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.8,
      interceptedByShieldType = 0,
      predictBoost            = 1,
      proximityPriority       = 4,
      range                   = 1000,
      reloadtime              = 0.05,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/minigun]],
      stages                  = 10,
      sweepfire               = false,
      tolerance               = 8192,
      turret                  = false,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2000,
    },		
	

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[firestorm_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris3x3c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ gunshipassault = unitDef })
