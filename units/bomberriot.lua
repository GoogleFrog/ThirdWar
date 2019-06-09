unitDef = {
  unitname            = [[bomberriot]],
  name                = [[B1 Lancer]],
  description         = [[Carpet Bomber]],
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
	--stockpiletime  = [[60]],
	--stockpilecost  = [[120]], --nuke is 9 billion, we'll make it 9 million for the game
	priority_misc  = 0, -- Low	
	landflystate   = [[2]],
  },

  explodeAs           = [[SMALL_BUILDINGEX]],
  energyUse           = 2, --costs 70,000 per hour of flight time
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  fireState 		  = 0,
  diveState			  = 2,  
  iconType            = [[bomberraider]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxBank             = 0.2,
  maxAcc              = 0.4,
  maxDamage           = 1000,
  --maxAileron          = 0.018,
  --maxElevator         = 0.02,
  --maxRudder           = 0.008,
  maxFuel             = 1000,
  maxVelocity         = 40,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP SUB]],
  objectName          = [[b1lancer.s3o]],
  refuelTime          = 60,  
  script			  = [[bomberriot.lua]],
  selfDestructAs      = [[SMALL_BUILDINGEX]],

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
      explosionGenerator      = [[custom:FLASHSMALLBUILDING]],
      fireStarter             = 250,
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 2,
      model                   = [[wep_b_fabby.s3o]],
      myGravity               = 0.7,
      noSelfDamage            = false,
	  --stockpile               = true,
      --stockpileTime           = 60,	  
      reloadtime              = 1,
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/bomb_drop_short]],
      sprayangle              = 64000,
      weaponType              = [[AircraftBomb]],
    },
	
    TACNUKE        = {
      name                    = [[400 kt Nuclear Bomb]], --or B83
      areaOfEffect            = 1800,
      avoidFeature            = false,
      avoidFriendly           = false,
      --cegTag                  = [[KBOTROCKETTRAIL]],
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 4,
      craterMult              = 4,
	  cylinderTargeting	      = 1,
	  --commandfire             = true,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
		light_color = [[1.1 0.9 0.45]],
		light_radius = 0,
	  },

      damage                  = {
        default = 10000.1,
        subs    = 1000.1,
      },


      explosionGenerator      = [[custom:LONDON_FLAT]],
	  --metalpershot            = 0, --should be 250 but its really annoying when it doesnt bomb, factor into unit cost??
      fireStarter             = 70,
      flightTime              = 2,
	  heightmod				  = 0,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
	  leadlimit               = 0,
      model                   = [[wep_b_paveway.s3o]],
	  leadLimit               = 20,
      range                   = 192,
      reloadtime              = 60,
      smokeTrail              = false,
	  stockpile               = true,
      stockpileTime           = 240,	
      soundHit                = [[explosion/nukehit]],
	  soundHitVolume		  = 9,
      soundStart              = [[weapon/bomb_drop]],
      texture1                = [[null]], --flare	  
      startVelocity           = 200,
      tolerance               = 8000,
      tracks                  = true,
      turnRate                = 2500,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 50,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1500,
    },		
	

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[b1lancer_dead.s3o]],
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

return lowerkeys({ bomberriot = unitDef })
