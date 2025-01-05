local LocalizationService = game:GetService("LocalizationService")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game.Players.LocalPlayer
local plname = player.Name
local Character1 = game.Workspace:WaitForChild(plname)
local h = Character1:FindFirstChild("Humanoid")
local piggy = game.Workspace:FindFirstChild("PiggyNPC"):FindFirstChild("PiggyBot")
local hpiggy = piggy:FindFirstChild("HumanoidRootPart")

local Window = Rayfield:CreateWindow({
    Name = "Eclipse | Piggy",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "loading",
    LoadingSubtitle = "by eclipse",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "piggy", -- Create a custom folder for your hub/game
       FileName = "nil"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 --tabs
 local Tab1 = Window:CreateTab("Info", 4483362458) -- Title, Image
 local Tab2 = Window:CreateTab("Main", 4483362458) -- Title, Image
 local Tab3 = Window:CreateTab("Items", 4483362458) -- Title, Image

 Rayfield:Notify({
    Title = "Loaded",
    Content = "Eclipse|piggy script",
    Duration = 6.5,
    Image = 4483362458,
 })

--buttons
local Button = Tab2:CreateButton({
    Name = "SpeedBoost",
    Callback = function()
        if h.WalkSpeed ~= 25 then
            h.WalkSpeed = 25
        end
    end,
 })

 local Button2 = Tab2:CreateButton({
    Name = "JumpBoost",
    Callback = function()
        if h.JumpPower ~= 60 then
            h.JumpPower = 60
        end
    end
 })

 local freeze = Tab2:CreateButton({
   Name = "Freeze Piggy - RELOAD SCRIPT IF DOESNT WORK",
   Callback = function(a)
      if hpiggy.Anchored == false then 
         hpiggy.Anchored = true
      end
   end
 })

--labels
local Label = Tab1:CreateLabel("Hi , Script is Keyless as it is in develeopment", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Label = Tab1:CreateLabel("Partneded Up with szxuh to make this masterpiece", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Label = Tab1:CreateLabel("Last Updated / 07.01.2025", 4483362458, Color3.fromRGB(255, 255, 255), false)
--buttons 2.0
local redkey = Tab3:CreateButton({
   Name = "Get RedKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "RedKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local bluekey = Tab3:CreateButton({
   Name = "Get BlueKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "BlueKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local greenkey = Tab3:CreateButton({
   Name = "Get GreenKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "GreenKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local yellowkey = Tab3:CreateButton({
   Name = "Get YellowKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "YellowKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local purplekey = Tab3:CreateButton({
   Name = "Get PurpleKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "PurpleKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local LocalizationService = game:GetService("LocalizationService")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game.Players.LocalPlayer
local plname = player.Name
local Character1 = game.Workspace:WaitForChild(plname)
local h = Character1:FindFirstChild("Humanoid")
local piggy = game.Workspace:FindFirstChild("PiggyNPC"):FindFirstChild("PiggyBot")
local hpiggy = piggy:FindFirstChild("HumanoidRootPart")

local Window = Rayfield:CreateWindow({
    Name = "Eclipse | Piggy",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "loading",
    LoadingSubtitle = "by eclipse",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "piggy", -- Create a custom folder for your hub/game
       FileName = "nil"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 --tabs
 local Tab1 = Window:CreateTab("Info", 4483362458) -- Title, Image
 local Tab2 = Window:CreateTab("Main", 4483362458) -- Title, Image
 local Tab3 = Window:CreateTab("Items", 4483362458) -- Title, Image

 Rayfield:Notify({
    Title = "Loaded",
    Content = "Eclipse|piggy script",
    Duration = 6.5,
    Image = 4483362458,
 })

--buttons
local Button = Tab2:CreateButton({
    Name = "SpeedBoost",
    Callback = function()
        if h.WalkSpeed ~= 25 then
            h.WalkSpeed = 25
        end
    end,
 })

 local Button2 = Tab2:CreateButton({
    Name = "JumpBoost",
    Callback = function()
        if h.JumpPower ~= 60 then
            h.JumpPower = 60
        end
    end
 })

 local freeze = Tab2:CreateButton({
   Name = "Freeze Piggy - RELOAD SCRIPT IF DOESNT WORK",
   Callback = function(a)
      if hpiggy.Anchored ~= true then 
         hpiggy.Anchored = true
      end
   end
 })

--labels
local Label = Tab1:CreateLabel("Hi , Script is Keyless as it is in develeopment", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Label = Tab1:CreateLabel("Partneded Up with szxuh to make this masterpiece", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Label = Tab1:CreateLabel("Last Updated / 07.01.2025", 4483362458, Color3.fromRGB(255, 255, 255), false)
--buttons 2.0
local redkey = Tab3:CreateButton({
   Name = "Get RedKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "RedKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local bluekey = Tab3:CreateButton({
   Name = "Get BlueKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "BlueKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local greenkey = Tab3:CreateButton({
   Name = "Get GreenKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "GreenKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local yellowkey = Tab3:CreateButton({
   Name = "Get YellowKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "YellowKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local purplekey = Tab3:CreateButton({
   Name = "Get PurpleKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "PurpleKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})
local LocalizationService = game:GetService("LocalizationService")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game.Players.LocalPlayer
local plname = player.Name
local Character1 = game.Workspace:WaitForChild(plname)
local h = Character1:FindFirstChild("Humanoid")
local piggy = game.Workspace:FindFirstChild("PiggyNPC"):FindFirstChild("PiggyBot")
local hpiggy = piggy:FindFirstChild("HumanoidRootPart")

local Window = Rayfield:CreateWindow({
    Name = "Eclipse | Piggy",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "loading",
    LoadingSubtitle = "by eclipse",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "piggy", -- Create a custom folder for your hub/game
       FileName = "nil"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 --tabs
 local Tab1 = Window:CreateTab("Info", 4483362458) -- Title, Image
 local Tab2 = Window:CreateTab("Main", 4483362458) -- Title, Image
 local Tab3 = Window:CreateTab("Items", 4483362458) -- Title, Image

 Rayfield:Notify({
    Title = "Loaded",
    Content = "Eclipse|piggy script",
    Duration = 6.5,
    Image = 4483362458,
 })

--buttons
local Button = Tab2:CreateButton({
    Name = "SpeedBoost",
    Callback = function()
        if h.WalkSpeed ~= 25 then
            h.WalkSpeed = 25
        end
    end,
 })

 local Button2 = Tab2:CreateButton({
    Name = "JumpBoost",
    Callback = function()
        if h.JumpPower ~= 60 then
            h.JumpPower = 60
        end
    end
 })

 local freeze = Tab2:CreateButton({
   Name = "Freeze Piggy - RELOAD SCRIPT IF DOESNT WORK",
   Callback = function(a)
      if hpiggy.Anchored == false then 
         hpiggy.Anchored = true
      end
   end
 })

--labels
local Label = Tab1:CreateLabel("Hi , Script is Keyless as it is in develeopment", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Label = Tab1:CreateLabel("Partneded Up with szxuh to make this masterpiece", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Label = Tab1:CreateLabel("Last Updated / 07.01.2025", 4483362458, Color3.fromRGB(255, 255, 255), false)
--buttons 2.0
local redkey = Tab3:CreateButton({
   Name = "Get RedKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "RedKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local bluekey = Tab3:CreateButton({
   Name = "Get BlueKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "BlueKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local greenkey = Tab3:CreateButton({
   Name = "Get GreenKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "GreenKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local yellowkey = Tab3:CreateButton({
   Name = "Get YellowKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "YellowKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local purplekey = Tab3:CreateButton({
   Name = "Get PurpleKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "PurpleKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local Plank = Tab3:CreateButton({
   Name = "Get Plank",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "Plank" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local orangekey = Tab3:CreateButton({
   Name = "Get OrangeKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "OrangeKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local whitekey = Tab3:CreateButton({
   Name = "Get whiteKey",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "WhiteKey" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local wrench = Tab3:CreateButton({
   Name = "Get Wrench",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "Wrench" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local Hammer = Tab3:CreateButton({
   Name = "Get Hammer",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "Hammer" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local key = Tab3:CreateButton({
   Name = "Get keycode",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "KeyCode" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

local redGear = Tab3:CreateButton({
   Name = "Get redgear",
   Callback = function()
    for _, object in pairs(game:GetDescendants()) do
      if object.Name == "RedGear" then
          if object:IsA("BasePart") then
              local redKeyPosition = object.Position

              local player = game.Players.LocalPlayer
              if player and player.Character then
                  player.Character:SetPrimaryPartCFrame(CFrame.new(redKeyPosition))
                  print("Teleported to redkey at position:", redKeyPosition)
              else
                  print("Player not found!")
              end
          end
          break
      end
  end
      
end
})

