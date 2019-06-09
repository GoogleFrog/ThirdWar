return {
  ["industrial_smoke"] = {
    dirtg = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.7,
        alwaysvisible      = true,
        colormap           = [[0.25 0.20 0.22 1.0	0.0 0.00 0.02 1.0 0 0 0 0.0]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 1 r2, 0]],
        numparticles       = 2,
        particlelife       = 25,
        particlelifespread = 20,
        particlesize       = 1 ,
        particlesizespread = 3,
        particlespeed      = 0.5,
        particlespeedspread = 6,
        pos                = [[r-0.5 r0.5, 1 r2, r-0.5 r0.5]],
        sizegrowth         = 1.5,
        sizemod            = 1.0,
        texture            = [[new_dirta]],
      },
    },
    dirtw = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.7,
        alwaysvisible      = true,
        colormap           = [[1 1 1 0.5	0.5 0.5 1 0.8	0 0 0 0.0]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1 r0.1, 0]],
        numparticles       = 10,
        particlelife       = 15,
        particlelifespread = 20,
        particlesize       = [[7 r4]],
        particlesizespread = 2,
        particlespeed      = 1,
        particlespeedspread = 6,
        pos                = [[r-0.5 r0.5, 1 r2, r-0.5 r0.5]],
        sizegrowth         = -0.2,
        sizemod            = 1.0,
        texture            = [[new_dirta]],
      },
    },
  },

}
