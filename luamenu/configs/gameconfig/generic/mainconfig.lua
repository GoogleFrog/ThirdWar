local shortname = "generic"

local singleplayerConfig = VFS.Include(LUA_DIRNAME .. "configs/gameConfig/" .. shortname .. "/singleplayerMenu.lua")
local rankFunction       = VFS.Include(LUA_DIRNAME .. "configs/gameConfig/" .. shortname .. "/rankFunction.lua")
local backgroundConfig   = VFS.Include(LUA_DIRNAME .. "configs/gameConfig/" .. shortname .. "/skinning/skinConfig.lua")

local settingsConfig, settingsDefault = VFS.Include(LUA_DIRNAME .. "configs/gameConfig/zk/settingsMenu.lua")

local headingLarge    = LUA_DIRNAME .. "configs/gameConfig/" .. shortname .. "/skinning/headingLarge.png"
local headingSmall    = LUA_DIRNAME .. "configs/gameConfig/" .. shortname .. "/skinning/headingSmall.png"
local backgroundImage = LUA_DIRNAME .. "configs/gameConfig/" .. shortname .. "/skinning/background.png"

local background = {
	image           = backgroundImage,
	backgroundFocus = backgroundConfig.backgroundFocus,
}

local minimapOverridePath  = LUA_DIRNAME .. "configs/gameConfig/zk/minimapOverride/"
local minimapThumbnailPath = LUA_DIRNAME .. "configs/gameConfig/zk/minimapThumbnail/"

---------------------------------------------------------------------------------
-- Getters
---------------------------------------------------------------------------------

local externalFuncAndData = {
	dirName                = "generic",
	name                   = "Generic",
	editor                 = "rapid://sbc:test",
	--editor                 = "SpringBoard Core $VERSION",
	settingsConfig         = settingsConfig,
	settingsDefault        = settingsDefault,
	singleplayerConfig     = singleplayerConfig,
	helpSubmenuConfig      = {},
	rankFunction           = rankFunction,
	headingLarge           = headingLarge,
	headingSmall           = headingSmall,
	background             = background,
	minimapOverridePath     = minimapOverridePath,
	minimapThumbnailPath    = minimapThumbnailPath,
}

function externalFuncAndData.CheckAvailability()
	return true
end

return externalFuncAndData