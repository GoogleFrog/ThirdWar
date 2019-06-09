unitDef = {
  unitname               = [[shipcarrier]],
  name                   = [[Carrier]],
  description            = [[Aircraft Carrier]],
  acceleration           = 0.00354,
  activateWhenBuilt      = true,
  brakeRate              = 0.0466,
  buildCostMetal         = 18000, --9billion / 10
  energyUse           	 = 1.8 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = 1.8 * Shared.UPKEEP_MULTIPLIER,   
  builder                = false,
  buildPic               = [[carrier.png]],
  canMove                = true,
  canManualFire          = true,
  cantBeTransported      = true,
  category               = [[SHIP]],
  CollisionSphereScale   = 0.6,
  collisionVolumeOffsets = [[20 -20 0]],
  collisionVolumeScales  = [[160 160 540]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_de = [[Flugzeugträger (Bomber)]],
    description_fr = [[Porte-Avion Bombardier]],
    helptext       = [[The most versatile ship on the high seas, the carrier serves several functions. It is equipped with a manual-fire disarming missile launcher for disabling enemy capital ships at range and serves as a mobile repair base for friendly aircraft. Perhaps most notably, the carrier provides its own complement of surface attack drones to engage targets.]],
	midposoffset   = [[0 -10 0]],
    modelradius    = [[80]],
	stockpiletime  = [[60]],
	stockpilecost  = [[600]],
	priority_misc  = 2, -- High
	extradrawrange = 3000,
  },

  explodeAs              = [[ATOMIC_BLASTSML]],
  floater                = true,
  footprintX             = 10,
  footprintZ             = 10,
  iconType               = [[shipcarrier]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 8000,
  maxVelocity            = 1.5,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT10]],
  objectName             = [[carrier.s3o]],
  script                 = [[carrier.lua]],
  radarDistance                 = 2100,
  radarEmitHeight        = 48,
  selfDestructAs         = [[ATOMIC_BLASTSML]],
  sfxtypes               = {
    explosiongenerators = {
      [[custom:xamelimpact]],
      [[custom:ROACHPLOSION]],
      [[custom:shellshockflash]],
    },
  },
  showNanoSpray          = false,
  sightDistance          = 1500,
  sonarDistance          = 660,
  turninplace            = 0,
  turnRate               = 50,
  waterline              = 20,

  weapons                = {

    {
      def                = [[carriertargeting]],
      badTargetCategory  = [[SINK]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

    {
      def                = [[TACNUKE]],
      badTargetCategory  = [[SWIM LAND SUB SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },
	
	{
      def         = [[AMS]],
      maxAngleDif = 1,
    },	
	
  },

  weaponDefs             = {

	TACNUKE        = {
      name                    = [[Tactical Nuke]],
      areaOfEffect            = 224,
      collideFriendly         = false,
      commandfire             = true,
      craterBoost             = 4,
      craterMult              = 3.5,           
	  cegTag                  = [[bigdisarmtrail]],


	  customParams        = {
        combatrange = 30000,
		light_color = [[1.35 0.8 0.36]],
		light_radius = 400,	
      },
	  
      damage                  = {
        default = 3000,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:NUKE_150]],
      fireStarter             = 0,
      flightTime              = 20,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_empmissile.s3o]],
      noSelfDamage            = true,
      range                   = 12000,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[explosion/mini_nuke]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      stockpile               = true,
      stockpileTime           = 10^5,
      tolerance               = 12000,
      turnrate                = 18000,
      waterWeapon             = false,
      weaponAcceleration      = 180,
      weaponTimer             = 4,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1200,
    },  


    carriertargeting   = {
      name                    = [[Fake Targeting Weapon]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1E-06,
        planes  = 1E-06,
        subs    = 5E-08,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      flightTime              = 1,
      impactOnly              = true,
      interceptedByShieldType = 1,
      range                   = 40000,
      reloadtime              = 1.0,
      size                    = 1E-06,
      smokeTrail              = false,

      textures                = {
        [[null]],
        [[null]],
        [[null]],
      },

      turnrate                = 1000000000,
      turret                  = true,
      weaponAcceleration      = 20000,
      weaponTimer             = 0.5,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 20000,
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
      shieldAlpha             = 0.1,
      shieldBadColor          = [[0.1 0.1 0.1 0]],
      shieldGoodColor         = [[1.0 1.0 1 0]],
      shieldInterceptType     = 1,
      shieldPower             = 3500,
	  shieldStartingPower     = 2048,
      shieldPowerRegen        = 250,
      shieldPowerRegenEnergy  = 1,
      shieldRadius            = 500,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },	
  
	DISARM_ROCKET        = {
      name                    = [[Disarm Missile]],
      areaOfEffect            = 280,
      collideFriendly         = false,
	  cegTag                  = [[bigdisarmtrail]],
      commandfire             = true,
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        = {
        combatrange = 950,
        disarmDamageMult = 1.0,
        disarmDamageOnly = 1,
        disarmTimer      = 10, -- seconds
		
		light_color = [[1 1 1]],
      },
	  
      damage                  = {
        default = 15000,
      },

      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:DISARMMISSILE_EXPLOSION]],
      fireStarter             = 0,
      flightTime              = 10,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_empmissile.s3o]],
      noSelfDamage            = true,
      range                   = 10000,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/emp_missile_hit]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      stockpile               = true,
      stockpileTime           = 50,
      tolerance               = 10000,
	  startVelocity			  = 200,
      turnrate                = 25000,
      waterWeapon             = false,
      weaponAcceleration      = 400,
      weaponTimer             = 1.4,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1200,
    },
  },

  featureDefs            = {

    DEAD  = {
      CollisionSphereScale   = 0.6,
      collisionVolumeOffsets = [[-5 -10 0]],
	  collisionVolumeScales  = [[80 80 240]],
	  collisionVolumeType    = [[CylZ]],
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[shipcarrier_dead.dae]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[debris4x4b.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ shipcarrier = unitDef })
