return {	
	
	--[[
	local dice = math.random(0,6)
	
		if dice < 1 then
			map = "america",
		elseif dice < 2 then
			map = "aum_1.1",
		elseif dice < 3 then
			map = "bananavalley",
		elseif dice < 4 then
			map = "calamity_1.1",			
		elseif dice < 5 then
			map = "Coastlines_Dry_V1",			
		else		
			map = "europe",
		end	

]]--		
		
	
	
	--local mapfiles = VFS.DirList("maps", "*.sd7")
	--Spring.Echo("mapfiles", #mapfiles)
	--if (#mapfiles > 0) then
		--map = (mapfiles[ math.random(#mapfiles) ], 1)		
		--map = math.random(#mapfiles)		
	--end	
	
	--map = Spring.GetMapList() -> { 'aum_1.1.smf', 'Coastlines_Dry_V1.smf', 'DeltaSiegeX.smf' }
	

	map = "Mini_SpeedMetal_Wide",
	--enemyAI = "CircuitAIEasy" .. ((Configuration:GetIsRunning64Bit() and "64") or "32"),
	enemyAI = "Null AI",
}
