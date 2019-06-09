--[[

INSTRUCTIONS

Choose names for the unitClass table and use those names in conditions.
For example if you use "Con" then you must use "ConSelected" not "conSelected":

local unitClasses = {
	Con	= { 'cloakcon' },
}

local steps = {	
	selectCon = {
		image		= unitClasses.Con[1] ..'.png',
		passIfAny	= { 'ConSelected' },
	},
}

Use the mClasses table to indicate mobile units, as opposed to structures.
local mClasses = { Con=1, }


** Tasks and Steps **
Tasks and steps can either pass (move to next task/step) or fail (go to previous task/step).
A task contains a set of steps. Define the steps in a task using the "states" table (sorry, steps = states).
A task will pass when its own conditions pass and it's on its final step (state).
You can set conditions for a tasks/steps using the following tables.

** Condition tables **
errIfAny 		- task/step fails if any conditions are true
errIfAnyNot 	- task/step fails if any conditions are false

passIfAny 		- task/step completes if any conditions are true
passIfAnyNot 	- task/step completes if any conditions are false


** Generic conditions **
have<unitClass>			- unit exists and is completed
<unitClass>Selected		- unit is selected


** Special Built-in conditions **
clickedNubtron 			- user clicks Next button
commSelected			- user selects commander (based on customparam in ZK)
gameStarted
guardFac				- constructor (Con) guards factory (BotLab)
lowMetalIncome
lowEnergryIncome
metalMapView

** Generic Steps (autogenerated for you) **
selectBuild<unitClass>	- Tells user to select a structure from the build menu
start<unitClass>		- Triggers if user selected the structure to be built. Tells user to place the structure
build<unitClass>		- Unit (mobile or structure) is being built
finish<unitClass>		- Triggers if structure partly completed structure is no longer being built, tells user that structure needs finishing

]]

--- unit classes ---
local unitClasses = {
	Mex	= { 'staticmex' },
	Solar	= { 'energysolar' },
	LLT	= { 'turretlaser' },
	BotLab	= { 'factorycloak' },
	Radar	= { 'staticradar' },

	Con	= { 'cloakcon' },
	Raider	= { 'cloakraid' },
}
local unitClassNames = {
	Mex		= 'Mex',
	Solar	= 'Solar Collector',
	LLT		= 'LLT',
	BotLab	= 'Bot Lab',
	Radar	= 'Radar',

	Con		= 'Constructor',
	Raider	= 'Raider',
}
--mobile units
local mClasses = { Con=1, Raider=1, }

-- generic sub states
local steps = {	
	intro = {
		--message		= 'Hello! I am Nubtron, the friendly robot. I will teach you how to play Complete Annihilation. <(Click here to continue)>',
		passIfAny	= { 'clickedNubtron', },
	},
	intro2 = {
		--message		= 'Just follow my instructions. You can drag this window around by my face. <(Click here to continue)>',
		passIfAny	= { 'clickedNubtron'},
	},
	intro3 = {
		--message		= 'Practice zooming the camera in and out with your mouse\'s scroll wheel <(Click here to continue)>',
		passIfAny	= { 'clickedNubtron' },
	},
	intro4 = {
		--message		= 'Practice panning the camera up, down, left and right with your arrow keys. <(Click here to continue)>',
		passIfAny	= { 'clickedNubtron' },
	},
	intro5 = {
		--message		= 'Place your starting position by clicking on a nice flat spot on the map, then click on the <Ready> button',
		passIfAny	= { 'gameStarted' },

	},
	selectComm = {
		--message		= 'Select only your commander by clicking on it or pressing <ctrl+c>.',
		passIfAny	= {'commSelected'}
	},
	showMetalMap = {
		--message		= 'View the metal map by pressing <F4>.',
		passIfAny	= { 'metalMapView' }
	},
	hideMetalMap = {
		--message		= 'Hide the metal map by pressing <F4>.',
		passIfAnyNot	= { 'metalMapView' }
	},

	selectBotLab = {
		--message		= 'Select only your Bot Lab by clicking on it (the blue circles will help you find it).',
		passIfAny	= { 'BotLabSelected' }
	},

	selectCon = {
		--message		= 'Select one constructor by clicking on it (the blue circles will help you find it).',
		--image		= { arm='unitpics/'.. unitClasses.Con[1] ..'.png', core='unitpics/'.. unitClasses.Con[2] ..'.png' },
		image		= unitClasses.Con[1] ..'.png',
		passIfAny	= { 'ConSelected' },
	},

	guardFac = {
		--message		= 'Have the constructor guard your Bot Lab by right clicking on the Lab. The constructor will assist it until you give it a different order.',
		errIfAnyNot	= { 'ConSelected' },
	},

	--[[
	rotate = {
		--message		= 'Try rotating.',
		errIfAnyNot	= { 'commSelected', 'BotLabBuildSelected' },
		passIfAny	= { 'clickedNubtron' }
	},
	--]]
	tutorialEnd = {
		--message		= 'This is the end of the tutorial. It is now safe to shut off Nubtron. Goodbye! (Click here to restart tutorial)',
		passIfAny	= {'clickedNubtron'}
	},
}

