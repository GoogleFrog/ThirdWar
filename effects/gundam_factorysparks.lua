-- factorysparks

return {
  ["factorysparks"] = {
    sparks1 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.4 0.5 0.9 0.04	0.1 0.4 0.1 0.01	0.1 0.1 0.5 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -1, 0]],
        numparticles       = 5,
        particlelife       = 4,
        particlelifespread = 5,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[r3, 0, r3]],
        sizegrowth         = 0.7,
        sizemod            = 0.5,
        texture            = [[shot]],
        useairlos          = false,
      },
    },
    sparks2 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.4 0.5 0.9 0.04	0.1 0.4 0.9 0.01	0.1 0.1 0.1 0.05]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -1, 0]],
        numparticles       = 5,
        particlelife       = 4,
        particlelifespread = 5,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[r3, r6, r3]],
        sizegrowth         = 0.7,
        sizemod            = 0.5,
        texture            = [[shot]],
        useairlos          = false,
      },
    },
    whiteglow = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
        heat               = 6,
        heatfalloff        = 2,
        maxheat            = 6,
        pos                = [[0, 0, 0]],
        size               = 1,
        sizegrowth         = 6,
        speed              = [[0, 0, 0]],
        texture            = [[laserend]],
      },
    },
  },

}
