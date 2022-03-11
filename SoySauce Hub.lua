if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("soy sauce hub - prison life", "Synapse")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("weapons or something")

    MainSection:NewDropdown("Give Gun", "give u a gun lol", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)

    MainSection:NewDropdown("Gun Mod", "fire rate go brrrr", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)

    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("localplayer stuff")

    PlayerSection:NewSlider("Walkspeed", "i am speed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "put on your trampoline shoes", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end) 

    PlayerSection:NewButton("Inf Yield", "executes admin", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    local credits = Window:NewTab("Credits")
    local creditsSection = credits:NewSection("credits")
    creditsSection:NewLabel("Naiteki#7777 - did most of everything")
    creditsSection:NewLabel("xHeptic - UI") --end of prison life 

elseif game.PlaceId == 3956818381 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("soy sauce hub - ninja legends", "Synapse")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("epic stuff")

    local credits = Window:NewTab("Credits")
            local creditsSection = credits:NewSection("credits")
            creditsSection:NewLabel("Naiteki#7777 - did most of everything")
            creditsSection:NewLabel("xHeptic - UI")

    MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)

    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)

    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewButton("other ninja legends GUI", "credits to Ronin", function()
                loadstring(game:HttpGet("https://pastebin.com/raw/gajFx25i"))()
            end)
    
    MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
            
        end
    end)
elseif game.PlaceId == 6872265039 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("soy sauce hub - bed wars", "Synapse")

    local MainBW = Window:NewTab("player")
    local CombatBW = Window:NewTab("combat")

    local CombatBWSec = CombatBW:NewSection("idfk how to make a bedwars script so here a really good gui")
    local MainBWSec = MainBW:NewSection("localplayer")

    MainBWSec:NewSlider("walkspeed", "increases walkspeed", 500, 16, function(BWs) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = BWs
    end)
    MainBWSec:NewSlider("jump power", "increases jump power", 500, 16, function(BWj) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = BWj
    end)
    CombatBWSec:NewButton("open Vape V4 gui because Naiteki sucks at coding", "ew who likes naiteki he sucks", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end)
    local credits = Window:NewTab("Credits")
    local creditsSection = credits:NewSection("credits")
    creditsSection:NewLabel("Naiteki#7777 - did most of everything")
    creditsSection:NewLabel("xHeptic - UI")
    creditsSection:NewLabel("7GrandDadPGN - Vape V4 (github)")
end
