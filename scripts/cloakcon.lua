include "constants.lua"

local head = piece 'head' 
local hips = piece 'hips' 
local chest = piece 'chest' 
local rthigh = piece 'rthigh' 
local lthigh = piece 'lthigh' 
local lshin = piece 'lshin' 
local rshin = piece 'rshin' 
local rfoot = piece 'rfoot' 
local lfoot = piece 'lfoot' 
local claw1 = piece 'claw1' 
local claw2 = piece 'claw2' 
local rshoulder = piece 'rshoulder' 
local rupperarm = piece 'rupperarm' 
local rforearm = piece 'rforearm' 
local larm = piece 'larm' 
local lforearm = piece 'lforearm' 
local helmet = piece 'helmet' 

-- Signal definitions
local SIG_WALK = 1

--[[
local Animations = {};
Animations['die'] = {
	{
		['time'] = 0,
		['commands'] = {
		}
	},
	{
		['time'] = 5,
		['commands'] = {
			{['c']='turn',['p']=hips, ['a']=x_axis, ['t']=0.232016, ['s']=0.696048},
			{['c']='turn',['p']=hips, ['a']=y_axis, ['t']=0.004894, ['s']=0.014683},
			{['c']='turn',['p']=hips, ['a']=z_axis, ['t']=0.250887, ['s']=0.032047},
			{['c']='move',['p']=hips, ['a']=y_axis, ['t']=-.10286314, ['s']=16.366669},
			{['c']='move',['p']=hips, ['a']=z_axis, ['t']=.25215321, ['s']=28.891800},
			{['c']='turn',['p']=rshin, ['a']=x_axis, ['t']=1.605359, ['s']=4.816078},
			{['c']='turn',['p']=rshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			--{['c']='turn',['p']=Stomach, ['a']=x_axis, ['t']=-0.541880, ['s']=0.587425},
			--{['c']='turn',['p']=Stomach, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			--{['c']='turn',['p']=Stomach, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=1.114193, ['s']=2.644143},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=z_axis, ['t']=0.161811, ['s']=0.485432},
			{['c']='turn',['p']=rthigh, ['a']=x_axis, ['t']=-0.286401, ['s']=0.859202},
			{['c']='turn',['p']=rthigh, ['a']=y_axis, ['t']=-0.000001, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=head, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=head, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=head, ['a']=z_axis, ['t']=0.432971, ['s']=1.298912},
			{['c']='turn',['p']=larm, ['a']=x_axis, ['t']=-0.192287, ['s']=1.014448},
			{['c']='turn',['p']=larm, ['a']=z_axis, ['t']=0.015827, ['s']=0.000000},
			{['c']='turn',['p']=lthigh, ['a']=x_axis, ['t']=-0.094390, ['s']=0.283170},
			{['c']='turn',['p']=lthigh, ['a']=y_axis, ['t']=-0.245644, ['s']=0.736933},
			{['c']='turn',['p']=lthigh, ['a']=z_axis, ['t']=0.163177, ['s']=0.489530},
			{['c']='turn',['p']=rshoulder, ['a']=x_axis, ['t']=-0.083255, ['s']=1.066882},
			{['c']='turn',['p']=rshoulder, ['a']=y_axis, ['t']=0.413306, ['s']=0.676712},
			{['c']='turn',['p']=rshoulder, ['a']=z_axis, ['t']=0.238749, ['s']=0.331098},
		}
	},
	{
		['time'] = 15,
		['commands'] = {
			{['c']='move',['p']=hips, ['a']=y_axis, ['t']=-.6303279, ['s']=8.535074},
			{['c']='move',['p']=hips, ['a']=z_axis, ['t']=.23746590, ['s']=3.147281},
			{['c']='turn',['p']=rshin, ['a']=x_axis, ['t']=2.268937, ['s']=1.421952},
			{['c']='turn',['p']=rshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			--{['c']='turn',['p']=Stomach, ['a']=x_axis, ['t']=-0.411610, ['s']=0.279149},
			--{['c']='turn',['p']=Stomach, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			--{['c']='turn',['p']=Stomach, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rupperarm, ['a']=x_axis, ['t']=-0.298665, ['s']=0.639996},
			{['c']='turn',['p']=rupperarm, ['a']=y_axis, ['t']=0.057640, ['s']=0.123514},
			{['c']='turn',['p']=rupperarm, ['a']=z_axis, ['t']=-0.052757, ['s']=0.113051},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=1.883354, ['s']=1.648202},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=x_axis, ['t']=-0.791779, ['s']=1.082954},
			{['c']='turn',['p']=rthigh, ['a']=y_axis, ['t']=-0.000001, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=larm, ['a']=x_axis, ['t']=-0.419692, ['s']=0.487297},
			{['c']='turn',['p']=larm, ['a']=y_axis, ['t']=-0.208858, ['s']=0.000000},
			{['c']='turn',['p']=larm, ['a']=z_axis, ['t']=0.015827, ['s']=0.000000},
			{['c']='turn',['p']=lthigh, ['a']=x_axis, ['t']=-0.641872, ['s']=1.173175},
			{['c']='turn',['p']=lthigh, ['a']=y_axis, ['t']=-0.245644, ['s']=0.000000},
			{['c']='turn',['p']=lthigh, ['a']=z_axis, ['t']=0.163177, ['s']=0.000000},
			{['c']='turn',['p']=rforearm, ['a']=x_axis, ['t']=-0.221850, ['s']=0.475394},
			{['c']='turn',['p']=rforearm, ['a']=y_axis, ['t']=-0.304574, ['s']=0.652659},
			{['c']='turn',['p']=rforearm, ['a']=z_axis, ['t']=-0.036910, ['s']=0.079093},
		}
	},
	{
		['time'] = 29,
		['commands'] = {
			{['c']='move',['p']=hips, ['a']=y_axis, ['t']=-.11554915, ['s']=26.258180},
			{['c']='turn',['p']=rshin, ['a']=x_axis, ['t']=1.680374, ['s']=2.942814},
			{['c']='turn',['p']=rshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rupperarm, ['a']=x_axis, ['t']=-0.603072, ['s']=1.522036},
			{['c']='turn',['p']=rupperarm, ['a']=y_axis, ['t']=0.111299, ['s']=0.268299},
			{['c']='turn',['p']=rupperarm, ['a']=z_axis, ['t']=-0.147644, ['s']=0.474433},
			--{['c']='turn',['p']=AssLeft, ['a']=x_axis, ['t']=0.575311, ['s']=1.871441},
			--{['c']='turn',['p']=AssLeft, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			--{['c']='turn',['p']=AssLeft, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=1.425336, ['s']=2.290088},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=x_axis, ['t']=0.186159, ['s']=0.930793},
			{['c']='turn',['p']=chest, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=z_axis, ['t']=0.161811, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=x_axis, ['t']=-0.144300, ['s']=3.237398},
			{['c']='turn',['p']=rthigh, ['a']=y_axis, ['t']=-0.000001, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=larm, ['a']=x_axis, ['t']=-0.921177, ['s']=2.507425},
			{['c']='turn',['p']=larm, ['a']=y_axis, ['t']=-0.108622, ['s']=0.501180},
			{['c']='turn',['p']=larm, ['a']=z_axis, ['t']=-0.047991, ['s']=0.319091},
			{['c']='turn',['p']=lthigh, ['a']=x_axis, ['t']=-0.523475, ['s']=0.591982},
			{['c']='turn',['p']=lthigh, ['a']=z_axis, ['t']=0.163177, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=x_axis, ['t']=-0.697045, ['s']=3.068952},
			{['c']='turn',['p']=rshoulder, ['a']=y_axis, ['t']=0.503615, ['s']=0.451545},
			{['c']='turn',['p']=rshoulder, ['a']=z_axis, ['t']=0.051914, ['s']=0.934174},
			{['c']='turn',['p']=rforearm, ['a']=x_axis, ['t']=-0.563546, ['s']=1.708478},
			{['c']='turn',['p']=rforearm, ['a']=y_axis, ['t']=-0.222652, ['s']=0.409613},
			{['c']='turn',['p']=rforearm, ['a']=z_axis, ['t']=0.061517, ['s']=0.492138},
		}
	},
	{
		['time'] = 35,
		['commands'] = {
			{['c']='turn',['p']=hips, ['a']=x_axis, ['t']=1.191343, ['s']=4.796636},
			{['c']='turn',['p']=hips, ['a']=y_axis, ['t']=0.004894, ['s']=0.000000},
			{['c']='turn',['p']=hips, ['a']=z_axis, ['t']=0.250887, ['s']=0.000000},
			{['c']='move',['p']=hips, ['a']=x_axis, ['t']=.4315906, ['s']=13.935559},
			{['c']='move',['p']=hips, ['a']=y_axis, ['t']=-.21297955, ['s']=48.715196},
			{['c']='move',['p']=hips, ['a']=z_axis, ['t']=.15503991, ['s']=41.212993},
			{['c']='turn',['p']=rshin, ['a']=x_axis, ['t']=0.670799, ['s']=5.047876},
			{['c']='turn',['p']=rshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rupperarm, ['a']=x_axis, ['t']=-1.360638, ['s']=3.787832},
			{['c']='turn',['p']=rupperarm, ['a']=y_axis, ['t']=0.111299, ['s']=0.000001},
			{['c']='turn',['p']=rupperarm, ['a']=z_axis, ['t']=-0.147644, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=0.396744, ['s']=5.142960},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=x_axis, ['t']=0.517826, ['s']=1.658337},
			{['c']='turn',['p']=chest, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=z_axis, ['t']=0.161811, ['s']=0.000000},
			{['c']='turn',['p']=larm, ['a']=x_axis, ['t']=-1.242896, ['s']=1.608593},
			{['c']='turn',['p']=larm, ['a']=y_axis, ['t']=-0.108622, ['s']=0.000000},
			{['c']='turn',['p']=larm, ['a']=z_axis, ['t']=-0.047991, ['s']=0.000000},
			{['c']='turn',['p']=rfoot, ['a']=x_axis, ['t']=0.448296, ['s']=2.241478},
			{['c']='turn',['p']=rfoot, ['a']=y_axis, ['t']=0.000001, ['s']=0.000000},
			{['c']='turn',['p']=rfoot, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=x_axis, ['t']=-1.191173, ['s']=2.470638},
			{['c']='turn',['p']=rshoulder, ['a']=y_axis, ['t']=0.503615, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=z_axis, ['t']=0.051914, ['s']=0.000000},
			{['c']='turn',['p']=rforearm, ['a']=x_axis, ['t']=-1.308940, ['s']=3.726971},
			{['c']='turn',['p']=rforearm, ['a']=y_axis, ['t']=-0.222652, ['s']=0.000000},
			{['c']='turn',['p']=rforearm, ['a']=z_axis, ['t']=0.061517, ['s']=0.000000},
		}
	},
	{
		['time'] = 41,
		['commands'] = {
			{['c']='turn',['p']=hips, ['a']=x_axis, ['t']=1.511230, ['s']=2.399147},
			{['c']='turn',['p']=hips, ['a']=y_axis, ['t']=0.004894, ['s']=0.000000},
			{['c']='turn',['p']=hips, ['a']=z_axis, ['t']=0.250887, ['s']=0.000000},
			{['c']='move',['p']=hips, ['a']=y_axis, ['t']=-.25564775, ['s']=32.001157},
			{['c']='move',['p']=hips, ['a']=z_axis, ['t']=.7163431, ['s']=62.554203},
			{['c']='turn',['p']=rshin, ['a']=x_axis, ['t']=0.215270, ['s']=3.416467},
			{['c']='turn',['p']=rshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lfoot, ['a']=x_axis, ['t']=0.205250, ['s']=2.591299},
			{['c']='turn',['p']=lfoot, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lfoot, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=0.168139, ['s']=1.714537},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=larm, ['a']=x_axis, ['t']=-1.695927, ['s']=3.397732},
			{['c']='turn',['p']=larm, ['a']=y_axis, ['t']=-0.003014, ['s']=0.792059},
			{['c']='turn',['p']=larm, ['a']=z_axis, ['t']=0.707491, ['s']=5.666117},
			{['c']='turn',['p']=lthigh, ['a']=x_axis, ['t']=-0.615074, ['s']=0.686993},
			{['c']='turn',['p']=lthigh, ['a']=z_axis, ['t']=0.163177, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=x_axis, ['t']=-1.601538, ['s']=3.077738},
			{['c']='turn',['p']=rshoulder, ['a']=y_axis, ['t']=0.078940, ['s']=3.185058},
			{['c']='turn',['p']=rshoulder, ['a']=z_axis, ['t']=-1.185024, ['s']=9.277040},
		}
	},
	{
		['time'] = 45,
		['commands'] = {
		}
	},
}
]]--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function Walk()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	
	while true do
		Turn(lshin, x_axis, math.rad(10), math.rad(315))				
		Turn(rshin, x_axis, math.rad(85), math.rad(260))
		Turn(rthigh, x_axis, math.rad(-100), math.rad(135))
		Turn(lthigh, x_axis, math.rad(30), math.rad(135))
		if GetUnitValue(COB.INBUILDSTANCE) == 0 then
			Turn(larm, x_axis, math.rad(-30), math.rad(60))
			Turn(rshoulder, x_axis, math.rad(30), math.rad(60))
		end
		WaitForTurn(lthigh, x_axis)
		
		Turn(rshin, x_axis, math.rad(10), math.rad(315))
		Turn(lshin, x_axis, math.rad(85), math.rad(260))
		Turn(lthigh, x_axis, math.rad(-100), math.rad(135))
		Turn(rthigh, x_axis, math.rad(30), math.rad(135))
		if GetUnitValue(COB.INBUILDSTANCE) == 0 then
			Turn(larm, x_axis, math.rad(30), math.rad(60))
			Turn(rshoulder, x_axis, math.rad(-30), math.rad(60))
		end
		WaitForTurn(rthigh, x_axis)
	end
