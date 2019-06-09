-----------------------------------------------------------------------------
--  agorm_fatpalm3
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "agorm_fatpalm3",
	blocking			= true,
	category			= "vegitation",
	damage				= 5000,
	description			= "short palm",
	energy				= 10,
	flammable			= 0,
	footprintX			= 1,
	footprintZ			= 1,
	height				= "36",
	hitdensity			= "5",
	metal				= 5,
	object				= "features/agorm/palmfat3.s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = {
		randomrotate		= "true",
	},
}
return lowerkeys({[featureDef.name] = featureDef})