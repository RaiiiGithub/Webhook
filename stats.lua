local Player = game.Players.LocalPlayer
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   shared.link
local data = {
   ["content"] = " YO YO YO WHAT'S UP MY N WORD",
   ["embeds"] = {
       {
           ["title"] = "BEEP BEEP EXPLOITER DETECTED AND BRO'S USING ".. webhookcheck,
		   ["description"] = "".. game.Players[shared.PlayerStats].Name.. "/" .. game.Workspace.Live[shared.PlayerStats].FirstName.Value .." ".. game.Workspace.Live[shared.PlayerStats].Clan.Value.. "/".. game.Players[shared.PlayerStats].UserId,
           ["type"] = "rich",
           ["color"] = tonumber(0x008DFF),
          ["fields"] = {
				{
					["name"] = "Health",
					["value"] = "".. game.Workspace.Live[shared.PlayerStats].Humanoid.MaxHealth,
					["inline"] = true
				},
				{
					["name"] = "Strength",
					["value"] = "".. game.Workspace.Live[shared.PlayerStats].Strength.Value,
					["inline"] = true
				},
				{
					["name"] = "Speed",
					["value"] = "".. game.Workspace.Live[shared.PlayerStats].Speed.Value,
					["inline"] = true
				},
					{
					["name"] = "Stamina",
					["value"] = "".. game.Workspace.Live[shared.PlayerStats].MaxStamina.Value,
					["inline"] = true
				}
			}
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

