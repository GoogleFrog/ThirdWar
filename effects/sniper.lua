-- spectre_hit
return {
  ["spectre_hit"] = {
    usedefaultexplosions = false,
    pillar = {
      air                = true,
      class              = [[heatcloud]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = true,
        heat               = 15,
        heatfalloff        = 2.5,
        maxheat            = 15,
        pos                = [[0,0 i5, 0]],
        size               = 90,
        sizegrowth         = -11,
        speed              = [[0, 10, 0]],
        texture            = [[pinknovaexplo]],
      },
    },
    pop = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = true,
        heat               = 10,
        heatfalloff        = 0.5,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 90,
        sizegrowth         = 0.9,
        speed              = [[0, 1 0, 0]],
        texture            = [[pinknovaexplo]],
      },
    },
    airflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = false,
        heat               = [[50]],
        heatfalloff        = 2,
        maxheat            = 50,
        pos                = 0,
        size               = [[10]],
        sizegrowth         = 2,
        speed              = [[0, 0, 0]],
        texture            = [[pinknovaexplo]],
      },
    },
    big_pike = {
      air                = true,
      class              = [[explspike]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.03,
        color              = [[1,0.25,1]],
        pos                = [[0, 5, 0]],
        dir                = [[dir]],
        length             = 26,
        lengthgrowth       = 1.8,
        width              = 8,
      },
    },
    sparks_wide = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = 1,
      properties = {
        airdrag            = 0.85,
        alwaysvisible      = false,
        colormap           = [[0.75 0.15 0.75 0.01   0.01 0.01 0.005 0.01]],
        directional        = true,
        emitrot            = 180,
        emitrotspread      = 20,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[15]],
        particlelife       = 40,
        particlelifespread = 40,
        particlesize       = [[20]],
        particlesizespread = 0.5,
        particlespeed      = 6,
        particlespeedspread = 24,
        pos                = [[-10 r20, -10 r20, -10 r20]],
        sizegrowth         = 0,
        sizemod            = 0.97,
        texture            = [[plasma]],
      },
    },
    sparks_core = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = 1,
      properties = {
        airdrag            = 0.8125,
        alwaysvisible      = false,
        colormap           = [[1 0.7 1 0.01   0.01 0.01 0.005 0.01]],
        directional        = true,
        emitrot            = 180,
        emitrotspread      = 8,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[8]],
        particlelife       = 40,
        particlelifespread = 40,
        particlesize       = [[20]],
        particlesizespread = 0.5,
        particlespeed      = 5,
        particlespeedspread = 45,
        pos                = [[-10 r20, -10 r20, -10 r20]],
        sizegrowth         = 0,
        sizemod            = 0.97,
        texture            = [[plasma]],
      },
    },
  },

}

