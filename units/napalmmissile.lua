unitDef = {
  unitname                      = [[napalmmissile]],
  name                          = [[Chemical Missile]],
  description                   = [[Chemical Missile]],
  buildCostMetal                = 300,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 3,
  buildingGroundDecalSizeY      = 3,
  buildingGroundDecalType       = [[napalmmissile_aoplane.dds]],
  buildPic                      = [[napalmmissile.png]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 15 0]],
  collisionVolumeScales         = [[20 60 20]],
  collisionVolumeType	        = [[CylY]],

  customParams                  = {
    mobilebuilding = [[1]],
  },

  explodeAs                     = [[WEAPON]],
  footprintX                    = 1,
  footprintZ                    = 1,
  iconType                      = [[cruisemissilesmall]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 1000,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  objectName                    = [[wep_seismic.s3o]], --wep_napalm.s3o
  script                        = [[cruisemissile.lua]],
  selfDestructAs                = [[WEAPON]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
    },

  },

  sightDistance                 = 0,
  useBuildingGroundDecal        = false,
  yardMap                       = [[o]],

  weapons                       = {

    {
      def                = [[WEAPON]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP]],
    },

  },

  weaponDefs                    = {

    WEAPON = {
      name                    = [[Chemical Missile]],
      cegTag                  = [[seismictrail]],
      areaOfEffect            = 320,
	  --craterAreaOfEffect      = 64,
      avoidFriendly           = false,
      collideFriendly         = true,
      craterBoost             = 0,
      craterMult              = 0,

      customParams        	  = {
        setunitsonfire = "0",
        burntime = 0,

		stats_hide_dps = 1, -- one use
		stats_hide_reload = 1,

		area_damage = 1,
		area_damage_radius = 320,
		area_damage_dps = 5,
		area_damage_duration = 40,
		
		light_color = [[.9 1.0 0.9]],
		light_radius = 550,
      },

      damage                  = {
		infantry = 150,
        buildings = 0,
		tanks = 0,
        subs    = 0,
      },

      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:chemical_missile]],
      fireStarter             = 0,
      flightTime              = 100,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      model                   = [[wep_seismic.s3o]], --wep_napalm.s3o
      noSelfDamage            = true,
      range                   = 12000,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[weapon/missile/nalpalm_missile_hit]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      tolerance               = 12000,
	  tracks				  = true,
      turnrate                = 18000,
      weaponAcceleration      = 180,
      weaponTimer             = 3,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 850,
    },

  },

  featureDefs                   = {
  },

}

return lowerkeys({ napalmmissile = unitDef })
