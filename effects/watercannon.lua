return {
  ["watercannon_muzzle"] = {
    usedefaultexplosions = false,
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[0.6 0.8 1 0.01   0.6 0.8 1 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 80,
        emitvector         = [[dir]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 1,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 0.7,
        particlesizespread = 2.5,
        particlespeed      = 3,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[wake]],
      },
    },
  },

  ["watercannon_impact"] = {
    usedefaultexplosions = false,
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[0.6 0.8 1 0.01   0.6 0.8 1 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 150,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.4, 0]],
        numparticles       = 3,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2.5,
        particlespeed      = 8,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[wake]],
      },
    },
    splash = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater		 = true,
      properties = {
        colormap           = [[0.4 0.4 0.6 0.5  0.04 0.04 0.06 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[0]],
        sidetexture        = [[none]],
        size               = [[2 r2]],
        sizegrowth         = 12,
        ttl                = 13,
      },
    },    
  },
  ["GIANT_WATER_HIT"] = {
    usedefaultexplosions = false,
    groundflash = {
      alwaysvisible      = true,
      circlealpha        = 0.4,
      circlegrowth       = 7,
      flashalpha         = 0.5,
      flashsize          = 320,
      ttl                = 64,
      color = {
        [1]  = 1,
        [2]  = 1,
        [3]  = 1,
      },
    },
    sphere = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater		 = true,
      properties = {
        alpha              = 0.5,
        color              = [[0.8,0.7,0.8]],
        expansionspeed     = 9,
        ttl                = 25,
      },
    },
    splash = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater		 = true,
      properties = {
        colormap           = [[0.4 0.4 0.6 0.5  0.04 0.04 0.06 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[0]],
        sidetexture        = [[none]],
        size               = [[2 r2]],
        sizegrowth         = 36,
        ttl                = 13,
      },
    },    
  },
}

