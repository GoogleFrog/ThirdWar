--local base, bottom, tamper, drill1, drill2, drill3, posts = piece ('base', 'bottom', 'tamper', 'drill1', 'drill2', 'drill3', 'posts')
-- door_l, door_r, hinge_l, hinge_r, furnace, 
--'furnace', 'door_l', 'door_r', 'hinge_l', 'hinge_r', 

local base = piece 'base'
local post1 = piece 'post1'
local post2 = piece 'post2'
local post3 = piece 'post3'
local posttop = piece 'posttop'
local sucker = piece 'sucker'
local rod = piece 'rod'
local hammer = piece 'hammer'
local mound1 = piece 'mound1'
local mound2 = piece 'mound2'
local mound3 = piece 'mound3'
local spinnerright = piece 'spinnerright'
local spinnerleft = piece 'spinnerleft'
local connector = piece 'connector'

include "pieceControl.lua"
include "constants.lua"

local SIG_OPEN = 1

local smokePiece = {mound3}

local metalmult = tonumber(Spring.GetModOptions().metalmult) or 1
local metalmultInv = metalmult > 0 and (1/metalmult) or 1

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


	
local function Open()
	Signal(SIG_OPEN)
	SetSignalMask(SIG_OPEN)
	
	--Turn (hinge_r, z_axis, math.rad(-120), math.rad(120))
	--Turn (hinge_l, z_axis, math.rad(120), math.rad(120))
	--WaitForTurn (hinge_l, z_axis)
	Move (rod, y_axis, 8, 30)
	WaitForMove (rod, y_axis)

	local height = 20
	--local decelerate = 0
	local reverseswitch = true

	while true do
		local income = Spring.GetUnitRulesParam(unitID, "current_metalIncome") or 0
		income = income * metalmultInv 
		if income > 0 then
			--Spin (furnace, y_axis, income, math.rad(1))
			Spin( spinnerright, x_axis, income/2, math.rad(.5))
			Spin( spinnerleft, x_axis, income/2, math.rad(.5))
			Move( rod, y_axis, height, income*2)
			Move( connector, y_axis, height/2, income*2)
			
			if reverseswitch then
				--Spin( hammer, x_axis, income*height/15, math.rad(0.03125) ) --/height
					Spin ( connector, x_axis, math.rad(income * 3))
					Spin (hammer, x_axis, math.rad(income * 1.5))
					Sleep (30)
					--StopSpin (hammer, x_axis, math.rad( income/10 * -1.5))
					reverseswitch = false
					
			else
				--Spin ( hammer, x_axis, income*height/15, math.rad(0.03125) )
					Spin ( connector, x_axis, math.rad( income * -3))
					Spin (hammer, x_axis, math.rad( income * -1.5))
					Sleep (30)
					--StopSpin (hammer, x_axis, math.rad(income/10 * 1.5))
					reverseswitch = true
								
			end
			
			--decelerate = decelerate + 1
			
			WaitForMove( rod, y_axis)
			--WaitForMove( connector, y_axis)
			WaitForMove( spinnerleft, x_axis)
			WaitForMove( spinnerright, x_axis)
			--WaitForMove( hammer, x_axis)
			--height = 60 - height
			
			--
			if height >= 16 then
				--height = height - 1
				height = -20
				--decelerate = 0
				--StopSpin (hammer, x_axis, 1)
				--WaitForMove( hammer, x_axis)
				--StopSpin (hammer, x_axis, income/2, math.rad(0.5))
			elseif height <= -20 then
				--height = height + 1
				height = 16
				--decelerate = 0
				--StopSpin (hammer, x_axis, 1)
				--WaitForMove( hammer, x_axis)
				--StopSpin (hammer, x_axis, income/-2, math.rad(0.5))	
			end

	
	
			
		else
			--StopSpin (furnace, y_axis, math.rad(5))
			StopSpin (spinnerright, x_axis, math.rad(5))
			StopSpin (spinnerleft, x_axis, math.rad(5))
			StopSpin (connector, x_axis, math.rad(5))
			StopSpin (hammer, x_axis, math.rad(2))
			Sleep (200)
		end
	end
end

function script.Activate()
	StartThread(Open)
end

function script.Create()
	StartThread(SmokeUnit, smokePiece)
	Hide (connector)
	if not Spring.GetUnitIsStunned(unitID) then
		StartThread(Open)
	end
end

--local explodables = {door_l, furnace}

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth


	if severity < 0.75 then
		Explode(base, sfxNone )
		--Explode(post1, sfxNone )
		--Explode(post2, sfxFall + sfxSmoke + sfxFire)
		--Explode(post3, sfxNone )
		--Explode(posttop, sfxNone )		
		Explode(rod, sfxFall + sfxSmoke + sfxFire)
		Explode(hammer, sfxFall + sfxSmoke )
		Explode(spinnerright, sfxFall + sfxSmoke )
		Explode(spinnerleft, sfxFall + sfxSmoke + sfxFire )
		Explode(connector, sfxFall + sfxSmoke )
		--Explode(mound1, sfxNone )
		--Explode(mound2, sfxNone )
		--Explode(mound3, sfxNone )
		--Explode(sucker, sfxNone )
		--Explode(base, sfxNone )	
	
		return 1
	else
		
		Explode(post1, sfxFall + sfxSmoke + sfxFire)
		Explode(post2, sfxFall + sfxSmoke + sfxFire)
		Explode(post3, sfxFall + sfxSmoke + sfxFire)
		Explode(posttop, sfxFall + sfxSmoke + sfxFire)		
		Explode(rod, sfxFall + sfxSmoke + sfxFire)
		Explode(hammer, sfxFall + sfxSmoke + sfxFire)
		Explode(spinnerright, sfxFall + sfxSmoke + sfxFire)
		Explode(spinnerleft, sfxFall + sfxSmoke + sfxFire)
		Explode(connector, sfxFall + sfxSmoke + sfxFire)
		Explode(mound1, sfxFall + sfxSmoke + sfxFire)
		Explode(mound2, sfxFall + sfxSmoke + sfxFire)
		Explode(mound3, sfxFall + sfxSmoke + sfxFire)
		Explode(sucker, sfxNone )
		--Explode(base, sfxNone )

		return 2
	end
end
