local objectname	= "warehouse_large_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 20000,
	description			= "Warehouse",
	featuredead			= "warehouse_large_dead",	
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "110 50 172",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 7,
	footprintZ			= 11,
	height				= "36",
	hitdensity			= "5",
	metal				= 80,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

