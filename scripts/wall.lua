include "constants.lua"

local base = piece "base"
local wall = piece "wall"
--local smokePiece = { base }

function script.Create()
	StartThread(SmokeUnit, smokePiece)
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth

	if (severity <= .5) then
		Explode(wall, SFX.SHATTER)
		return 1
	else
		Explode(wall, SFX.SHATTER)
		Explode(base, SFX.SHATTER)
		return 2
	end
end
