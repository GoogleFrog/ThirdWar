local objectname	= "bunker_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "millitary",
	damage				= 2000,
	description			= "fortified bunker",
	energy				= 10000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "160 50 128",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 10,
	footprintZ			= 8,
	height				= "36",
	hitdensity			= "5",
	metal				= 100,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