end

local function StopWalk ()
	Signal(SIG_WALK)
	Turn(lfoot, x_axis, 0, math.rad(395))
	Turn(rfoot, x_axis, 0, math.rad(395))
	Turn(rthigh, x_axis, 0, math.rad(235))
	Turn(lthigh, x_axis, 0, math.rad(230))
	Turn(lshin, x_axis, 0, math.rad(235))
	Turn(rshin, x_axis, 0, math.rad(230))
	
	Turn(rthigh, y_axis, math.rad(-20), math.rad(135))
	Turn(lthigh, y_axis, math.rad(20), math.rad(130))
	
	Turn(rthigh, z_axis, math.rad(-3), math.rad(135))
	Turn(lthigh, z_axis, math.rad(3), math.rad(130))
	Turn(lfoot, z_axis, math.rad(-3), math.rad(130))
	Turn(rfoot, z_axis, math.rad(3), math.rad(130))
	
	if GetUnitValue(COB.INBUILDSTANCE) == 0 then
		Turn(larm, x_axis, 0, math.rad(30))
		Turn(rshoulder, x_axis, 0, math.rad(30))
	end
end

function script.StartMoving()
	StartThread(Walk)
	GG.SetWantedCloaked(unitID, 0)		
	GG.UpdateUnitAttributes(unitID)	
