local objectname	= "tent_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "millitary",
	damage				= 1000,
	description			= "Big Tent",
	energy				= 1000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "48 30 80",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 3,
	footprintZ			= 5,
	height				= "36",
	hitdensity			= "5",
	metal				= 1,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

