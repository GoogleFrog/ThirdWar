include "constants.lua"

local base = piece "base"
--[[
local beam01 = piece "beam01"
local beam02 = piece "beam02"
local beam03 = piece "beam03"
local beam04 = piece "beam04"
local beam05 = piece "beam05"
local beam06 = piece "beam06"
local beam07 = piece "beam07"
local beam08 = piece "beam08"
local beam09 = piece "beam09"
local beam10 = piece "beam10"
local beam11 = piece "beam11"
local beam12 = piece "beam12"
local beam13 = piece "beam13"
local beam14 = piece "beam14"
local beam15 = piece "beam15"
local beam16 = piece "beam16"
local beam17 = piece "beam17"
local beam18 = piece "beam18"
local beam19 = piece "beam19"

local beam20 = piece "beam20"
local beam21 = piece "beam21"
local beam22 = piece "beam22"
local beam23 = piece "beam23"
local beam24 = piece "beam24"
local beam25 = piece "beam25"
local beam26 = piece "beam26"
local beam27 = piece "beam27"
local beam28 = piece "beam28"
local beam29 = piece "beam29"

local beam30 = piece "beam30"
local beam31 = piece "beam31"
local beam32 = piece "beam32"
local beam33 = piece "beam33"
local beam34 = piece "beam34"
local beam35 = piece "beam35"
local beam36 = piece "beam36"
local beam37 = piece "beam37"
local beam38 = piece "beam38"
local beam39 = piece "beam39"

local beam40 = piece "beam40"
local beam41 = piece "beam41"
local beam42 = piece "beam42"
local beam43 = piece "beam43"
local beam44 = piece "beam44"
local beam45 = piece "beam45"
local beam46 = piece "beam46"
local beam47 = piece "beam47"
local beam48 = piece "beam48"
local beam49 = piece "beam49"

local beam50 = piece "beam50"
local beam51 = piece "beam51"
local beam52 = piece "beam52"
local beam53 = piece "beam53"
local beam54 = piece "beam54"
local beam55 = piece "beam55"
local beam56 = piece "beam56"
local beam57 = piece "beam57"
local beam58 = piece "beam58"
local beam59 = piece "beam59"

local beam60 = piece "beam60"
local beam61 = piece "beam61"
local beam62 = piece "beam62"
local beam63 = piece "beam63"
local beam64 = piece "beam64"
local beam65 = piece "beam65"
local beam66 = piece "beam66"
local beam67 = piece "beam67"
local beam68 = piece "beam68"
local beam69 = piece "beam69"

local beam70 = piece "beam70"
local beam71 = piece "beam71"
local beam72 = piece "beam72"
local beam73 = piece "beam73"
local beam74 = piece "beam74"
local beam75 = piece "beam75"
local beam76 = piece "beam76"
]]--

local smokePiece = { base }

function script.Create()
	StartThread(SmokeUnit, smokePiece)
end

--[[
local explodables = { beam01, beam02, beam03, beam04, beam05, beam06, beam07, beam08, beam09,  
						beam10, beam11, beam12, beam13, beam14, beam15, beam16, beam17, beam18, beam19, 
						beam20, beam21, beam22, beam23, beam24, beam25, beam26, beam27, beam28, beam29, 
						beam30, beam31, beam32, beam33, beam34, beam35, beam36, beam37, beam38, beam39, 
						beam40, beam41, beam42, beam43, beam44, beam45, beam46, beam47, beam48, beam49,
						beam50, beam51, beam52, beam53, beam54, beam55, beam56, beam57, beam58, beam59,
						beam60, beam61, beam62, beam63, beam64, beam65, beam66, beam67, beam68, beam69,
						beam70, beam71, beam72, beam73, beam74, beam75, beam76	}
]]--
						
						
function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth

	

	
	if (severity <= .5) then
	--[[	
	Explode (beam01, sfxFall + sfxSmoke)
	Explode (beam02, sfxFall + sfxSmoke)
	Explode (beam03, sfxFall + sfxSmoke)
	Explode (beam04, sfxFall + sfxSmoke)
	Explode (beam05, sfxFall + sfxSmoke)
	Explode (beam06, sfxFall + sfxSmoke)
	Explode (beam07, sfxFall + sfxSmoke)
	Explode (beam08, sfxFall + sfxSmoke)
	Explode (beam09, sfxFall + sfxSmoke)
	Explode (beam10, sfxFall + sfxSmoke)
	

	for i = 1, #explodables do
		if math.random() < severity then
			Explode (explodables[i], sfxFall + sfxSmoke)
		end
	end	
]]--	
	
		return 1
	else
		Explode(base, SFX.SHATTER)
		return 2
	end
end
