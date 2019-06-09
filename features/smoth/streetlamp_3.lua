local objectname	= "streetlamp_3"

local featureDef	=	{
	name				= objectname,
	blocking			= false,
	category			= "urban",
	damage				= 2000,
	description			= "streetlamp steel post",
	collisionvolumetype  = "CylY",
	collisionvolumescales = "8 70 8",
	collisionvolumeoffsets = "0 0 0",
	energy				= 10,
	flammable			= 0,
	footprintX			= 1,
	footprintZ			= 1,
	height				= "36",
	hitdensity			= "5",
	metal				= 1,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	upright				= true,
}
return lowerkeys({[objectname] = featureDef})

