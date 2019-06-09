local objectname	= "Industrial_structure_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Building",
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "112 90 80",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 7,
	footprintZ			= 5,
	height				= "36",
	hitdensity			= "5",
	metal				= 100,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

