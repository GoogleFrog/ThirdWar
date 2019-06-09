--------------------------------------------------------------------------------

local weaponDef = {
  areaOfEffect       = 512,
  ballistic          = true,
  explosionGenerator = "custom:fueltank_epx1",
  filename           = "weapons/explosions.tdf",
  impulseFactor      = 0,
  name               = "Large building",
  range              = 480,
  reloadtime         = 3.6,
  renderType         = 4,
  shakeduration      = ".3",
  shakemagnitude     = "8",
  soundHit           = "xplolrg4",
  soundStart         = "largegun",
  turret             = true,
  weaponVelocity     = 250,
  damage = {
    default            = 500,
    vtol               = "20",
  },
}
--------------------------------------------------------------------------------

return lowerkeys({["fueltank"] = weaponDef})

--------------------------------------------------------------------------------