end

function script.StopMoving()
	StartThread(StopWalk)
	
	GG.SetWantedCloaked(unitID, 1)		
	GG.UpdateUnitAttributes(unitID)		
end

function script.StartBuilding(heading, pitch)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	Turn(chest, y_axis, heading, math.rad(150))
	Turn(rshoulder, x_axis, -math.rad(90) - pitch, math.rad(150))
	Turn(rforearm, x_axis, 0, math.rad(150))
	Turn(claw1, x_axis, math.rad(-30), math.rad(150))
	Turn(claw2, x_axis, math.rad(30), math.rad(150))
	
	GG.SetWantedCloaked(unitID, 0)		
	GG.UpdateUnitAttributes(unitID)	
end

function script.StopBuilding()
	SetUnitValue(COB.INBUILDSTANCE, 0)
	Turn(rshoulder, x_axis, 0, math.rad(150))
	Turn(rforearm, x_axis, 0, math.rad(150))
	Turn(chest, y_axis, 0, math.rad(150))
	Turn(rshoulder, x_axis, 0, math.rad(100))
	Turn(claw1, x_axis, 0, math.rad(100))
	Turn(claw2, x_axis, 0, math.rad(100))
	
	GG.SetWantedCloaked(unitID, 1)		
	GG.UpdateUnitAttributes(unitID)	
