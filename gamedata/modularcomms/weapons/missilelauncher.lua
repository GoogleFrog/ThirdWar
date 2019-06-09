local name = "commweapon_missilelauncher"
local weaponDef = {
	name                    = [[Missile Launcher]],
	areaOfEffect            = 48,
	avoidFeature            = true,
	cegTag                  = [[missiletrailyellow]],
	craterBoost             = 1,
	craterMult              = 2,

	customParams            = {
		slot = [[5]],
		muzzleEffectFire = [[custom:SLASHMUZZLE]],

		light_camera_height = 2000,
		light_radius = 200,
	},

	damage                  = {
		default = 400,
		infantry = 25,
		subs    = 0,
	},

	explosionGenerator      = [[custom:FLASH2]],
	fireStarter             = 70,
	flightTime              = 3,
	impulseBoost            = 0,
	impulseFactor           = 0.4,
	interceptedByShieldType = 2,
	model                   = [[wep_m_frostshard.s3o]],
	noSelfDamage            = true,
	range                   = 1200,
	reloadtime              = 10,
	smokeTrail              = true,
	soundHit                = [[explosion/ex_med17]],
	soundStart              = [[weapon/missile/missile_fire11]],
	startVelocity           = 450,
	texture2                = [[lightsmoketrail]],
	tolerance               = 8000,
	tracks                  = true,
	turnRate                = 8000,
	turret                  = true,
	weaponAcceleration      = 109,
	weaponType              = [[MissileLauncher]],
	weaponVelocity          = 900,
}

return name, weaponDef
