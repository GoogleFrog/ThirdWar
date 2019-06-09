local objectname	= "boxcar_2"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Train Boxcar",
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "13 16 45",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 1,
	footprintZ			= 3,
	height				= "36",
	hitdensity			= "5",
	metal				= 35,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

