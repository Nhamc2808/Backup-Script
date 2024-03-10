spawn(function()
		pcall(function()
		hookfunction(print, function(...)
			game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
			game:Shutdown()
			while true do end
			return
		end)
		hookfunction(warn, function(...)
			game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
			game:Shutdown()
			while true do end
			return
		end)
		hookfunction(error, function(...)
			game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
			game:Shutdown()
			while true do end
			return
		end)
	
		
	hookfunction(print, function(a)
		if string.find(a:lower(), "http") then
			game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
			game:Shutdown()
			while true do end
		end
	end)
	hookfunction(warn, function(a)
		if string.find(a:lower(), "http") then
			game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
			game:Shutdown()
			while true do end
		end
	end)
	hookfunction(error, function(a)
		if string.find(a:lower(), "http") then
			game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
			game:Shutdown()
			while true do end
		end
	end)
			
		 local oldwrite
			oldwrite = hookfunction(writefile, function(file, content)
				if(string.find(string.lower(content), 'http') or string.find(string.lower(content), '//') or string.find(string.lower(content), 'https://discord.com/api/webhooks/')) then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return
				end
			
				return oldwrite(file, content)
			end)
			local oldappend
			oldappend = hookfunction(appendfile, function(file, content)
				if(string.find(string.lower(content), 'http') or string.find(string.lower(content), '//') or string.find(string.lower(content), 'https://discord.com/api/webhooks/')) then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return
				end
				return oldappend(file, content)
			end)
			game.DescendantAdded:Connect(function(c)
				if c and c:IsA('TextLabel') or c:IsA('TextButton') or c:IsA('Message') then
					if string.find(string.lower(c.Text), 'http') then
						game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
						game:Shutdown()
						while true do end
						c:Destroy()
					end
				end
			end)
			getgenv().rconsoletitle = nil
			getgenv().rconsoleprint = nil
			getgenv().rconsolewarn = nil
			getgenv().rconsoleinfo = nil
			getgenv().rconsolerr = nil
			getgenv().clonefunction = function(...) while true do end return end
			game.CoreGui.ChildAdded:Connect(function(c)
				if(string.lower(c.Name) == 'devconsolemaster') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					c:Destroy()
				end
			end)
			local oldNamecall
			oldNamecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
				local method = getnamecallmethod()
				if(string.lower(method) == 'rconsoleprint') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return 
				end
				if(string.lower(method) == 'rconsoleinfo') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return 
				end
				if(string.lower(method) == 'rconsolewarn') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return 
				end
				if(string.lower(method) == 'rconsoleerr') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return
				end
				if(string.lower(method) == 'warn') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return
				end
				if(string.lower(method) == 'error') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return
				end
				if(string.lower(method) == 'rendernametag') then
					game.Players.LocalPlayer:Kick("Anti Http Spy | Fuck Off !!")
					game:Shutdown()
					while true do end
					return 
				end
				return oldNamecall(self, ...)
			end))
			end)
		end)
		
local RandomId = math.random(100000000000000000000000000000000, 1000000000000000000000000000000000000000000)
local url = getgenv().UrlWebhook
local data = {
["embeds"] = {
["avatar_url"] = "https://i.imgur.com/TuCwVfW.jpeg",
{
    ["title"] = "**FFA User Executed!**",
    ["description"] = "**This User Has Executed The Script Via FFA Mode Successfully.**",
    ["color"] = tonumber(16122540),
    ["type"] = "rich",
    ["fields"] =  {
    {
            ["name"] = "USE EXPLOIT:",
            ["value"] = "`".. identifyexecutor() .." HWID`",
            ["inline"] = true
        },
        {
            ["name"] = "HWID:",
            ["value"] = "|| ".. tostring(game:GetService("RbxAnalyticsService"):GetClientId()) .." ||",
            ["inline"] = false
        },
        {
            ["name"] = "JOB ID:",
            ["value"] = "`".. tostring(game.JobId) .."`",
            ["inline"] = false
        },
        {
            ["name"] = "NAME SCRIPT:",
            ["value"] = "**".. getgenv().NameScript .."**",
            ["inline"] = false
        },
        {
            ["name"] = "ID SCRIPT::",
            ["value"] = "**".. RandomId .."**",
            ["inline"] = false
        }
    },
            ["footer"] = {
            ["text"] = "SieuThiSpace.Xyz | Webhook System Create Api.",
            },
            ["image"] = {
                ["url"] = getgenv().Urlimage or "https://i.imgur.com/BsXyazi.jpeg",
            },
            ["thumbnail"] = {
                ["url"] = "https://i.imgur.com/TuCwVfW.jpeg",
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
}
},
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
