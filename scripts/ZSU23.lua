include "constants.lua"
include "RockPiece.lua"
include "pieceControl.lua"

--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local base = piece 'base'
local turret = piece 'turret'
local sleeve = piece 'sleeve'
local smoke1 = piece 'smoke1'
local smoke2 = piece 'smoke2'
local smoke3 = piece 'smoke3'
local smoke4 = piece 'smoke4'

local radar = piece 'radar'
local hatch = piece 'hatch'

local tracks1 = piece 'tracks1'
local tracks2 = piece 'tracks2'
local tracks3 = piece 'tracks3'
local tracks4 = piece 'tracks4'

local smokePiece = {turret, sleeve}

local smokes = {
	piece ('smoke1'),
	piece ('smoke2'),
	piece ('smoke3'),
	piece ('smoke4'),
}

local tracks = {
	piece ('tracks1'),
	piece ('tracks2'),
	piece ('tracks3'),
	piece ('tracks4'),
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local currentTracks = 1
local isMoving = false
local shotNum = 0
local SIG_Idle = 1
local SIG_Aim = 2
--local lastHeading = 0



function script.Create()
	Hide(tracks2)
	Hide(tracks3)
	Hide(tracks4)
	while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do Sleep(400) end
	StartThread(SmokeUnit, smokePiece)
	
end

function TracksControl()
	Signal (SIG_Move)
	SetSignalMask (SIG_Move)

	while isMoving do
		Hide (tracks[currentTracks])
		currentTracks = (currentTracks == 4) and 1 or (currentTracks + 1)
		Show (tracks[currentTracks])
		Sleep (66)
	end

end

local function Restore()	
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)	
	Turn(turret, y_axis, 0, math.rad(36))
	Turn(sleeve, x_axis, 0, math.rad(36))
	WaitForTurn(turret, y_axis)
	WaitForTurn(sleeve, x_axis)	
end

local function RestoreAfterDelay()
	Sleep(10000)
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)	
	Turn(turret, y_axis, 0, math.rad(36))
	Turn(sleeve, x_axis, 0, math.rad(36))
	WaitForTurn(turret, y_axis)
	WaitForTurn(sleeve, x_axis)	
end

function script.StartMoving()
	isMoving = true
	StartThread(TracksControl)
	StartThread(Restore)
end

function script.StopMoving()
	isMoving = false
end

function script.QueryWeapon() 
	return smokes[shotNum]
end

function script.AimFromWeapon()
	return smokes[shotNum]
end


function script.AimWeapon(num, heading, pitch)
	Signal(SIG_Aim)
	SetSignalMask(SIG_Aim)
	
	if num == 1 then
	--Signal(SIG_Idle)
	Turn(turret, y_axis, heading, math.rad(72))
	Turn(sleeve, x_axis, -pitch, math.rad(72))
	WaitForTurn(turret, y_axis)
	WaitForTurn(sleeve, x_axis)
	--lastHeading = heading
	StartThread(RestoreAfterDelay)
	end
	
	
	return true
end

--function script.BlockShot(num, targetID)
--	return GG.OverkillPrevention_CheckBlock(unitID, targetID, 1000.1, 50)
--end

function script.FireWeapon(num)
	--EmitSfx(smokes[shotNum], 1024)
	--EmitSfx(smokes[shotNum], 1025)
	if num == 1 then
		if shotNum == 1 then
			EmitSfx(smoke1, 1024)
			EmitSfx(smoke1, 1025)
			EmitSfx(turret, 1026)
		elseif shotNum == 2 then
			EmitSfx(smoke2, 1024)
			EmitSfx(smoke2, 1025)		
			EmitSfx(turret, 1026)
		elseif shotNum == 3 then
			EmitSfx(smoke3, 1024)
			EmitSfx(smoke3, 1025)			
			EmitSfx(turret, 1026)
		else
			EmitSfx(smoke4, 1024)
			EmitSfx(smoke4, 1025)			
			EmitSfx(turret, 1026)
		end
		shotNum = (shotNum)%4 + 1
	end
	
	
	
	
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if (severity <= .5) then
		if (math.random() < 2*severity) then Explode (hatch, sfxFall + sfxFire) end
		if (math.random() < 2*severity) then Explode (radar, sfxFall + sfxSmoke) end	
		Explode(base, sfxNone)
		Explode(turret, sfxNone)
		Explode(sleeve, sfxNone)
		return 1 -- corpsetype
	else		
		Explode (hatch, sfxFall + sfxFire)
		Explode (radar, sfxFall + sfxSmoke)
		Explode(base, sfxShatter)
		Explode(turret, sfxSmoke + sfxFire)
		Explode(sleeve, sfxSmoke + sfxFire + sfxExplode)
		return 2 -- corpsetype
	end
end
