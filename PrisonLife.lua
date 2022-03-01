-- Prison-Life-V2.3 made by ProxyFile
-- UI Libary <-
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Prison-Life V2.3")
local b = w:CreateFolder("Map")
local c = w:CreateFolder("Weapons")
local d = w:CreateFolder("Settings")

b:Button("Destroy Doors",function()
    DestroyDoors()
end)

b:Button("TP to Prison",function()
    Teleport(CFrame.new(554.760254, 98.0391083, 2234.323, 0.127903298, 0, -0.991786659, 0, 1, 0, 0.991786659, 0, 0.127903298))
end)

b:Button("TP to Guards",function()
    Teleport(CFrame.new(831.982178, 99.9899826, 2328.93848, -0.999046266, -5.16765617e-08, 0.0436646566, -4.92433578e-08, 1, 5.68003671e-08, -0.0436646566, 5.45959971e-08, -0.999046266))
end)

b:Button("TP to Criminal",function()
    Teleport(CFrame.new(-943.445618, 94.1287613, 2056.28931, 0.999994695, 3.15928226e-08, -0.00325812795, -3.13057207e-08, 1, 8.81696494e-08, 0.00325812795, -8.8067182e-08, 0.999994695))
end)

b:Button("TP to Save-Place",function()
    CreateSafePlace()
    Teleport(CFrame.new(0,600,0))
end)

c:Button("AK-74",function()
    GiveWeapon("AK-47")
end)

c:Button("Remington 870",function()
    GiveWeapon("Remington 870")
end)

c:Button("M9",function()
    GiveWeapon("M9")
end)

d:Button("Change Team",function()
    changeteam()
end)

d:Slider("Walking Speed",{
    min = 1;
    max = 500;
    precise = false;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

d:Slider("Jumping Power",{
    min = 1;
    max = 500;
    precise = false;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

d:DestroyGui()

-- Function's

function DestroyDoors()
    game.Workspace:FindFirstChild("Doors"):Destroy()
    print("All Doors have been Destroyed!")
end

function GiveWeapon(weapon)
    game.Workspace.Remote.ItemHandler:InvokeServer(game.Workspace.Prison_ITEMS.giver[weapon].ITEMPICKUP)
end

function Teleport(pos)
    local ply = game.Players.LocalPlayer.Character.HumanoidRootPart
    ply.CFrame = pos
end

function CreateSafePlace()
    local safe = Instance.new("Part")
    safe.Name = "SafePlace"
    safe.Anchored = true
    safe.Size = Vector3.new(100,5,100)
    safe.Position = Vector3.new(0,500,0)
    safe.BrickColor = BrickColor.random()
    safe.Parent = workspace
    print("Safe Place has been Created!")
end

function changeteam()
    local ply = game.Players.LocalPlayer
    local Team = Instance.new("Team")
    Team.Name = "Unknown"
    Team.TeamColor = BrickColor.DarkGray()
    Team.Parent = game.Teams
    ply.Team = game.Teams["Unknown"]
end
