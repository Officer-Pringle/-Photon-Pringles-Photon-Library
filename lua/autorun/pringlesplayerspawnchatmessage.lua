AddCSLuaFile()

timer.Simple(5, function()
	local chatmessage = "Thank You for Choosing Pringle Creations"

	function p_spawn(ply)
		ply:ChatPrint(Color(255,0,0), chatmessage)
	end
end)
hook.Add("PlayerInitialSpawn", "pcreationsnoti", p_spawn)


--[[
local function p_spawn(ply)
	
	ply:ChatPrint(chatmessage)

end

hook.Add("PlayerInitialSpawn", "pcreationsnoti", p_spawn)

timer.Simple(10, p_spawn)]]



--[[ NOTES ]]
--[[
	- Be able to color Chat message
	- Have a Local Varible to edit Text when wanted
	- Have a timer that takes 5-6 Seconds to active message after the player has spawned


	- Sorry for my Code, i am not very Knowledged in Free Hand lua coding
	- Thanks for anyone that helps



	- Any Suggestions you have feel free to leave 
]]