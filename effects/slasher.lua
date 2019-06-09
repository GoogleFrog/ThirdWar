-- slashmuzzle
-- slashrearmuzzle

return {
  ["slashmuzzle"] = {
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.6,
        colormap           = [[1 1 0 0.9      1 0.8  0.3 08    0 0 0 0.01]],
        directional        = false,
        emitrot            = 30,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 0.5,
        particlesizespread = 0.5,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[orangesmoke2]],
      },
    },
    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.6,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[10 i-0.9]],
        particlesizespread = 0,
        particlespeed      = [[2 i1.5]],
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.2,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["slashrearmuzzle"] = {
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.6,
        colormap           = [[1 1 0 0.9      1 0.8  0.3 08    0 0 0 0.01]],
        directional        = false,
        emitrot            = 30,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 0.5,
        particlesizespread = 0.5,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[orangesmoke2]],
      },
    },
    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.6,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 45,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 100,
        particlelifespread = 0,
        particlesize       = [[10 i-0.5]],
        particlesizespread = 0,
        particlespeed      = [[15 i-1.5]],
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.2,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["ZSUmuzzle"] = {
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.2,
        colormap           = [[1 1 0 0.9      1 0.8  0.3 08    0 0 0 0.01]],
        directional        = false,
        emitrot            = 30,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 5,
        particlelifespread = 0,
        particlesize       = 0.125,
        particlesizespread = 0.5,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.25,
        sizemod            = 1.0,
        texture            = [[orangesmoke2]],
      },
    },
    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.95,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 5,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 35,
        particlelifespread = 1.5,
        particlesize       = 2.2,
        particlesizespread = 1.25,
        particlespeed      = [[7 i-1.5]],
        particlespeedspread = 1,
        pos                = [[0, -1, 0]],
        sizegrowth         = 0.25,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  }, 
  
  ["a10muzzle"] = {

    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 4,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.95,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 5,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 60,
        particlelifespread = 0,
        particlesize       = [[10 i-0.5]],
        particlesizespread = 1.25,
        particlespeed      = [[15 i-1.5]],
        particlespeedspread = 1,
        pos                = [[0, -1, 0]],
        sizegrowth         = 0.35,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },  

  ["minigunmuzzle"] = {
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.2,
        colormap           = [[1 1 0 0.9      1 0.8  0.3 08    0 0 0 0.01]],
        directional        = false,
        emitrot            = 30,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 5,
        particlelifespread = 0,
        particlesize       = 0.125,
        particlesizespread = 0.5,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.25,
        sizemod            = 1.0,
        texture            = [[orangesmoke2]],
      },
    },
    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.95,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 5,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 35,
        particlelifespread = 1.5,
        particlesize       = 2,
        particlesizespread = 1.25,
        particlespeed      = [[7 i-1.5]],
        particlespeedspread = 1,
        pos                = [[0, -1, 0]],
        sizegrowth         = 0.45,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },  
  
  ["phalanxmuzzle"] = {
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.2,
        colormap           = [[1 1 0 0.9      1 0.8  0.3 08    0 0 0 0.01]],
        directional        = false,
        emitrot            = 30,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 5,
        particlelifespread = 0,
        particlesize       = 0.125,
        particlesizespread = 0.5,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.25,
        sizemod            = 1.0,
        texture            = [[orangesmoke2]],
      },
    },
    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.95,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 5,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 35,
        particlelifespread = 1.5,
        particlesize       = [[4 i-0.5]],
        particlesizespread = 1.25,
        particlespeed      = [[10 i-1.5]],
        particlespeedspread = 1,
        pos                = [[0, -1, 0]],
        sizegrowth         = 0.35,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },   
  
  ["sa6rearsmoke"] = {
    fire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.6,
        colormap           = [[1 1 0 0.9      1 0.8  0.3 08    0 0 0 0.01]],
        directional        = false,
        emitrot            = 30,
        emitrotspread      = 15,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 0.5,
        particlesizespread = 0.5,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[orangesmoke2]],
      },
    },
    fluffy = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 12,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.6,
        colormap           = [[1 1 1 1  1 1 1 1 0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 45,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 100,
        particlelifespread = 0,
        particlesize       = [[10 i-0.5]],
        particlesizespread = 0,
        particlespeed      = [[15 i-1.5]],
        particlespeedspread = 2,
        pos                = [[0, -1, 0]],
        sizegrowth         = 0.25,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },  
  
}
