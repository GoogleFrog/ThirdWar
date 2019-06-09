unitDef = {
  unitname                      = [[seismic]],
  name                          = [[Quake]],
  description                   = [[Seismic Missile]],
  buildCostMetal                = 200,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 3,
  buildingGroundDecalSizeY      = 3,
  buildingGroundDecalType       = [[seismic_aoplane.dds]],
  buildPic                      = [[seismic.png]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 15 0]],
  collisionVolumeScales         = [[20 50 20]],
  collisionVolumeType	        = [[CylY]],

  customParams                  = {
    mobilebuilding = [[1]],
  },

  explodeAs                     = [[SEISMIC_WEAPON]],
  footprintX                    = 1,
  footprintZ                    = 1,
  iconType                      = [[cruisemissilesmall]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 1000,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  objectName                    = [[wep_seismic.s3o]],
  script                        = [[cruisemissile.lua]],
  selfDestructAs                = [[SEISMIC_WEAPON]],

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
      def                = [[SEISMIC_WEAPON]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },

  weaponDefs                    = {

    SEISMIC_WEAPON = {
      name                    = [[Seismic Missile]],
      areaOfEffect            = 1280,
      avoidFriendly           = false,
      cegTag                  = [[seismictrail]],
      collideFriendly         = true,
      craterBoost             = 64,
      craterMult              = 1,

      customParams            = {
        gatherradius = [[416]],
        smoothradius = [[256]],
        detachmentradius = [[256]],
        smoothmult   = [[1]],

		stats_hide_dps = 1, -- one use
		stats_hide_reload = 1,
		
		light_color = [[1.2 1.6 0.55]],
		light_radius = 550,
      },
	  
      damage                  = {
        default = 5,
		buildings = 400,
        subs    = 0,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:bull_fade]],
      fireStarter             = 0,
      flightTime              = 100,
      interceptedByShieldType = 1,
      model                   = [[wep_seismic.s3o]],
      noSelfDamage            = true,
      range                   = 8000,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[explosion/quake]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      tolerance               = 8000,
      turnrate                = 18000,
      waterWeapon             = true,
      weaponAcceleration      = 180,
      weaponTimer             = 4,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 850,
    },

  },

  featureDefs                   = {
  },

}

return lowerkeys({ seismic = unitDef })