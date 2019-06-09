-----------------------------------------------------------------------------
--  agorm_shrub3
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "agorm_shrub3",
	blocking			= true,
	category			= "vegitation",
	damage				= 100,
	energy				= 0,
	description			= "shrub",
	flammable			= 0,
	footprintX			= 1,
	footprintZ			= 1,
	height				= "36",
	hitdensity			= "5",
	metal				= 0,
	object				= "features/agorm/shrub3.s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = {
		randomrotate		= "true",
	},
}
return lowerkeys({[featureDef.name] = featureDef})