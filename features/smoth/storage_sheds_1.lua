local objectname	= "storage_sheds_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Storage sheds",
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "200 26 60",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 13,
	footprintZ			= 4,
	height				= "36",
	hitdensity			= "5",
	metal				= 105,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

