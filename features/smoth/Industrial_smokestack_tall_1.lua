local objectname	= "Industrial_smokestack_tall_1"

local featureDef	=	{
	name				= objectname,	
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Smoke stack",
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "box",
	collisionvolumescales = "48 120 48",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 3,
	footprintZ			= 3,
	height				= "36",
	hitdensity			= "5",
	metal				= 50,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= false, 	
	world				= "All Worlds",
}
return lowerkeys({[objectname] = featureDef})

