unitDef = {
  unitname                      = [[turretriot]],
  name                          = [[Hard SAM]],
  description                   = [[Hardened Anti-Air Missile System]],
  buildCostMetal                = 500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[turretaalaser_aoplane.dds]],
  buildPic                      = [[turretaalaser.png]],
  category                      = [[FLOAT UNARMED STUPIDTARGET]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[50 36 50]],
  collisionVolumeType	        = [[CylY]],
  corpse                        = [[DEAD]],

  customParams                  = {
  },

  damageModifier                = 0.25,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[defenseaa]],
  levelGround                   = false,
  maxDamage                     = 2000,
  maxSlope                      = 18,
  minCloakDistance              = 75,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[aapopup.s3o]],
  selfDestructAs                = [[SMALL_BUILDINGEX]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_ORANGE_SMALL]],
    },

  },

  script                        = [[turretaalaser.lua]],
  sightDistance                 = 500,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo]],

  weapons                       = {

    {
      def                = [[MISSILE]],      
      onlyTargetCategory = [[GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs                    = {

    MISSILE = {
      name                    = [[FIM92 Stinger]],
      areaOfEffect            = 8,
      canAttackGround         = false,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,
      burst                   = 5,
      burstrate               = 0.3,	  

      customParams            = {
        isaa = [[1]],
        script_reload = [[10]],        
        light_color = [[1.0 0.9 0.0]],
        light_radius = 380,
      },

      damage                  = {
        default = 200,
        planes  = 200,
        subs    = 0,
      },

	  metalpershot            = 4,
      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 4,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_m_phoenix.s3o]],
      noSelfDamage            = true,
      range                   = 8000 / Shared.RANGE_DIVISOR, --stinger has 8km range, should e 2400 but, buffer range for lock
      reloadtime              = 10,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
	  soundStartVolume        = 8,
      startVelocity           = 500, 
      texture2                = [[AAsmoketrail]],
      tolerance               = 9000 / Shared.RANGE_DIVISOR,
      tracks                  = true,
      turnRate                = 8000,
      turret                  = true,
      weaponAcceleration      = 750,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 2500,  --750 m/s max mach 2.5
    },  
  
    M168 = {
      name                    = [[M168 Anti-Air Gun]],
      accuracy                = 192,
      areaOfEffect            = 16,
      canattackground         = false,
      collideFriendly         = true,
      --coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		
		light_camera_height = 2600,
		light_radius = 0,
	  },

      damage                  = {
        default = 40,
        planes  = 40,
        subs    = 0.0,
      },

      duration                = 0.02,
      edgeEffectiveness       = 0.75,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      fireStarter             = 10,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 2,
      lodDistance             = 10000,
      predictBoost            = 1,
      proximityPriority       = 4,
      range                   = 2500 / Shared.RANGE_DIVISOR,
      reloadtime              = 0.08,
      rgbColor                = [[1 0.95 0.4]],
	  soundStart              = [[weapon/minigun]],
      soundTrigger            = true,      
      tolerance               = 3500 / Shared.RANGE_DIVISOR,
      --turnRate                = 48000,
	  predictBoost            = 1,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 3000, --was 680
    },
	
    AMS = {
      name                    = [[Anti Missile System]],
      craterMult              = 0,
	  collideFriendly         = false,

      damage                  = {
        default = 10,
      },

      exteriorShield          = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      shieldAlpha             = 0.9,
      shieldBadColor          = [[0.1 0.1 0.1 1]],
      shieldGoodColor         = [[1.0 1.0 1 1]],
      shieldInterceptType     = 1,
      shieldPower             = 4000,
      shieldPowerRegen        = 50,
      shieldPowerRegenEnergy  = 1,
      shieldRadius            = 500,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },
  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[aapopup_dead.s3o]],
	  reclaimable	   = false,
    },

	HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3a.s3o]],
    },

  },

}  


return lowerkeys({ turretriot = unitDef })