-- main states
-- use any names you wish here, so long as they match up to the tasks table
local taskOrder = {
	'intro',
	'restoreInterface',
	'buildMex',
	'buildSolar',
	'buildLLT',
	'buildMex2',
	'buildSolar2',
	'buildFac',
	'buildRadar',
	'buildCon',
	'conAssist',
	'buildRaider',
	'congrats',
}
--use "states" from the steps table above.
local tasks = {
	
	intro = {
		--desc		= 'Introduction',
		states		= {'intro', 'intro2', 'intro3', 'intro4', 'intro5', },
	},
	restoreInterface = {
		--desc		= 'Restore your interface',
		states		= { 'hideMetalMap', },
	},
	buildMex = {
		--desc		= 'Building a Metal Extractor (mex)',		
		--tip			= 'Metal extractors output metal which is the heart of your economy.',
		states		= { 'selectComm', 'showMetalMap', 'finishMex', 'selectBuildMex', 'startMex', 'buildMex', 'hideMetalMap' },
		passIfAll	= { 'haveMex',},
	},
	buildSolar = {
		--desc		= 'Building a Solar Collector',
		--tip			= 'Energy generating structures power your mexes and factories.',
		states		= { 'selectComm', 'finishSolar', 'selectBuildSolar', 'startSolar', 'buildSolar'},
		errIfAny	= { 'metalMapView' },
		errIfAnyNot	= { 'haveMex' },
		passIfAll	= { 'haveSolar',},
	},
	buildLLT = {
		--desc		= 'Building a Light Laser Tower (LLT)',
		states		= { 'selectComm', 'finishLLT', 'selectBuildLLT', 'startLLT', 'buildLLT' },
		errIfAny	= { 'metalMapView' },
		errIfAnyNot	= { 'haveMex', 'haveSolar' },
		passIfAll	= { 'haveLLT',},
	},
	buildMex2 = {
		--desc		= 'Building another mex on a different metal spot.',
		---tip			= 'Always try to acquire more metal spots to build more mexes.',
		states		= { 'selectComm', 'showMetalMap', 'finishMex', 'selectBuildMex', 'startMex', 'buildMex', 'hideMetalMap'},
		errIfAnyNot	= { 'haveMex', 'haveSolar' },
		passIfAnyNot	= { 'lowMetalIncome', },
	},
	buildSolar2 = {
		--desc		= 'Building another Solar Collector',
		--tip			= 'Always try and build more energy structures to keep your economy growing.',
		states		= { 'selectComm', 'finishSolar', 'selectBuildSolar', 'startSolar', 'buildSolar', },
		errIfAny	= { 'metalMapView', },
		errIfAnyNot	= { 'haveMex', 'haveSolar' },
		passIfAnyNot	= { 'lowEnergyIncome', }
	},
	buildFac = {
		--desc		= 'Building a Factory',
		states		= { 'selectComm', 'finishBotLab', 'selectBuildBotLab', 'startBotLab', 'buildBotLab' },
		errIfAny	= { 'metalMapView', 'lowMetalIncome', 'lowEnergyIncome', },
		errIfAnyNot	= { 'haveMex', 'haveSolar', 'haveLLT' },
		passIfAll	= { 'haveBotLab',},
	},
	buildRadar = {
		--desc		= 'Building a Radar',
		--tip			= 'Radar coverage shows you distant enemy units as blips.',
		states		= { 'selectComm', 'finishRadar', 'selectBuildRadar', 'startRadar', 'buildRadar' },
		errIfAny	= { 'metalMapView', 'lowMetalIncome', 'lowEnergyIncome', },
		errIfAnyNot	= { 'haveMex', 'haveSolar', 'haveLLT', 'haveBotLab' },
		passIfAll	= { 'haveRadar',},
	},
	buildCon = {
		--desc		= 'Building a Constructor',
		--tip			= 'Just like your Commander, Constructors build (and assist building of) structures.',
		states		= { 'selectBotLab', 'selectBuildCon', 'buildCon' },
		errIfAny	= { 'metalMapView', 'lowMetalIncome', 'lowEnergyIncome', },
		errIfAnyNot	= { 'haveMex', 'haveSolar', 'haveLLT', 'haveBotLab', 'haveRadar' },
		passIfAll	= { 'haveCon',},
	},
	conAssist = {
		--desc		= 'Using a constructor to assist your factory',
		--tip			= 'Factories that are assisted by constructors build faster.',
		states		= { 'selectCon', 'guardFac', },
		errIfAny	= { 'metalMapView', 'lowMetalIncome', 'lowEnergyIncome', },
		errIfAnyNot	= { 'haveMex', 'haveSolar', 'haveLLT', 'haveBotLab', 'haveRadar', 'haveCon' },
		passIfAll	= { 'guardFac',},
	},
	buildRaider = {
		--desc		= 'Building Raider Bots in your factory.',
		--tip			= 'Combat units are used to attack your enemies and make them suffer.',
		states		= { 'selectBotLab', 'selectBuildRaider', 'buildRaider', },
		errIfAny	= { 'metalMapView', 'lowMetalIncome', 'lowEnergyIncome', },
		errIfAnyNot	= { 'haveMex', 'haveSolar', 'haveLLT', 'haveBotLab', 'haveRadar', 'haveCon', 'guardFac' },
		passIfAll	= { 'haveRaider',},
	},
	congrats = {
		--desc		= 'Congratulations!',
		errIfAny	= { 'metalMapView' },
		states		= { 'tutorialEnd'},
	},
}


return {unitClasses=unitClasses, unitClassNames=unitClassNames, mClasses=mClasses, steps=steps, tasks=tasks, taskOrder=taskOrder,}