end

function script.QueryNanoPiece()
	GG.LUPS.QueryNanoPiece(unitID,unitDefID,Spring.GetUnitTeam(unitID), claw1)
	return claw1
end

--function script.Create()
	--StartThread(SmokeUnit, {chest})
--end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	local corpseType = 2
	if severity <= .67 then
		Explode(hips, sfxFall)
		corpseType = 1
		
		--InitializeDeathAnimation()
		--PlayAnimation('die')		
		
	elseif severity <= 1.50 then
		corpseType = 2
		Explode(hips, sfxFall)
		Explode(chest, sfxFall)
		Explode(head, sfxFall )
		
	else
		corpseType = 2
		EmitSfx(chest, 1026)
		EmitSfx(hips, 1027)
		Explode(hips, sfxShatter)
		Explode(chest, sfxShatter)
		Explode(head, sfxFall )
		Explode(larm, sfxFall )
		Explode(lforearm, sfxFall )		
		Explode(rshoulder, sfxFall )
		Explode(rupperarm, sfxFall )
		Explode(rforearm, sfxFall )
		Explode(lthigh, sfxFall )
		Explode(lshin, sfxFall + sfxExplodeOnHit)
		Explode(lfoot, sfxFall )
		Explode(rfoot, sfxFall + sfxExplodeOnHit)
		Explode(rthigh, sfxFall )
		Explode(rshin, sfxFall + sfxExplodeOnHit)	
		
	end
	return corpseType
end