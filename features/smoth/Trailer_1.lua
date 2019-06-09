local objectname	= "Trailer_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Foreman trailer",
	energy				= 1000,
	flammable			= 0,
	footprintX			= 2,
	footprintZ			= 1,
	height				= "36",
	hitdensity			= "5",
	metal				= 5,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

