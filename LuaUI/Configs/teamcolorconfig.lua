local function Range(input)
	input[1] = input[1]/255
	input[2] = input[2]/255
	input[3] = input[3]/255
	return input
end


local FFAcolors = {
	myColor		= Range({ 050, 250, 050 }),	-- can only be 1 color
	gaiaColor	= Range({ 220, 220, 220 }),	-- can only be 1 color
	
	allyColors = {  
	Range({ 192, 192, 255 }), --lblue
	},

	enemyColors = {
	-- as many as needed
	  Range({ 235, 235, 000 }), --yellow
	  Range({ 255, 128, 000 }), --orange
	  Range({ 255, 000, 000 }), --red
	  Range({ 225, 000, 225 }), --purple
	  Range({ 128, 128, 000 }), --brown
	  Range({ 96, 	 2,   2 }), --dark red
	  Range({ 255, 128, 128 }), --pink
	  Range({ 016, 016, 016 }), --black	
	  
	  Range({ 020, 105, 255 }), --blue
	  Range({ 010, 250, 250 }), --teal	  
	  Range({ 050, 205, 050 }), --lime
	  Range({ 152, 251, 152 }), --pale green
	  Range({ 144, 238, 144 }), --light green
	  Range({ 000, 114, 0 }), --dgreen
	  Range({ 240, 240, 240 }), --white	  

	},
}

local colors = {
	myColor		= Range({ 050, 250, 050 }),	-- can only be 1 color
--	myColor		= Range({ 008, 192, 016 }),
	gaiaColor	= Range({ 220, 220, 220 }),	-- can only be 1 color
	
	allyColors = {
	  Range({ 020, 105, 255 }), --blue
	  Range({ 010, 250, 250 }), --teal
	  Range({ 192, 192, 255 }), --lblue
	  Range({ 050, 205, 050 }), --lime
	  Range({ 152, 251, 152 }), --pale green
	  Range({ 144, 238, 144 }), --light green
	  Range({ 000, 114, 0 }), --dgreen
	  Range({ 240, 240, 240 }), --white
	},

	enemyColors = {
	-- as many as needed
	  Range({ 235, 235, 000 }), --yellow
	  Range({ 255, 128, 000 }), --orange
	  Range({ 255, 000, 000 }), --red
	  Range({ 225, 000, 225 }), --purple
	  Range({ 128, 128, 000 }), --brown
	  Range({ 96, 	 2,   2 }), --dark red
	  Range({ 255, 128, 128 }), --pink
	  Range({ 016, 016, 016 }), --black	
 

	},
}

local colorsTeal = {
	myColor		= Range({ 013, 245, 243 }),	-- can only be 1 color
--	myColor		= Range({ 008, 192, 016 }),
	gaiaColor	= Range({ 200, 200, 200 }),	-- can only be 1 color
	
	allyColors = {
	  Range({ 020, 105, 255 }), --blue
	  Range({ 000, 010, 250 }), --green
	  Range({ 192, 192, 255 }), --lblue
	  Range({ 050, 205, 050 }), --lime
	  Range({ 152, 251, 152 }), --pale green
	  Range({ 144, 238, 144 }), --light green
	  Range({ 000, 114, 0 }), --dgreen
	  Range({ 240, 240, 240 }), --white
	},

	enemyColors = {
	-- as many as needed
	  Range({ 235, 235, 000 }), --yellow
	  Range({ 255, 128, 000 }), --orange
	  Range({ 255, 000, 000 }), --red
	  Range({ 225, 000, 225 }), --purple
	  Range({ 128, 128, 000 }), --brown
	  Range({ 64, 	 0,   0 }), --dark red
	  Range({ 255, 128, 128 }), --pink
	  Range({ 016, 016, 016 }), --black	

	},
}

local colorblind = {
	myColor		= Range({ 120, 255, 255 }),
	gaiaColor	= Range({ 200, 200, 200 }),
	
	allyColors = {
	  Range({ 020, 105, 255 }),
	  Range({ 090, 040, 255 }),
	  Range({ 120, 120, 255 }),
	  Range({ 030, 120, 255 }),
	  Range({ 120, 020, 255 }),
	  Range({ 030, 040, 255 }),
	  Range({ 130, 050, 255 }),
	  Range({ 040, 090, 230 }),
	  Range({ 170, 110, 255 }),
	},

	enemyColors = {
	  Range({ 255, 145, 030 }),
	  Range({ 200, 030, 075 }),
	  Range({ 255, 255, 040 }),
	  Range({ 240, 040, 150 }),
	  Range({ 230, 150, 170 }),
	  Range({ 255, 065, 065 }),
	  Range({ 200, 130, 110 }),
	  Range({ 225, 220, 140 }),
	  Range({ 255, 180, 050 }),
	  Range({ 255, 120, 220 }),
	  Range({ 180, 100, 100 }),
	  Range({ 160, 090, 015 }),
	  Range({ 170, 020, 100 }),
	  Range({ 125, 100, 020 }),
	  Range({ 170, 040, 040 }),
	  Range({ 125, 015, 060 }),
	  Range({ 240, 240, 240 }), --white
	},
}

local simpleColors = {
	myColor = colors.myColor,
	gaiaColor = colors.gaiaColor,
	allyColors = {colors.allyColors[ math.random(1,8) ]},
	enemyColors = {colors.enemyColors[ math.random(1,8) ]},
	enemyByTeamColors = colors.enemyColors,
}

local simpleColorsTeams = {
	myColor = colors.myColor,
	gaiaColor = colors.gaiaColor,
	allyColors = {colors.allyColors[1]},
	enemyColors = colors.enemyColors,
}

local simpleColorblind = {
	myColor = colorblind.myColor,
	gaiaColor = colorblind.gaiaColor,
	allyColors = {colorblind.allyColors[1]},
	enemyColors = {colorblind.enemyColors[1]},
	enemyByTeamColors = colorblind.enemyColors,
}

-- If order is non-sequential then things break.
local colorConfigs = {
	default = {
		order = 1,
		name = "Default",
		desc = "The default team colors. Allies are blue-ish, enemies are red-ish, self is green.",
		colors = FFAcolors
	},
	simple = {
		order = 2,
		name = "Simple",
		desc = "Simple colors. Allies are blue, enemies are red, self is green.",
		colors = simpleColors
	},
	defaultTeal = {
		order = 3,
		name = "Self Teal",
		desc = "Allies are blue/green-ish, enemies are red/yellow-ish, self is teal.",
		colors = colorsTeal
	},
	colorblind = {
		order = 4,
		name = "Colorblind",
		desc = "Allies are blue-ish, enemies are red-ish, self is teal.",
		colors = colorblind
	},
	simpleColorblind = {
		order = 5,
		name = "Simple Colorblind",
		desc = "Enemies are red, allies are blue, self is teal.",
		colors = simpleColorblind
	},
}
return colorConfigs
