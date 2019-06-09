unitDef = {
  unitname            = [[vehheavyarty]],
  name                = [[Triumph]],
  description         = [[Extra Long Range SAM and mobile Anti Nuke]],
  acceleration        = 0.012,
  brakeRate           = 0.018,
  buildCostMetal      = 2000, --$250,000
  energyUse           	 = .025 * Shared.UPKEEP_MULTIPLIER,
  metalUse           	 = .025 * Shared.UPKEEP_MULTIPLIER,   
  builder             = false,
  buildPic            = [[s300.png]],
  canMove             = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[80 20 40]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],

  customParams        = {

    --dontfireatradarcommand = '1',
	--stockpiletime  = [[30]],
	--stockpilecost  = [[350]], --wasnt it $800 thousand per? or 3.5 million each?  3.5 million
	--priority_misc  = 0, -- Low	  
	modelradius    = [[36]],	
	selection_scale = 2.0,  
	nuke_coverage  = 600,
								--$400 million per fire unit (artillery battalion) that consists of 8 launchers, 112 missiles, launcher is 250,000 each
	
  },

  explodeAs           = [[BIG_UNITEX_MERL]],
  fireState           = 1,
  moveState           = 0,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehiclelrarty]],
  idleAutoHeal        = 0,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 500,
  maxSlope            = 18,
  maxVelocity         = 3,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  noChaseCategory     = [[TERRAFORM SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
  objectName          = [[s400.s3o]],
  script              = [[s400.lua]],
  selfDestructAs      = [[BIG_UNITEX_MERL]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],
    },

  },

  sightDistance       = 500,
  trackOffset         = 15,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 40,
  turninplace         = 0,
  turnRate            = 200,

  weapons             = {

    {
      def                = [[CORTRUCK_ROCKET]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },
	
	{
      def = [[AMD_ROCKET]],
    },
  },

  weaponDefs          = {

    CORTRUCK_ROCKET = {
      name                    = [[Long Range 40N6E Missile]],
	  accuracy                = 48,
      canAttackGround         = false,	  
      areaOfEffect            = 32,
      cegTag                  = [[turretaaheavytrail]],
      collideFriendly         = true,
      craterBoost             = 3,
      craterMult              = 2,

	  customParams        = {
        reaim_time = 500, -- Some script bug. It does not need fast aim updates anyway.
		light_camera_height = 2500,
		light_color = [[1 0.8 0.2]],
		light_radius = 320,
		isaa = [[1]],
		script_reload = [[30]],
		script_burst = [[4]],
		
	  },

      damage                  = {
        default = 1000,
		buildings = 200,
        subs    = 0,
      },

      --Want to remove engine's FX and rely on CEG??? NOTE: issues with CEG: http://springrts.com/mantis/view.php?id=3401 (invisible CEGs can block all visible CEGs if MaxParticles is low. Not cool...)
      customParams = {
		--trail_burnout = 64, -- two seconds of vertical ascension
		--trail_burnout_ceg = [[missiletrailredsmall]],
      },
      texture1=[[null]], --flare, reference: http://springrts.com/wiki/Weapon_Variables#Texture_Tags
      --texture2=[[null]], --smoketrail
      --texture3=[[null]], --flame

      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:MISSILE_HIT_SPHERE_120]],
      fireStarter             = 0,
      flightTime              = 10,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      impactOnly              = true,
      interceptedByShieldType = 1,
      metalpershot            = 350,
      model                   = [[wep_m_frostshard.s3o]],
      noSelfDamage            = true,
      range                   = 400000 / Shared.RANGE_DIVISOR,
      reloadtime              = 30,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/heavy_aa_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      --stockpile               = true,
      --stockpileTime           = 30,	        
      turnrate                = 15150,
	  tracks                  = true,
      weaponAcceleration      = 315,
      weaponTimer             = 1.8,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 4800, --4800 meters per second
    },

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
        nuke_coverage = 600,
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
      range                   = 900,
      reloadtime              = 15,
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

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[s400_dead.s3o]],
	  reclaimable	   = false,
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
	  reclaimable	   = false,
    },

  },

}

return lowerkeys({ vehheavyarty = unitDef })

