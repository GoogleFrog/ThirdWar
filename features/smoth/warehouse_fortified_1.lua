local objectname	= "warehouse_fortified_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 20000,
	description			= "Concrete warehouse",
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "110 30 96",
	collisionvolumeoffsets = "0 0 0",	
	footprintX			= 7,
	footprintZ			= 9,
	height				= "36",
	hitdensity			= "5",
	metal				= 100,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

