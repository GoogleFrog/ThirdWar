
include "constants.lua"

-- pieces
local head = piece "head"
local hips = piece "hips"
local chest = piece "chest"

-- left arm
local lshoulder = piece "lshoulder"
local lforearm = piece "lforearm"
local gun = piece "gun"
--local magazine = piece "magazine"
local flare = piece "flare"
local ejector = piece "ejector"

-- right arm
local rshoulder = piece "rshoulder"
local rforearm = piece "rforearm"

-- left leg
local lthigh = piece "lthigh"
local lshin = piece "lshin"
local lfoot = piece "lfoot"

-- right leg
local rthigh = piece "rthigh"
local rshin = piece "rshin"
local rfoot = piece "rfoot"

--local smokePiece = {head, hips, chest}


--constants
local runspeed = 8
local steptime = 40

-- variables
local firing = 0

--signals
local SIG_Restore = 1
local SIG_Walk = 2
local SIG_Aim = 4

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
			{['c']='turn',['p']=lshoulder, ['a']=x_axis, ['t']=-0.192287, ['s']=1.014448},
			{['c']='turn',['p']=lshoulder, ['a']=z_axis, ['t']=0.015827, ['s']=0.000000},
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
			{['c']='turn',['p']=rforearm, ['a']=x_axis, ['t']=-0.298665, ['s']=0.639996},
			{['c']='turn',['p']=rforearm, ['a']=y_axis, ['t']=0.057640, ['s']=0.123514},
			{['c']='turn',['p']=rforearm, ['a']=z_axis, ['t']=-0.052757, ['s']=0.113051},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=1.883354, ['s']=1.648202},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=x_axis, ['t']=-0.791779, ['s']=1.082954},
			{['c']='turn',['p']=rthigh, ['a']=y_axis, ['t']=-0.000001, ['s']=0.000000},
			{['c']='turn',['p']=rthigh, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshoulder, ['a']=x_axis, ['t']=-0.419692, ['s']=0.487297},
			{['c']='turn',['p']=lshoulder, ['a']=y_axis, ['t']=-0.208858, ['s']=0.000000},
			{['c']='turn',['p']=lshoulder, ['a']=z_axis, ['t']=0.015827, ['s']=0.000000},
			{['c']='turn',['p']=lthigh, ['a']=x_axis, ['t']=-0.641872, ['s']=1.173175},
			{['c']='turn',['p']=lthigh, ['a']=y_axis, ['t']=-0.245644, ['s']=0.000000},
			{['c']='turn',['p']=lthigh, ['a']=z_axis, ['t']=0.163177, ['s']=0.000000},
			{['c']='turn',['p']=gun, ['a']=x_axis, ['t']=-0.221850, ['s']=0.475394},
			{['c']='turn',['p']=gun, ['a']=y_axis, ['t']=-0.304574, ['s']=0.652659},
			{['c']='turn',['p']=gun, ['a']=z_axis, ['t']=-0.036910, ['s']=0.079093},
		}
	},
	{
		['time'] = 29,
		['commands'] = {
			{['c']='move',['p']=hips, ['a']=y_axis, ['t']=-.11554915, ['s']=26.258180},
			{['c']='turn',['p']=rshin, ['a']=x_axis, ['t']=1.680374, ['s']=2.942814},
			{['c']='turn',['p']=rshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshin, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rforearm, ['a']=x_axis, ['t']=-0.603072, ['s']=1.522036},
			{['c']='turn',['p']=rforearm, ['a']=y_axis, ['t']=0.111299, ['s']=0.268299},
			{['c']='turn',['p']=rforearm, ['a']=z_axis, ['t']=-0.147644, ['s']=0.474433},
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
			{['c']='turn',['p']=lshoulder, ['a']=x_axis, ['t']=-0.921177, ['s']=2.507425},
			{['c']='turn',['p']=lshoulder, ['a']=y_axis, ['t']=-0.108622, ['s']=0.501180},
			{['c']='turn',['p']=lshoulder, ['a']=z_axis, ['t']=-0.047991, ['s']=0.319091},
			{['c']='turn',['p']=lthigh, ['a']=x_axis, ['t']=-0.523475, ['s']=0.591982},
			{['c']='turn',['p']=lthigh, ['a']=z_axis, ['t']=0.163177, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=x_axis, ['t']=-0.697045, ['s']=3.068952},
			{['c']='turn',['p']=rshoulder, ['a']=y_axis, ['t']=0.503615, ['s']=0.451545},
			{['c']='turn',['p']=rshoulder, ['a']=z_axis, ['t']=0.051914, ['s']=0.934174},
			{['c']='turn',['p']=gun, ['a']=x_axis, ['t']=-0.563546, ['s']=1.708478},
			{['c']='turn',['p']=gun, ['a']=y_axis, ['t']=-0.222652, ['s']=0.409613},
			{['c']='turn',['p']=gun, ['a']=z_axis, ['t']=0.061517, ['s']=0.492138},
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
			{['c']='turn',['p']=rforearm, ['a']=x_axis, ['t']=-1.360638, ['s']=3.787832},
			{['c']='turn',['p']=rforearm, ['a']=y_axis, ['t']=0.111299, ['s']=0.000001},
			{['c']='turn',['p']=rforearm, ['a']=z_axis, ['t']=-0.147644, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=x_axis, ['t']=0.396744, ['s']=5.142960},
			{['c']='turn',['p']=lshin, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lshin, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=x_axis, ['t']=0.517826, ['s']=1.658337},
			{['c']='turn',['p']=chest, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chest, ['a']=z_axis, ['t']=0.161811, ['s']=0.000000},
			{['c']='turn',['p']=lshoulder, ['a']=x_axis, ['t']=-1.242896, ['s']=1.608593},
			{['c']='turn',['p']=lshoulder, ['a']=y_axis, ['t']=-0.108622, ['s']=0.000000},
			{['c']='turn',['p']=lshoulder, ['a']=z_axis, ['t']=-0.047991, ['s']=0.000000},
			{['c']='turn',['p']=rfoot, ['a']=x_axis, ['t']=0.448296, ['s']=2.241478},
			{['c']='turn',['p']=rfoot, ['a']=y_axis, ['t']=0.000001, ['s']=0.000000},
			{['c']='turn',['p']=rfoot, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=x_axis, ['t']=-1.191173, ['s']=2.470638},
			{['c']='turn',['p']=rshoulder, ['a']=y_axis, ['t']=0.503615, ['s']=0.000000},
			{['c']='turn',['p']=rshoulder, ['a']=z_axis, ['t']=0.051914, ['s']=0.000000},
			{['c']='turn',['p']=gun, ['a']=x_axis, ['t']=-1.308940, ['s']=3.726971},
			{['c']='turn',['p']=gun, ['a']=y_axis, ['t']=-0.222652, ['s']=0.000000},
			{['c']='turn',['p']=gun, ['a']=z_axis, ['t']=0.061517, ['s']=0.000000},
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
			{['c']='turn',['p']=lshoulder, ['a']=x_axis, ['t']=-1.695927, ['s']=3.397732},
			{['c']='turn',['p']=lshoulder, ['a']=y_axis, ['t']=-0.003014, ['s']=0.792059},
			{['c']='turn',['p']=lshoulder, ['a']=z_axis, ['t']=0.707491, ['s']=5.666117},
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

local animCmd = {['turn']=Turn,['move']=Move};
function PlayAnimation(animname)
    local anim = Animations[animname];
    for i = 1, #anim do
        local commands = anim[i].commands;
        for j = 1,#commands do
            local cmd = commands[j];
            animCmd[cmd.c](cmd.p,cmd.a,cmd.t,cmd.s);
        end
        if(i < #anim) then
            local t = anim[i+1]['time'] - anim[i]['time'];
            Sleep(t*33); -- sleep works on milliseconds
        end
    end
end

function constructSkeleton(unit, piece, offset)
    if (offset == nil) then
        offset = {0,0,0};
    end

    local bones = {};
    local info = Spring.GetUnitPieceInfo(unit,piece);

    for i=1,3 do
        info.offset[i] = offset[i]+info.offset[i];
    end 

    bones[piece] = info.offset;
    local map = Spring.GetUnitPieceMap(unit);
    local children = info.children;

    if (children) then
        for i, childName in pairs(children) do
            local childId = map[childName];
            local childBones = constructSkeleton(unit, childId, info.offset);
            for cid, cinfo in pairs(childBones) do
                bones[cid] = cinfo;
            end
        end
    end        
    return bones;
end


function script.Create()
	--StartThread(SmokeUnit, smokePiece)
	Turn(flare, x_axis, 1.6, 5)
	Turn(lshoulder, x_axis, -0.9, 5)
	Turn(lforearm, z_axis, -0.2, 5)
end

local function Walk()
	Signal(SIG_Walk)
	SetSignalMask(SIG_Walk)
	while (true) do
		Turn(lshoulder, x_axis, -1.2, runspeed*0.2)
		Turn(hips, z_axis, 0.1, runspeed*0.05)
		Turn(rshoulder, x_axis, 0.5, runspeed*0.3)
		
		Turn(rthigh, x_axis, -1.5, runspeed*1)
		Turn(rshin, x_axis, 1.3, runspeed*1)
--		Turn(rfoot, x_axis, 0.5, runspeed*1)
		
		Turn(lshin, x_axis, 0.2, runspeed*1)
		Turn(lthigh, x_axis, 1.2, runspeed*1)

		WaitForTurn(rthigh, x_axis)

		Sleep(steptime)
		
		Turn(lshoulder, x_axis, -0.6, runspeed*0.2)
		Turn(hips, z_axis, -0.1, runspeed*0.05)
		Turn(rshoulder, x_axis, -0.5, runspeed*0.3)
		
		Turn(lthigh, x_axis, -1.5, runspeed*1)
		Turn(lshin, x_axis, 1.3, runspeed*1)
--		Turn(lfoot, x_axis, 0.5, runspeed*1)
		
		Turn(rshin, x_axis, 0.2, runspeed*1)
		Turn(rthigh, x_axis, 1.2, runspeed*1)
		
		WaitForTurn(lthigh, x_axis)		
			
		Sleep(steptime)

	end
end

local function StopWalk()
	Signal(SIG_Walk)
	SetSignalMask(SIG_Walk)
	Turn(hips, z_axis, 0, 0.5)
	
	Turn(lthigh, x_axis, 0, 2)
	Turn(lshin, x_axis, 0, 2)
	Turn(lfoot, x_axis, 0, 2)
	
	Turn(rthigh, x_axis, 0, 2)
	Turn(rshin, x_axis, 0, 2)
	Turn(rfoot, x_axis, 0, 2)
end

function script.StartMoving()
	StartThread(Walk)
	GG.SetWantedCloaked(unitID, 0)
	Spring.SetUnitArmored(unitID,false)
	--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 1.0)	
	GG.UpdateUnitAttributes(unitID)
end

function script.StopMoving()
	StartThread(StopWalk)
	GG.SetWantedCloaked(unitID, 1)	
	--Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", 0.1)
	GG.UpdateUnitAttributes(unitID)	
	
end

local function RestoreAfterDelay()
	Signal(SIG_Restore)
	SetSignalMask(SIG_Restore)
	Sleep(2000)
	firing = 0
	Turn(chest, y_axis, 0, 3)
	Turn(lshoulder, x_axis, -0.9, 5)
	Turn(rshoulder, x_axis, 0, 3)

	Turn(lforearm, z_axis, -0.2, 5)
	Turn(lshoulder, z_axis, 0, 3)
	Turn(rshoulder, z_axis, 0, 3)
	Turn(head, y_axis, 0, 2)
	Turn(head, x_axis, 0, 2)
	
end

--[[
function script.QueryWeapon(num) 
	return flare 
end


function script.AimFromWeapon(num) 
	return chest 
end

function script.AimWeapon(num, heading, pitch)
	
	Signal(SIG_Aim)
	SetSignalMask(SIG_Aim)
	--[[ Gun Hugger	
	
	Turn(chest, y_axis, 1.1 + heading, 12)
	Turn(lshoulder, x_axis, -1 -pitch, 12)
	Turn(rshoulder, x_axis, -0.9 -pitch, 12)
	
	Turn(rshoulder, z_axis, 0.3, 9)
	Turn(lshoulder, z_axis, -0.3, 9)
	
	Turn(head, y_axis, -0.8, 9)
	Turn(head, x_axis, -pitch, 9)
--]]
	
	-- Outstreched Arm
	firing = 1
	Turn(chest, y_axis, heading, 12)
	Turn(lforearm, z_axis, 0, 5)
	Turn(lshoulder, x_axis, -pitch - 1.5, 12)
	
	
	WaitForTurn(chest, y_axis)
	WaitForTurn(lshoulder, x_axis)
	StartThread(RestoreAfterDelay)
	return true
end

function script.FireWeapon(num)
	--Spin(magazine, y_axis, 2)
	EmitSfx(ejector, 1024)
	EmitSfx(flare, 1025)
	GG.SetWantedCloaked(unitID, 1)
end
]]--



function script.StartBuilding(heading, pitch)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	Turn(chest, y_axis, heading, 12)
	Turn(lforearm, z_axis, 0, 5)
	Turn(lshoulder, x_axis, -pitch - 1.5, 12)	
--	WaitForTurn(chest, y_axis)
--	WaitForTurn(lshoulder, x_axis)
	StartThread(RestoreAfterDelay)
	
	GG.SetWantedCloaked(unitID, 0)	
	GG.UpdateUnitAttributes(unitID)	
	
end

function script.StopBuilding()
	SetUnitValue(COB.INBUILDSTANCE, 0)
	GG.SetWantedCloaked(unitID, 1)	
	GG.UpdateUnitAttributes(unitID)	

end

function script.QueryNanoPiece()
	GG.LUPS.QueryNanoPiece(unitID,unitDefID,Spring.GetUnitTeam(unitID), flare)
	return flare
end

function script.Create()
	StartThread(SmokeUnit, {chest})
end


function script.Killed(recentDamage, maxHealth)	
	local severity = recentDamage / maxHealth
	local px, py, pz = Spring.GetUnitPosition(unitID)
	local dice
	
	GG.SetWantedCloaked(unitID, 1)
	
	if (severity <= .98) then	
		--EmitSfx(chest, 1026)
		--Explode(hips, sfxNone)
		--Explode(head, sfxNone)
		--Explode(chest, sfxNone)
		
		InitializeDeathAnimation()
		PlayAnimation('die')				
		
		dice = math.random(0,9)	
		
		
		if dice < 1 then
			Spring.PlaySoundFile("sounds/human/death8.wav", 10, px, py, pz)
		elseif dice < 2 then
			Spring.PlaySoundFile("sounds/human/death9.wav", 10, px, py, pz)
		elseif dice < 3 then
			Spring.PlaySoundFile("sounds/human/death12.wav", 10, px, py, pz)
		elseif dice < 4 then
			Spring.PlaySoundFile("sounds/human/death13.wav", 10, px, py, pz)			
		elseif dice < 5 then
			Spring.PlaySoundFile("sounds/human/death14.wav", 10, px, py, pz)
		elseif dice < 6 then
			Spring.PlaySoundFile("sounds/human/death15.wav", 10, px, py, pz)				
		elseif dice < 7 then
			Spring.PlaySoundFile("sounds/human/death16.wav", 10, px, py, pz)
		elseif dice < 8 then
			Spring.PlaySoundFile("sounds/human/death17.wav", 10, px, py, pz)				
		else		
			
		end			
		
		return 1 -- corpsetype
	elseif (severity <= .99) then		
		--EmitSfx(chest, 1027)
		--Explode(hips, sfxNone)
		--Explode(head, sfxNone)
		--Explode(chest, sfxNone)
		return 1 -- corpsetype
	else
		EmitSfx(hips, 1026)
		EmitSfx(head, 1026)
		EmitSfx(chest, 1027)		
		Explode(hips, sfxNone)
		Explode(head, sfxNone )
		Explode(chest, sfxNone)
		

		dice = math.random(0,6)
		
		if dice < 1 then
			Spring.PlaySoundFile("sounds/human/gibimp2.wav", 10, px, py, pz)
		elseif dice < 2 then
			Spring.PlaySoundFile("sounds/human/gibimp3.wav", 10, px, py, pz)
		elseif dice < 3 then
			Spring.PlaySoundFile("sounds/human/gibsplt1.wav", 10, px, py, pz)
		elseif dice < 4 then
			Spring.PlaySoundFile("sounds/human/gibsplt2.wav", 10, px, py, pz)			
		elseif dice < 5 then
			Spring.PlaySoundFile("sounds/human/gibsplt3.wav", 10, px, py, pz)			
		else		
			
		end		
		
		return 2 -- corpsetype
	end
end