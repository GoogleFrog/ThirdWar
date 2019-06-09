local objectname	= "trainengine_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Train engine",
	energy				= 5000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "13 16 45",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 1,
	footprintZ			= 3,
	height				= "36",
	hitdensity			= "5",
	metal				= 10,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

