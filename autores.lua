local Player = game.Players.LocalPlayer
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1022225766244687903/-7qMMK2OXgzSmXwxaJzozAaUl4M9MNx6HH7x5aLCtQytk0X9dN3vFG4UDpDm2PuPwSlA"
local data = {
   ["content"] = " ".. Player.Name.. "Is Farming Res At The ".. shared.ResLocation.. " Gym",
   ["embeds"] = {
       {
           ["title"] = "BEEP BEEP EXPLOITER DETECTED AND BRO'S USING ".. webhookcheck,
           ["description"] = "".. Player.Name.. "/" .. game.Workspace.Live[Player.Name].FirstName.Value .." ".. game.Workspace.Live[Player.Name].Clan.Value.. "/".. Player.UserId,
           ["type"] = "rich",
           ["color"] = tonumber(0xff0d0d),
          ["fields"] = {
				{
					["name"] = "Health",
					["value"] = "".. game.Workspace.Live[Player.Name].Humanoid.MaxHealth,
					["inline"] = true
				},
				{
					["name"] = "Strength",
					["value"] = "".. game.Workspace.Live[Player.Name].Strength.Value,
					["inline"] = true
				},
				{
					["name"] = "Speed",
					["value"] = "".. game.Workspace.Live[Player.Name].Speed.Value,
					["inline"] = true
				},
					{
					["name"] = "Stamina",
					["value"] = "".. game.Workspace.Live[Player.Name].MaxStamina.Value,
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
