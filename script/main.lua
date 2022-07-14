if game.PlaceId == 1215581239 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

    local Window = Library.CreateLib("Doomspire Brickbattle", "Ocean")

    local welcomeTab = Window:NewTab("Welcome")
    
    local LPTab = Window:NewTab("LocalPlayer")

    local TeleportTab = Window:NewTab("Teleports")


    -- Vars --
    local lplr = game:GetService("Players").LocalPlayer
    local Camera = game.Workspace.Camera
    local CurrentCamera = game.Workspace.CurrentCamera

    -- Welcome Stuff --
    local wcsec = welcomeTab:NewSection("Howdy")
    wcsec:NewLabel("Some updates and shit...\n\nv1.0 - Legit nothing lmfao")
    
    -- LP Sections --
    local lpsec = LPTab:NewSection("Player")

    -- Telport Sections -- 
    local TPSec = TeleportTab:NewSection("Teleport lol")

    lpsec:NewSlider("Walkspeed", "You go fast", 150, 16, function(wsvalue)
        lplr.Character.Humanoid.WalkSpeed = wsvalue
    end)
    
    lpsec:NewSlider("JumpPower", "You jump high", 150, 50, function(jpvalue)
        lplr.Character.Humanoid.JumpPower = jpvalue
    end)

    lpsec:NewSlider("FOV", "Makes you look like csgo cheater lol", 120, 70, function(fovvalue)
        _G.Fov = true
        while _G.Fov == true do
            CurrentCamera.FieldOfView = fovvalue
            wait()
        end
    end)

    lpsec:NewSlider("Gravity", "U on da moon", 196, 5, function(gvalue)
        game.Workspace.Gravity = gvalue
    end)

    TPSec:NewButton("Blue Team", "Teleports to Blue Tower", function()
        lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-24.4, 25.9, 181.9)
    end)

    TPSec:NewButton("Yellow Team", "Teleports to Yello Tower", function()
        lplr.Character.HumanoidRootPart.CFrame = CFrame.new(106.6, 28.2, 51.1)
    end)
    
    TPSec:NewButton("Red Team", "Teleports to Red Tower", function()
        lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-155.4, 25.2, 51.4)
    end)

    TPSec:NewButton("Green Team", "Teleports to Green Tower", function()
        lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-24.6, 24.8, -80.3)
    end)
else
    game:GetService("Players").LocalPlayer:Kick("\n\nBro...\n\n This isn't Doomspire Brickbattle.\n\n This script won't work here lmfao.\n")
end
