local objectname	= "pipe_long_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Pipeline",
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "224 20 32",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 15,
	footprintZ			= 2,
	height				= "36",
	hitdensity			= "5",
	metal				= 5,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

