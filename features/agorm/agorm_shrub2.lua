-----------------------------------------------------------------------------
--  agorm_shrub2
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "agorm_shrub2",
	blocking			= true,
	category			= "vegitation",
	damage				= 100,
	description			= "shrub",
	energy				= 0,
	flammable			= 0,
	footprintX			= 1,
	footprintZ			= 1,
	height				= "36",
	hitdensity			= "5",
	metal				= 0,
	object				= "features/agorm/shrub2.s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = {
		randomrotate		= "true",
	},
}
return lowerkeys({[featureDef.name] = featureDef})