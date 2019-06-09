local objectname	= "watertower_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Water tower",
	energy				= 3000,
	flammable			= 0,
	collisionvolumetype  = "CylY",
	collisionvolumescales = "36 180 36",
	collisionvolumeoffsets = "0 0 0",	
	footprintX			= 2,
	footprintZ			= 2,
	height				= "36",
	hitdensity			= "5",
	metal				= 10,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

