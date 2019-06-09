local objectname	= "pipe_small_2"

local featureDef	=	{
	name				= objectname,
	blocking			= false,
	category			= "industrial",
	damage				= 2000,
	description			= "Pipeline",
	energy				= 2000,
	flammable			= 0,
	footprintX			= 1,
	footprintZ			= 4,
	height				= "36",
	hitdensity			= "5",
	metal				= 2,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

