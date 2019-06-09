-----------------------------------------------------------------------------
--  agorm_palm4
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "agorm_palm4",
	blocking			= true,
	category			= "vegitation",
	damage				= 100,
	description			= "palm tree",
	energy				= 0,
	flammable			= 0,
	footprintX			= 1,
	footprintZ			= 1,
	height				= "36",
	hitdensity			= "5",
	metal				= 0,
	object				= "features/agorm/palm4.s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = {
		randomrotate		= "true",
	},
}
return lowerkeys({[featureDef.name] = featureDef})