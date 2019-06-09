-- blood_spray

return {
  ["blood_spray"] = {
    flare = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = false,
      water              = true,
      properties = {
        colormap           = [[1 1 1 1   1 1 1 1   0 0 0 0]],
        dir                = [[-1 r2, -1 r2, -1 r2]],
        frontoffset        = 0,
        fronttexture       = [[null]],
        length             = 2,
        sidetexture        = [[bloodsplat]],
        size               = 0.5,
        sizegrowth         = 2,
        ttl                = 18,
      },
    },
  },

}

