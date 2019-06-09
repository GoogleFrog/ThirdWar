local objectname	= "holding_tank2_dead"

local featureDef	=	{
	name				= objectname,
	blocking			= false,
	category			= "industrial",
	damage				= 2000,
	description			= "Chemical tank",
	energy				= 2000,
	flammable			= 0,
	footprintX			= 3,
	footprintZ			= 3,
	height				= "36",
	hitdensity			= "5",
	metal				= 100,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

