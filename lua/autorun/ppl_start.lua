local settings = {
	message1 = "[ Photon ] ",
	message = " Thank you for chosing Pringles' Creations",
	color1 = Color(255, 0, 0),
	color = Color(0, 255, 255),
	delay = 5
}

if SERVER then
	AddCSLuaFile()
	util.AddNetworkString("PringlePhotonNotify")

	hook.Add("PlayerInitialSpawn", "pcreationsnoti", function(ply)
		timer.Simple(settings.delay, function()
			if IsValid(ply) then
				net.Start("PringlePhotonNotify")
				net.Send(ply)
			end
		end)
	end)
else
	net.Receive("PringlePhotonNotify", function(len, ply)
		chat.AddText(settings.color1, settings.message1, settings.color, settings.message)
	end)
end

--[[
	Requirements:
		- Editable color for chat.
		- Editable var for text.
		- Timer that takes like 5-6 seconds after player spawn.

	Notes:
		- Sorry for my code, I am not very knowledgable in free hand lua coding.
		- Thanks for anyone that helps.
		- Any suggestions you have feel free to leave.
]]--
