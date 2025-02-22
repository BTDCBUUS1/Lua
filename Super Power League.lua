-- loader

game.StarterGui:SetCore("SendNotification", {
    Title = "BTDCBUUS";
    Text = "Loading...";
    Duration = 3;
})


repeat task.wait() until game.Players.LocalPlayer.Character.HumanoidRootPart


task.wait(5)

-- variables

local plr = game.Players.LocalPlayer
local chr = plr.Character
local root = chr.HumanoidRootPart
local enemies = game:GetService("Workspace").Enemies
local player = game.Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")

-- getgenv()

getgenv().AutoFarm = false
getgenv().FolderName = "1"
getgenv().EnergyCheckSlider = 5
getgenv().HealthCheckSlider = 10
getgenv().Fly = false
getgenv().FlySpeed = 100

-- codes

function RedeemCodes()
    local ohNumber1 = 1
    for i,v in pairs(game:GetService("ReplicatedStorage").Events.Codes.AvailableCodes:GetChildren()) do
        if v:IsA("Folder") then
            for s,a in pairs(v:GetChildren()) do
                if a:FindFirstChild("Expire") then
                else
                    game:GetService("ReplicatedStorage").Events.Codes.RedeemCodes:FireServer(ohNumber1, a.Name)
                end
            end
        end
    end
end

-- stat upgrade

function UpgradeStat(int)
    game:GetService("ReplicatedStorage").Events.Spent.UpgradeStat:FireServer(int)
end

-- auto ability farn

function FarmAbility(s)
    if s == "Mobility" then
        game:GetService("ReplicatedStorage").Events.Train.TrainMobility:FireServer()
    elseif s == "Strength" then
        game:GetService("ReplicatedStorage").Events.Train.TrainPower:FireServer(0)
    elseif s == "Health" then
        game:GetService("ReplicatedStorage").Events.Train.TrainHealth:FireServer(0)
    elseif s == "Immunity" then
        game:GetService("ReplicatedStorage").Events.Train.TrainDefense:FireServer(0)
    elseif s == "Psychic" then
        game:GetService("ReplicatedStorage").Events.Train.TrainPsychics:FireServer(0)
    elseif s == "Magic" then
        game:GetService("ReplicatedStorage").Events.Train.TrainMagic:FireServer(0)
    end
end

-- auto farm

function GetClosestEnemy(folderName)
    local targetFolder = enemies:FindFirstChild(folderName)
    if not targetFolder then
        warn("Folder not found: " .. folderName)
        return nil
    end

    local closestDistance = math.huge
    local closestEnemy = nil

    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
        warn("Player or HumanoidRootPart not found")
        return nil
    end
    local playerPosition = player.Character.HumanoidRootPart.Position

    for _, enemy in pairs(targetFolder:GetChildren()) do
        if enemy:IsA("Model") and enemy:FindFirstChild("HumanoidRootPart") then
            local dead = enemy:FindFirstChild("Dead")
            if dead and dead.Value ~= true then
                local distance = (playerPosition - enemy.HumanoidRootPart.Position).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestEnemy = enemy
                end
            end
        end
    end

    return closestEnemy
end

function StartSideTask(s)
    if s == "Goblin" then
        local args = {
            [1] = 2;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Thugs" then
        local args = {
            [1] = 3;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Gym Rats" then
        local args = {
            [1] = 4;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Veterans" then
        local args = {
            [1] = 5;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Yakuza" then
        local args = {
            [1] = 6;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Samurai" then
        local args = {
            [1] = 8;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Mutants" then
        local args = {
            [1] = 7;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Animatronics" then
        local args = {
            [1] = 10;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Ninja" then
        local args = {
            [1] = 9;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Temple Protectors" then
        local args = {
            [1] = 11;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Demons" then
        local args = {
            [1] = 12;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Judgers" then
        local args = {
            [1] = 13;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
    end
end

function ClaimSideTask(s)
    if s == "Goblin" then
        local args = {
            [1] = 2;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Thugs" then
        local args = {
            [1] = 3;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Gym Rats" then
        local args = {
            [1] = 4;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Veterans" then
        local args = {
            [1] = 5;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Yakuza" then
        local args = {
            [1] = 6;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Samurai" then
        local args = {
            [1] = 8;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Mutants" then
        local args = {
            [1] = 7;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Animatronics" then
        local args = {
            [1] = 10;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Ninja" then
        local args = {
            [1] = 9;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Temple Protectors" then
        local args = {
            [1] = 11;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Demons" then
        local args = {
            [1] = 12;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    elseif s == "Judgers" then
        local args = {
            [1] = 13;
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
    end
end


-- tables

local powerTps = {}
local sidetaskTable = {"Goblin", "Thugs", "Gym Rats", "Veterans", "Yakuza", "Samurai", "Mutants", "Animatronics", "Ninja", "Temple Protectors", "Demons", "Judgers"}
local healthTps = {}
local defenseTps = {}
local psychicTps = {}
local magicTps = {}
local enemyFolder = {}
local StoresFolder = {}
local WandsFolder = {}
local WeightsFolder = {}
local SideQuestsFolder = {}

local function isInTable(value, tbl)
    for _, v in ipairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

local function sortAndInsert(folder, tableToInsert)
    local items = folder:GetChildren()
    table.sort(items, function(a, b)
        return tonumber(a.Name) < tonumber(b.Name)
    end)

    for _, item in ipairs(items) do
        if not isInTable(item.Name, tableToInsert) then
            table.insert(tableToInsert, item.Name)
        end
    end
end

-- Wands
local FolderWands = game:GetService("Workspace").Pads.Wands
sortAndInsert(FolderWands, WandsFolder)

-- Side Tasks
local FolderSideTask = game:GetService("Workspace").Pads.SideTasks
sortAndInsert(FolderSideTask, SideQuestsFolder)

-- Weights
local Weightsfold = game:GetService("Workspace").Pads.Weight
sortAndInsert(Weightsfold, WeightsFolder)

-- Store Items
local FolderStore = game:GetService("Workspace").Pads.Store
sortAndInsert(FolderStore, StoresFolder)

-- Enemies
local FolderEnemy = enemies
sortAndInsert(FolderEnemy, enemyFolder)

-- Power Training Areas
local folderPower = game:GetService("ReplicatedStorage").TrainingAreas.Power
sortAndInsert(folderPower, powerTps)

-- Health Training Areas
local folderHealth = game:GetService("ReplicatedStorage").TrainingAreas.Health
sortAndInsert(folderHealth, healthTps)

-- Defense Training Areas
local folderDefense = game:GetService("ReplicatedStorage").TrainingAreas.Defense
sortAndInsert(folderDefense, defenseTps)

-- Psychics Training Areas
local folderPsychics = game:GetService("ReplicatedStorage").TrainingAreas.Psychics
sortAndInsert(folderPsychics, psychicTps)

-- Magic Training Areas
local folderMagic = game:GetService("ReplicatedStorage").TrainingAreas.Magic
sortAndInsert(folderMagic, magicTps)



-- library

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()

local Window = Library:CreateWindow({
    Title = 'BTDCBUUS - Super Power League',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    Main = Window:AddTab('Main'),
    QuestTab = Window:AddTab("Quests"),
    TPS = Window:AddTab('Teleports'),
    Visuals = Window:AddTab('Other'),
    UI = Window:AddTab('UI'),
}

local MainTaskBox = Tabs.QuestTab:AddRightGroupbox("Main Task")
local DishesFarmBox = Tabs.QuestTab:AddRightGroupbox("Dishes Farm")
local WeeklyTaskClaim = Tabs.QuestTab:AddLeftGroupbox("Weekly Task")
local DailyTaskClaim = Tabs.QuestTab:AddLeftGroupbox("Daily Task")
local DailyGiftClaim = Tabs.QuestTab:AddRightGroupbox("DailyGift Claim")
local EnemySideTask = Tabs.QuestTab:AddLeftGroupbox("Auto Enemy SideTask")
local AutoFarmBox = Tabs.Main:AddLeftGroupbox('Auto Farm')
local TPGUI = Tabs.TPS:AddLeftGroupbox('Player TP Gui')
local AutoWandTp = Tabs.TPS:AddLeftGroupbox('Wand Store TP')
local AutoWeightTP = Tabs.TPS:AddLeftGroupbox('Weight Store TP')
local AutoSideTask = Tabs.TPS:AddLeftGroupbox('SideTask TP')
local AutoStoreTP = Tabs.TPS:AddLeftGroupbox('Store TP')
local AutoStatBox = Tabs.Main:AddRightGroupbox('Auto Stat')
local AutoFarmStat = Tabs.Main:AddRightGroupbox('AutoFarm Stat')
local AreaPowerTeleport = Tabs.TPS:AddRightGroupbox('Area Strength Teleport')
local AreaHealthTeleport = Tabs.TPS:AddRightGroupbox('Area Health Teleport')
local AreaImmunityTeleport = Tabs.TPS:AddRightGroupbox('Area Defense Teleport')
local AreaPsychicsTeleport = Tabs.TPS:AddRightGroupbox('Area Psychics Teleport')
local AreaMagicTeleport = Tabs.TPS:AddRightGroupbox('Area Magic Teleport')
local Fly = Tabs.Main:AddRightGroupbox('Fly (F)')
local MiscSec = Tabs.Main:AddRightGroupbox('Anti Afk')
local RegClick = Tabs.Main:AddRightGroupbox('Auto Clicker (G)')
local Spinny = Tabs.Main:AddRightGroupbox('SpinBot')
local AreaFarmBox = Tabs.Main:AddLeftGroupbox('Area Farm')
local EspMap = Tabs.Visuals:AddLeftGroupbox('ESP Map')
local EspPlr = Tabs.Visuals:AddLeftGroupbox('ESP Player Box')
local EspPlrN = Tabs.Visuals:AddLeftGroupbox('ESP Player Name')
local AutoGrabDrops = Tabs.Visuals:AddRightGroupbox('Auto Grab Drops')
local KillAura = Tabs.Visuals:AddRightGroupbox('Kill Aura')
local FOVChanger = Tabs.Visuals:AddRightGroupbox('FOV Changer')
--local DishesFarm = Tabs.Visuals:AddRightGroupbox('DishesFarm')

local TpGUIButt = TPGUI:AddButton('Load GUI', function()
    GUI()
end)

TpGUIButt:AddTooltip('Loads the player tp gui')

AutoFarmBox:AddToggle("AutoFarm", { Text = "AutoFarm" })

Toggles.AutoFarm:OnChanged(function(s)
    getgenv().AutoFarm = s
    while getgenv().AutoFarm do
        task.wait()
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local energy = player.TempValues.Energy.Value
            local maxEnergy = player.TempValues.MaxEnergy.Value
            local health = chr.Humanoid.Health
            local maxHealth = chr.Humanoid.MaxHealth
            

            if energy < maxEnergy * getgenv().EnergyCheckSlider / 100 and getgenv().EnergyCheck then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-238.32908630371094, 99.5722427368164, 250.33648681640625)

                while energy < maxEnergy do
                    task.wait()
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(-238.32908630371094, 99.5722427368164, 250.33648681640625)
                    energy = player.TempValues.Energy.Value
                    if getgenv().AutoFarm == false then
                        break
                    end
                end
            end
            if health < maxHealth * getgenv().HealthCheckSlider / 100 and getgenv().HealthCheck then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-238.32908630371094, 99.5722427368164, 250.33648681640625)

                while health < maxHealth do
                    task.wait()
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(-238.32908630371094, 99.5722427368164, 250.33648681640625)
                    health = chr.Humanoid.Health
                    if getgenv().AutoFarm == false then
                        break
                    end
                end
            end
        else
            warn("Player's character or HumanoidRootPart not found.")
        end
        local folderName = getgenv().FolderName
        local enemy = GetClosestEnemy(folderName)
    
        if enemy and enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Dead").Value ~= true then 
                local enemyPos = enemy.HumanoidRootPart.Position
                local behindPos = enemyPos - (enemy.HumanoidRootPart.CFrame.LookVector * getgenv().OffsetSlider)
                behindPos = Vector3.new(behindPos.X, enemyPos.Y, behindPos.Z)
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(behindPos, enemyPos)
                end
                if getgenv().MoreDamage then
                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                end
                task.wait(0.1)
                game:GetService("ReplicatedStorage").Events.Other.Ability:InvokeServer("Weapon")
        end
    end
    
       
end)

--[[
    game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimMainTask", 9e9):FireServer(1)
]]

--[[
    game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartMainTask", 9e9):FireServer("MainTask")
]] 

--[[
local args = {
    [1] = 1;
}

game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimWeeklyTask", 9e9):FireServer(unpack(args))
]]

MainTaskBox:AddToggle("MaintASkStart", { Text = "MainTask Start" })

Toggles.MaintASkStart:OnChanged(function(s)
    getgenv().MainTaskStart = s
    while getgenv().MainTaskStart do
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartMainTask", 9e9):FireServer("MainTask")
        task.wait(6)
    end
end)

DishesFarmBox:AddToggle("DishesFarm", { Text = "Enable" })

Toggles.DishesFarm:OnChanged(function(s)
    getgenv().DishesFarm = s
    while getgenv().DishesFarm do
        local DishesTotal = game:GetService("Players").LocalPlayer:FindFirstChild("TempValues").DirtyDishes.Value
        if DishesTotal ~= 0 then
            local args = {
                [1] = 1;
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("StartSideTask", 9e9):FireServer(unpack(args))
            task.wait(1)
            game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("CleanDishes", 9e9):FireServer({})
            task.wait(11)
            local args = {
                [1] = 1;
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimSideTask", 9e9):FireServer(unpack(args))
            task.wait(1)
        else
            task.wait(1)
        end
    end
end)


MainTaskBox:AddLabel('-----------------------')

MainTaskBox:AddToggle("QuestClaim", { Text = "MainTask Claim" })

Toggles.QuestClaim:OnChanged(function(s)
    getgenv().MainTaskClaim = s
    while getgenv().MainTaskClaim do
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimMainTask", 9e9):FireServer(1)
        task.wait(6)
    end
end)


WeeklyTaskClaim:AddToggle("WeeklyTaskClaim", { Text = "WeeklyTask Claim" })

Toggles.WeeklyTaskClaim:OnChanged(function(s)
    getgenv().WeeklyTaskClaim = s
    while getgenv().WeeklyTaskClaim do
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimWeeklyTask", 9e9):FireServer(1)
        task.wait(6)
    end
end)

DailyTaskClaim:AddToggle("DailyTaskClaim", { Text = "DailyTask Claim" })

Toggles.DailyTaskClaim:OnChanged(function(s)
    getgenv().DailyTaskClaim = s
    while getgenv().DailyTaskClaim do
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimDailyTask", 9e9):FireServer(1)
        task.wait(6)
    end
end)

EnemySideTask:AddToggle("EnemySideTask", { Text = "Enable" })

Toggles.EnemySideTask:OnChanged(function(s)
    getgenv().EnemySideTask = s
    while getgenv().EnemySideTask do
        StartSideTask(getgenv().SelectedEnemySideTask)
        task.wait(2)
        ClaimSideTask(getgenv().SelectedEnemySideTask)
    end
end)

EnemySideTask:AddDropdown('EnemySideTaskDropdown', {
    Values = sidetaskTable,
    Default = 0,
    Multi = false,
    Text = 'Select Quest',
    Tooltip = 'Select the stat to auto upgrade',
    Callback = function(Value)
        getgenv().SelectedEnemySideTask = Value
    end
})

DailyGiftClaim:AddToggle("DailyGiftClaim", { Text = "Enable" })

Toggles.DailyGiftClaim:OnChanged(function(s)
    getgenv().DailyGiftClaim = s
    while getgenv().DailyGiftClaim do
        local args = {}
        game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimDaily", 9e9):FireServer(unpack(args))
        task.wait(300)
    end
end)



AutoFarmBox:AddLabel('--------')

AutoFarmBox:AddToggle("EnergyCheck", { Text = "EnergyCheck" })

Toggles.EnergyCheck:OnChanged(function(s)
    getgenv().EnergyCheck = s
end)

AutoFarmBox:AddSlider('EnergyCheckSlider', {
    Text = 'Energy Check %',
    Default = 0,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        print('EnergyCheckSlider was changed! New value:', Value)
        getgenv().EnergyCheckSlider = Value
    end
})

AutoFarmBox:AddLabel('--------')

AutoFarmBox:AddToggle("HealthCheck", { Text = "HealthCheck" })

Toggles.HealthCheck:OnChanged(function(s)
    getgenv().HealthCheck = s
end)

AutoFarmBox:AddSlider('HealthCheckSlide', {
    Text = 'Health Check %',
    Default = 0,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        print('HealthCheckSlider was changed! New value:', Value)
        getgenv().HealthCheckSlider = Value
    end
})

AutoFarmBox:AddLabel('--------')

AutoFarmBox:AddToggle("MoreDamage", { Text = "More Damage (takes more stamina)" })

Toggles.MoreDamage:OnChanged(function(s)
    getgenv().MoreDamage = s
end)

AutoFarmBox:AddLabel('--------')

AutoFarmBox:AddDropdown('AutoFarmSelect', {
    Values = enemyFolder,
    Default = 0,
    Multi = false,

    Text = 'AutoFarmSelect',
    Tooltip = 'Select the area to auto farm',

    Callback = function(Value)
        getgenv().FolderName = Value
        print("AutoFarmTarget: ", Value)
    end
})

AutoFarmBox:AddLabel('--------')

AutoFarmBox:AddSlider('OffsetSlider', {
    Text = 'OffsetSlider',
    Default = 0,
    Min = 1,
    Max = 15,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        print('OffsetSlider was changed! New value:', Value)
        getgenv().OffsetSlider = Value
    end
})

AutoStatBox:AddToggle("AutoStat", { Text = "Enabled" })

Toggles.AutoStat:OnChanged(function(s)
    getgenv().AutoStat = s
    while getgenv().AutoStat do
            task.wait(0.2)
            if getgenv().AutoStatSelect == "Strength" then
                UpgradeStat(1)
            elseif getgenv().AutoStatSelect == "Health" then
                UpgradeStat(2)
            elseif getgenv().AutoStatSelect == "Defense" then
                UpgradeStat(3)
            elseif getgenv().AutoStatSelect == "Psychic" then
                UpgradeStat(4)
            elseif getgenv().AutoStatSelect == "Magic" then
                UpgradeStat(5)
            elseif getgenv().AutoStatSelect == "Mobility" then
                UpgradeStat(6)
            end
    end
end)

AutoStatBox:AddDropdown('AutoStatSelect', {
    Values = {"Strength", "Health", "Defense", "Psychic", "Immunity", "Magic"},
    Default = 0,
    Multi = false,
    Text = 'AutoStatSelect',
    Tooltip = 'Select the stat to auto upgrade',
    Callback = function(Value)
        getgenv().AutoStatSelect = Value
        print("AutoStatSelect: ", Value)
    end
})

AutoFarmStat:AddToggle("Mobility", { Text = "Mobility Farm" })

Toggles.Mobility:OnChanged(function(s)
    getgenv().Mobility = s
    while getgenv().Mobility do
        task.wait(0.3)
        FarmAbility("Mobility")
    end
end)

AutoFarmStat:AddLabel('--------')

AutoFarmStat:AddToggle("Selector", { Text = "Enable Farm" })

Toggles.Selector:OnChanged(function(s)
    getgenv().EnableFarm = s
    while getgenv().EnableFarm do
        task.wait(0.3)
        FarmAbility(getgenv().FarmedSelectStat)
    end
end)

AutoFarmStat:AddDropdown('StatSelect', {
    Values = {"Strength", "Health", "Defense", "Psychic", "Immunity", "Magic"},
    Default = 1,
    Multi = false,
    Text = 'Select Stat',
    Tooltip = 'Select the stat to auto upgrade',
    Callback = function(Value)
        getgenv().FarmedSelectStat = Value
    end
})

local function getRoot()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        return player.Character.HumanoidRootPart
    end
    return nil
end

AreaPowerTeleport:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("ReplicatedStorage").TrainingAreas.Power
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedPowerTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AreaPowerTeleport:AddDropdown('StatSelectTPS', {
    Values = powerTps,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedPowerTP = Value
    end
})

AreaHealthTeleport:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("ReplicatedStorage").TrainingAreas.Health
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedHealthTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AreaHealthTeleport:AddDropdown('StatSelectTP', {
    Values = healthTps,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedHealthTP = Value
    end
})

AreaImmunityTeleport:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("ReplicatedStorage").TrainingAreas.Defense
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedImmuneTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AreaImmunityTeleport:AddDropdown('StatSelectTPSS', {
    Values = defenseTps,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedImmuneTP = Value
    end
})

AreaPsychicsTeleport:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("ReplicatedStorage").TrainingAreas.Psychics
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedPsychicTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AreaPsychicsTeleport:AddDropdown('StatSelectTPSSS', {
    Values = psychicTps,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedPsychicTP = Value
    end
})

AreaMagicTeleport:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("ReplicatedStorage").TrainingAreas.Magic
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedMagicTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AreaMagicTeleport:AddDropdown('StatSelectTPSSSS', {
    Values = magicTps,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedMagicTP = Value
    end
})

AutoWandTp:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("Workspace").Pads.Wands
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedWand then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AutoWandTp:AddDropdown('StatSelectTPSSASaaaDASS', {
    Values = WandsFolder,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedWand = Value
    end
})

AutoWeightTP:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("Workspace").Pads.Weight
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedWEight then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AutoWeightTP:AddDropdown('StatSelectTPSSASaasdaaaDASS', {
    Values = WeightsFolder,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedWEight = Value
    end
})

AutoStoreTP:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("Workspace").Pads.Store
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SelectedStoreTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AutoStoreTP:AddDropdown('StatSelectTPSSASadaaasdaaaDASS', {
    Values = StoresFolder,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SelectedStoreTP = Value
    end
})

AutoSideTask:AddButton({
    Text = 'Teleport',
    Func = function()
        local folderPower = game:GetService("Workspace").Pads.SideTasks
        local root = getRoot()
        if root then
            for i,v in pairs(folderPower:GetChildren()) do
                if v.Name == getgenv().SideTaskTP then
                    root.CFrame = v.CFrame
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to teleport to the selected area'
})

AutoSideTask:AddDropdown('StatSelectTPaaaaSSASadaaasdaaaDASS', {
    Values = SideQuestsFolder,
    Default = 0,
    Multi = false,
    Text = 'Select Teleport',
    Tooltip = 'Select the Teleport location.',
    Callback = function(Value)
        getgenv().SideTaskTP = Value
    end
})

Fly:AddToggle("Flying", { Text = "Enabled" })

Toggles.Flying:OnChanged(function(s)
    getgenv().Fly = s
end)

Fly:AddSlider('FlySlider', {
    Text = 'Fly Speed',
    Default = 100,
    Min = 1,
    Max = 2000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        getgenv().FlySpeed = Value
    end
})

MiscSec:AddToggle("AntiAFK", { Text = "Enabled" })

Toggles.AntiAFK:OnChanged(function(s)
    getgenv().AntiAFk = s
end)

local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local lastActivityTime = tick()
local afkTimeout = 300
local function simulateMovement()
    local camera = workspace.CurrentCamera
    local originalCFrame = camera.CFrame
    camera.CFrame = originalCFrame * CFrame.new(0, 0, 0.1)
    wait(0.1)
    camera.CFrame = originalCFrame
end
local function onUserInput(input, gameProcessed)
    if gameProcessed then return end
    lastActivityTime = tick()
end
userInputService.InputBegan:Connect(onUserInput)

runService.Heartbeat:Connect(function()
    if getgenv().AntiAFk then
        if tick() - lastActivityTime > afkTimeout then
            simulateMovement()
            lastActivityTime = tick()
        end
    end
end)

RegClick:AddToggle("AutoClicker", { Text = "Enabled" })

Toggles.AutoClicker:OnChanged(function(s)
    getgenv().AutoClicker = s
end)

getgenv().AutoClicker = false

local selectedKey = "G"
local running = false

local function click()
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse1click()
end

local function startAutoClicking()
    running = true
    while running do
        click()
        wait(0.1)
    end
end

local function stopAutoClicking()
    running = false
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode[selectedKey] then
        if getgenv().AutoClicker then
            if running then
                stopAutoClicking()
            else
                startAutoClicking()
            end
        end
    end
end)

Spinny:AddToggle("SpinBot", { Text = "Enabled" })

Toggles.SpinBot:OnChanged(function(s)
    getgenv().SpinBot = s
end)

Spinny:AddSlider('SpinBotSlide', {
    Text = 'Speed',
    Default = 0,
    Min = 1,
    Max = 20,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        getgenv().SpinSpeed = Value / 100
        print("SpinBot Speed Value Changed: ", Value)
    end
})

EspMap:AddToggle("ESPBOXMAP", { Text = "Map Items" })

Toggles.ESPBOXMAP:OnChanged(function(s)
    getgenv().ESPitems = s
end)

EspPlr:AddToggle("ESpPLRBOX", { Text = "Esp Player Box" })

Toggles.ESpPLRBOX:OnChanged(function(s)
    getgenv().EspPlayerBox = s
end)

EspPlrN:AddToggle("ESpPLRName", { Text = "Esp Player Name" })

Toggles.ESpPLRName:OnChanged(function(s)
    getgenv().ESPEnabled  = s
end)

AutoGrabDrops:AddToggle("AutoGrabDrops", { Text = "Grab Drops" })

Toggles.AutoGrabDrops:OnChanged(function(s)
    getgenv().AutoDropGrab  = s
end)

AutoGrabDrops:AddSlider('SpeedGrab', {
    Text = 'Speed (slower = faster)',
    Default = 0,
    Min = 1,
    Max = 10,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        getgenv().GrabSpeed = Value / 10
    end
})


getgenv().SpinBot = false

local spinning = false

local function startSpin()
    local humanoidRootPart = getRoot()
    while getgenv().SpinBot do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(getgenv().SpinSpeed), 0)
        task.wait(0.01)
    end
end

runService.Heartbeat:Connect(function()
    local humanoidRootPart = getRoot()
    if getgenv().SpinBot then
        if not spinning then
            spinning = true
            startSpin()
        else
            spinning = false
            humanoidRootPart.CFrame = humanoidRootPart.CFrame
        end
    end
end)

KillAura:AddToggle("AuraKill", { Text = "Kill Aura" })

Toggles.AuraKill:OnChanged(function(s)
    getgenv().KillAura  = s
end)

--[[DishesFarm:AddToggle("DishesFarm", { Text = "Enabled" })

Toggles.DishesFarm:OnChanged(function(s)
    getgenv().DoDishes  = s
end)

local player = game.Players.LocalPlayer
local playersService = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local events = replicatedStorage.Events.Other

local function getPlayerStats()
    local playerData = replicatedStorage.Data:FindFirstChild(player.Name)
    if playerData then
        return playerData:FindFirstChild("Stats")
    end
    return nil
end

local function hasDirtyDishes()
    local tempValues = playersService[player.Name]:FindFirstChild("TempValues")
    if tempValues then
        local dirtyDishes = tempValues:FindFirstChild("DirtyDishes")
        if dirtyDishes and dirtyDishes.Value > 0 then
            return true
        end
    end
    return false
end

local function checkDishesProgress()
    local tempValues = playersService[player.Name]:FindFirstChild("TempValues")
    if tempValues then
        local dishesProgress = tempValues:FindFirstChild("DishesProgress")
        if dishesProgress and dishesProgress.Value ~= 0 then
            return true
        end
    end
    return false
end

if checkDishesProgress() then
    print("DishesProgress is not 0. Canceling task.")
    events.CancelTask:FireServer(1)
end

local taskInProgress = false

local function startCleaningDishes()
    if taskInProgress then
        return
    end

    local stats = getPlayerStats()
    if not stats then
        warn("Stats not found for player.")
        return
    end

    if not hasDirtyDishes() then
        warn("No dirty dishes available.")
        return
    end

    taskInProgress = true
    local startCount = stats.DishesCleaned.Value
    events.StartSideTask:FireServer(1)
    task.wait(0.2)
    repeat
        events.CleanDishes:FireServer()
        wait(0.5)
    until stats.DishesCleaned.Value >= startCount + 10

    print("Dishes cleaned. Claiming side task...")
    events.ClaimSideTask:FireServer(1)
    wait(0.5)
    events.StartSideTask:FireServer(1)

    taskInProgress = false
end

if not checkDishesProgress() then
    if getgenv().DoDishes and not taskInProgress then
        if hasDirtyDishes() then
            startCleaningDishes()
        elseif not hasDirtyDishes() then
            print("Waiting for dirty dishes...")
        end
    end
end


]]




local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local enemiesFolder = game:GetService("Workspace").Enemies
local replicatedStorage = game:GetService("ReplicatedStorage")
local function checkNearbyEnemies()
    for _, subFolder in pairs(enemiesFolder:GetChildren()) do
        for _, enemy in pairs(subFolder:GetChildren()) do
            if enemy:FindFirstChild("HumanoidRootPart") then
                local dead = enemy:FindFirstChild("Dead")
                if (not dead or dead.Value ~= true) then
                    local enemyRootPart = enemy.HumanoidRootPart
                    local distance = (humanoidRootPart.Position - enemyRootPart.Position).Magnitude
                    if distance <= 10 then
                        replicatedStorage.Events.Other.Ability:InvokeServer("Weapon")
                    end
                end
            end
        end
    end
end
game:GetService("RunService").Heartbeat:Connect(function()
    if getgenv().KillAura then
        checkNearbyEnemies()
        task.wait()
    end
end)

-- UI Settings

local MenuGroup = Tabs.UI:AddLeftGroupbox('Menu')

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })
MenuGroup:AddButton('Unload', function() Library:Unload() end)

Library.ToggleKeybind = Options.MenuKeybind

-- whoevers this is ty

local flying = false
local maxdistance = 100000000000000
local uiservice = game.UserInputService
local lplr = game.Players.LocalPlayer
local mouse = lplr:GetMouse()

local function GetVelocity(pos1, pos2, StudsPerSecond)
    local distance = (pos2 - pos1)
    local mag = distance.Magnitude
    return (distance / mag) * StudsPerSecond
end

local function getkey(keycode)
    local key = tostring(keycode):lower()
    local findcode, a = key:find("keycode.")
    return key:sub(a + 1)
end

local keys = {}
game:GetService("RunService").Heartbeat:connect(function()
    pcall(function()
        local hrp = lplr.Character.HumanoidRootPart
        local frontoffset = CFrame.new() + Vector3.new(0, 0, -maxdistance)
        local backoffset = CFrame.new() + Vector3.new(0, 0, maxdistance)
        local leftoffset = CFrame.new() + Vector3.new(-maxdistance, 0, 0)
        local rightoffset = CFrame.new() + Vector3.new(maxdistance, 0, 0)
        local upoffset = CFrame.new() + Vector3.new(0, maxdistance, 0)
        local downoffset = CFrame.new() + Vector3.new(0, -maxdistance, 0)
        local velocity = Vector3.new()

        if flying and getgenv().Fly then
            if keys.w_active then
                velocity = velocity + GetVelocity(hrp.Position, (hrp.CFrame * frontoffset).Position, getgenv().FlySpeed)
            end
            if keys.s_active then
                velocity = velocity + GetVelocity(hrp.Position, (hrp.CFrame * backoffset).Position, getgenv().FlySpeed)
            end
            if keys.a_active then
                velocity = velocity + GetVelocity(hrp.Position, (hrp.CFrame * leftoffset).Position, getgenv().FlySpeed)
            end
            if keys.d_active then
                velocity = velocity + GetVelocity(hrp.Position, (hrp.CFrame * rightoffset).Position, getgenv().FlySpeed)
            end
            if keys.e_active then
                velocity = velocity + GetVelocity(hrp.Position, (CFrame.new(hrp.Position) * upoffset).Position, getgenv().FlySpeed)
            end
            if keys.q_active then
                velocity = velocity + GetVelocity(hrp.Position, (CFrame.new(hrp.Position) * downoffset).Position, getgenv().FlySpeed)
            end
            hrp.Velocity = velocity
            hrp.CFrame = CFrame.new(hrp.Position, (workspace.Camera.CFrame * (CFrame.new() + Vector3.new(0, 0, -maxdistance))).Position)
        end

        if flying and not keys.w_active and not keys.a_active and not keys.s_active and not keys.d_active and not keys.q_active and not keys.e_active then
            hrp.Anchored = true
        else
            hrp.Anchored = false
        end
    end)
end)

uiservice.InputBegan:connect(function(key, processed)
    if processed then return end

    if key.KeyCode == Enum.KeyCode.F and getgenv().Fly then
        flying = not flying
        if flying then
            uiservice.MouseBehavior = Enum.MouseBehavior.LockCenter
            lplr.Character.Humanoid.CameraOffset = Vector3.new(2, 0, 0)
        else
            uiservice.MouseBehavior = Enum.MouseBehavior.Default
            lplr.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
        end
    end
    keys[getkey(key.KeyCode) .. "_active"] = true
end)

uiservice.InputEnded:connect(function(key)
    keys[getkey(key.KeyCode) .. "_active"] = false
end)

AreaFarmBox:AddToggle("AreaFarm", { Text = "Enabled" })

getgenv().AreaFarmMain = "Power"
getgenv().AreaZone = "1"

Toggles.AreaFarm:OnChanged(function(s)
    getgenv().AreaFarm = s

    if getgenv().AreaFarm then
        game.StarterGui:SetCore("SendNotification", {
            Title = "BTDCBUUS";
            Text = "Make sure your hand has the right item in it.";
            Duration = 20;
        })
    end
    while getgenv().AreaFarm do
        task.wait(0.2)
        if getgenv().AreaFarmMain == "Power" and game:GetService("ReplicatedStorage").TrainingAreas.Power[getgenv().AreaZone] then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("ReplicatedStorage").TrainingAreas.Power[getgenv().AreaZone].CFrame
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 1)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 1)
        elseif getgenv().AreaFarmMain == "Health" and game:GetService("ReplicatedStorage").TrainingAreas.Health[getgenv().AreaZone] then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("ReplicatedStorage").TrainingAreas.Health[getgenv().AreaZone].CFrame
        elseif getgenv().AreaFarmMain == "Defense" and game:GetService("ReplicatedStorage").TrainingAreas.Defense[getgenv().AreaZone] then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("ReplicatedStorage").TrainingAreas.Defense[getgenv().AreaZone].CFrame
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 1)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 1)
        elseif getgenv().AreaFarmMain == "Psychics" and game:GetService("ReplicatedStorage").TrainingAreas.Psychics[getgenv().AreaZone] then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("ReplicatedStorage").TrainingAreas.Psychics[getgenv().AreaZone].CFrame
        elseif getgenv().AreaFarmMain == "Magic" and game:GetService("ReplicatedStorage").TrainingAreas.Magic[getgenv().AreaZone] then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("ReplicatedStorage").TrainingAreas.Magic[getgenv().AreaZone].CFrame
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 1)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 1)
        end
    end
end)

AreaFarmBox:AddLabel('------------')

AreaFarmBox:AddDropdown('AreaFArmDROp', {
    Values = {"Power", "Health", "Defense", "Psychics", "Magic"},
    Default = 0,
    Multi = false,
    Text = 'Select Type',
    Tooltip = 'Select the type of power to farm.',
    Callback = function(Value)
        getgenv().AreaFarmMain = Value
    end
})

AreaFarmBox:AddLabel('------------')


numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}

AreaFarmBox:AddDropdown('AreaFArmDROp', {
    Values = numbers,
    Default = 1,
    Multi = false,
    Text = 'Select Area',
    Tooltip = 'Select where you want to farm.',
    Callback = function(Value)
        getgenv().AreaZone = Value
    end
})


-- notif loaded

task.wait(1)

getgenv().ESPitems = false
getgenv().EspPlayerBox = false

local workspace = game:GetService("Workspace")
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")
local mapDropsFolder = workspace:WaitForChild("MapDrops")

local partDrawings = {}

local function createESPBox(part)
    if part:IsA("BasePart") and part:FindFirstChild("ID") then
        local lines = {}

        for i = 1, 12 do
            lines[i] = Drawing.new("Line")
            lines[i].Visible = false
            lines[i].Color = Color3.fromRGB(255, 0, 0)
            lines[i].Thickness = 2
        end

        partDrawings[part] = lines

        local function updateESP()
            if not part.Parent then
                partDrawings[part] = nil
                return
            end

            local partPosition = part.Position
            local partSize = part.Size
            local partCorners = {
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, -partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, -partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, -partSize.Y/2, partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, -partSize.Y/2, partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, partSize.Y/2, partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, partSize.Y/2, partSize.Z/2))
            }

            local edges = {
                {1, 2}, {2, 3}, {3, 4}, {4, 1},
                {5, 6}, {6, 7}, {7, 8}, {8, 5},
                {1, 5}, {2, 6}, {3, 7}, {4, 8}
            }

            for i, edge in ipairs(edges) do
                local line = lines[i]
                local startPoint = Vector2.new(partCorners[edge[1]].X, partCorners[edge[1]].Y)
                local endPoint = Vector2.new(partCorners[edge[2]].X, partCorners[edge[2]].Y)

                line.From = startPoint
                line.To = endPoint
                line.Visible = getgenv().ESPitems
            end
        end

        runService.RenderStepped:Connect(function()
            if getgenv().ESPitems then
                updateESP()
            else
                for _, line in pairs(lines) do
                    line.Visible = false
                end
            end
        end)
    end
end


local function removeESP()
    for part, lines in pairs(partDrawings) do
        for _, line in pairs(lines) do
            line:Remove()
        end
    end
    partDrawings = {}
end

for _, part in pairs(mapDropsFolder:GetChildren()) do
    createESPBox(part)
end

mapDropsFolder.ChildAdded:Connect(function(child)
    createESPBox(child)
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if not getgenv().ESPitems then
        removeESP()
    else
        for _, part in pairs(mapDropsFolder:GetChildren()) do
            if part:IsA("BasePart") and part:FindFirstChild("ID") then
                if not partDrawings[part] then
                    createESPBox(part)
                end
            end
        end
    end
end)

local workspace = game:GetService("Workspace")
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local partDrawings = {}

getgenv().ESPBoxThickness = 5

local function createESPBox(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
        local lines = {}

        for i = 1, 12 do
            lines[i] = Drawing.new("Line")
            lines[i].Visible = false
            lines[i].Color = Color3.fromRGB(255, 0, 0)
            lines[i].Thickness = getgenv().ESPBoxThickness
        end

        partDrawings[player] = lines

        local function updateESP()
            if not player.Character or not humanoidRootPart.Parent then
                partDrawings[player] = nil
                return
            end

            local partPosition = humanoidRootPart.Position
            local partSize = humanoidRootPart.Size
            local partCorners = {
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, -partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, -partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, partSize.Y/2, -partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, -partSize.Y/2, partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, -partSize.Y/2, partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(partSize.X/2, partSize.Y/2, partSize.Z/2)),
                camera:WorldToViewportPoint(partPosition + Vector3.new(-partSize.X/2, partSize.Y/2, partSize.Z/2))
            }

            local edges = {
                {1, 2}, {2, 3}, {3, 4}, {4, 1},
                {5, 6}, {6, 7}, {7, 8}, {8, 5},
                {1, 5}, {2, 6}, {3, 7}, {4, 8}
            }

            for i, edge in ipairs(edges) do
                local line = lines[i]
                local startPoint = Vector2.new(partCorners[edge[1]].X, partCorners[edge[1]].Y)
                local endPoint = Vector2.new(partCorners[edge[2]].X, partCorners[edge[2]].Y)

                line.From = startPoint
                line.To = endPoint
                line.Visible = getgenv().EspPlayerBox
            end
        end

        runService.RenderStepped:Connect(function()
            if getgenv().EspPlayerBox then
                updateESP()
            else
                for _, line in pairs(lines) do
                    line.Visible = false
                end
            end
        end)
    end
end

local function removeESP()
    for player, lines in pairs(partDrawings) do
        for _, line in pairs(lines) do
            line:Remove()
        end
    end
    partDrawings = {}
end

for _, player in pairs(players:GetPlayers()) do
    if player ~= players.LocalPlayer then
        createESPBox(player)
    end
end

players.PlayerAdded:Connect(function(player)
    if player ~= players.LocalPlayer then
        createESPBox(player)
    end
end)

players.PlayerRemoving:Connect(function(player)
    if partDrawings[player] then
        removeESP()
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if not getgenv().EspPlayerBox then
        removeESP()
    else
        for _, player in pairs(players:GetPlayers()) do
            if player ~= players.LocalPlayer then
                if not partDrawings[player] then
                    createESPBox(player)
                end
            end
        end
    end
end)

getgenv().GrabSpeed = 1

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local mapDropsFolder = game:GetService("Workspace").MapDrops
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function findClosestPart()
    local closestPart = nil
    local shortestDistance = math.huge

    for _, part in pairs(mapDropsFolder:GetChildren()) do
        if part:IsA("BasePart") and part:FindFirstChild("ID") then
            local distance = (getRoot().Position - part.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                closestPart = part
            end
        end
    end

    return closestPart
end

local function teleportAndCollect()
    local closestPart = findClosestPart()
    local root = getRoot()
    if closestPart then
        root.CFrame = CFrame.new(closestPart.Position)
        wait(0.1)
        local partName = closestPart.Name
        local ohNumber1 = tonumber(partName)
        
        if ohNumber1 then
            ReplicatedStorage.Events.Inventory.CollectItem:FireServer(ohNumber1)
        end
    end
end

local Players = game:GetService("Players")
local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")

local playerESP = {}

getgenv().ESPEnabled = false

local function createPlayerESP(player)
    if not getgenv().ESPEnabled then return end
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")
    
    local text = Drawing.new("Text")
    text.Visible = false
    text.Color = Color3.fromRGB(255, 255, 255)
    text.Text = player.Name
    text.Size = 20
    text.Center = true
    text.Outline = true
    text.OutlineColor = Color3.fromRGB(0, 0, 0)
    
    playerESP[player.UserId] = text
    
    local function updateESP()
        if not playerESP[player.UserId] then return end
        if character.Parent == nil then
            text:Remove()
            playerESP[player.UserId] = nil
            return
        end
        
        local screenPos, onScreen = Camera:WorldToViewportPoint(head.Position)
        if onScreen then
            text.Position = Vector2.new(screenPos.X, screenPos.Y - 30)
            text.Visible = getgenv().ESPEnabled
        else
            text.Visible = false
        end
    end

    RunService.RenderStepped:Connect(updateESP)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createPlayerESP(player)
    end)
end)

for _, player in pairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer then
        createPlayerESP(player)
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    if not getgenv().ESPEnabled then
        for _, esp in pairs(playerESP) do
            esp.Visible = false
        end
    else
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer then
                if not playerESP[player.UserId] then
                    createPlayerESP(player)
                end
            end
        end
    end
end)



RedeemCodes()

runService.Heartbeat:Connect(function()
    if getgenv().AutoDropGrab then
        teleportAndCollect()
    end
    task.wait(getgenv().GrabSpeed)
end)

local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs.UI)
ThemeManager:ApplyToTab(Tabs.UI)
SaveManager:LoadAutoloadConfig()

task.wait(1)

game.StarterGui:SetCore("SendNotification", {
    Title = "BTDCBUUS";
    Text = "Fully loaded enjoy!";
    Duration = 5;
})

function GUI()
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local LocalPlayer = Players.LocalPlayer
    local UserInputService = game:GetService("UserInputService")
    
    local Executor = "Unknown"
    if identifyexecutor then
        Executor = identifyexecutor()
    end
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 500, 0, 350)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = ScreenGui
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainFrame
    
    local dragging, dragStart
    
    MainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mousePos = UserInputService:GetMouseLocation()
            local newPos = UDim2.new(0, mousePos.X - MainFrame.Size.X.Offset / 2, 0, mousePos.Y - MainFrame.Size.Y.Offset / 2)
            TweenService:Create(MainFrame, TweenInfo.new(0.2), {Position = newPos}):Play()
        end
    end)
    
    local PlayerPanel = Instance.new("Frame")
    PlayerPanel.Size = UDim2.new(0, 170, 1, 0)
    PlayerPanel.Position = UDim2.new(0, 0, 0, 0)
    PlayerPanel.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    PlayerPanel.Parent = MainFrame
    
    local PlayerCorner = Instance.new("UICorner")
    PlayerCorner.CornerRadius = UDim.new(0, 10)
    PlayerCorner.Parent = PlayerPanel
    
    local PlayerImage = Instance.new("ImageLabel")
    PlayerImage.Size = UDim2.new(0, 150, 0, 120)
    PlayerImage.Position = UDim2.new(0.5, -75, 0.05, 0)
    PlayerImage.Parent = PlayerPanel
    PlayerImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PlayerImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=420&height=420&format=png"
    
    local function createLabel(text, position, size)
        local Label = Instance.new("TextLabel")
        Label.Size = size
        Label.Position = position
        Label.Text = text
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.TextScaled = true
        Label.BackgroundTransparency = 1
        Label.Parent = PlayerPanel
        return Label
    end
    
    createLabel("Name: " .. LocalPlayer.DisplayName, UDim2.new(0, 5, 0.5, 0), UDim2.new(1, -10, 0, 20))
    createLabel("UserId: " .. LocalPlayer.UserId, UDim2.new(0, 5, 0.65, 0), UDim2.new(1, -10, 0, 20))
    createLabel("Executor: " .. Executor, UDim2.new(0, 5, 0.8, 0), UDim2.new(1, -10, 0, 20))
    
    local PlayerList = Instance.new("ScrollingFrame")
    PlayerList.Size = UDim2.new(1, -180, 1, 0)
    PlayerList.Position = UDim2.new(0, 180, 0, 0)
    PlayerList.CanvasSize = UDim2.new(0, 0, 0, 0)
    PlayerList.ScrollBarThickness = 5
    PlayerList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    PlayerList.Parent = MainFrame
    
    local ListCorner = Instance.new("UICorner")
    ListCorner.CornerRadius = UDim.new(0, 10)
    ListCorner.Parent = PlayerList
    
    local UIList = Instance.new("UIListLayout")
    UIList.Parent = PlayerList
    UIList.SortOrder = Enum.SortOrder.LayoutOrder
    
    local function UpdatePlayerList()
        for _, child in pairs(PlayerList:GetChildren()) do
            if child:IsA("Frame") then
                child:Destroy()
            end
        end
        
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                local PlayerFrame = Instance.new("Frame")
                PlayerFrame.Size = UDim2.new(1, 0, 0, 60)
                PlayerFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
                PlayerFrame.Parent = PlayerList
                
                local FrameCorner = Instance.new("UICorner")
                FrameCorner.CornerRadius = UDim.new(0, 8)
                FrameCorner.Parent = PlayerFrame
                
                local Avatar = Instance.new("ImageLabel")
                Avatar.Size = UDim2.new(0, 50, 0, 50)
                Avatar.Position = UDim2.new(0, 5, 0.5, -25)
                Avatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
                Avatar.Parent = PlayerFrame
                
                local NameButton = Instance.new("TextButton")
                NameButton.Size = UDim2.new(0.55, 0, 1, 0)
                NameButton.Position = UDim2.new(0, 60, 0, 0)
                NameButton.Text = player.DisplayName
                NameButton.TextScaled = true
                NameButton.TextSize = 12
                NameButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                NameButton.BackgroundTransparency = 1
                NameButton.Parent = PlayerFrame
                
                NameButton.MouseButton1Click:Connect(function()
                    if LocalPlayer.Character and player.Character then
                        LocalPlayer.Character:MoveTo(player.Character:GetPrimaryPartCFrame().Position)
                    end
                end)
            end
        end
        
        PlayerList.CanvasSize = UDim2.new(0, 0, 0, #Players:GetPlayers() * 65)
    end
    
    Players.PlayerAdded:Connect(UpdatePlayerList)
    Players.PlayerRemoving:Connect(UpdatePlayerList)
    UpdatePlayerList()
    
    local function createNotification()
        wait(0.5)
    
        local NotificationFrame = Instance.new("Frame")
        NotificationFrame.Size = UDim2.new(0, 300, 0, 100)
        NotificationFrame.Position = UDim2.new(1, -310, 1, -110)
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        NotificationFrame.Parent = ScreenGui
    
        local NotificationCorner = Instance.new("UICorner")
        NotificationCorner.CornerRadius = UDim.new(0, 10)
        NotificationCorner.Parent = NotificationFrame
    
        local NotificationLabel = Instance.new("TextLabel")
        NotificationLabel.Size = UDim2.new(1, 0, 1, 0)
        NotificationLabel.Text = "Press 'K' to delete this GUI."
        NotificationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        NotificationLabel.BackgroundTransparency = 1
        NotificationLabel.TextScaled = true
        NotificationLabel.Parent = NotificationFrame
    
        NotificationFrame.Position = UDim2.new(1, -310, 1, -150)
        local tweenIn = TweenService:Create(NotificationFrame, TweenInfo.new(0.5), {Position = UDim2.new(1, -310, 1, -110)})
        tweenIn:Play()
    
        tweenIn.Completed:Wait()
    
        wait(10)
        local tweenOut = TweenService:Create(NotificationFrame, TweenInfo.new(0.5), {Position = UDim2.new(1, -310, 1, -150)})
        tweenOut:Play()
    
        tweenOut.Completed:Wait()
        NotificationFrame:Destroy()
    end
    
    createNotification()
    
    UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if not gameProcessedEvent then
            if input.KeyCode == Enum.KeyCode.K then
                ScreenGui:Destroy()
            end
        end
    end)  
end

FOVChanger:AddSlider('FOVCHANGERSLIDER', {
    Text = 'FOV Changer',
    Default = 70,
    Min = 1,
    Max = 120,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        local camera = game.Workspace.CurrentCamera
        camera.FieldOfView = Value
    end
})
 
local Anti
local plr = game.Players.LocalPlayer
Anti = hookmetamethod(game, "__namecall", function(self, ...)
    if self == plr and getnamecallmethod():lower() == "kick" then
        return warn("Client Tried To Call Kick Function On LocalPlayer")
    end
    return Anti(self, ...)
end)

while task.wait() do
    if game:GetService("Players").LocalPlayer.TempValues.DeathMessage.Value ~= "Stop cheating..." then
        game:GetService("Players").LocalPlayer.TempValues.DeathMessage.Value = "Stop cheating..."
    end
end

--[[[
local args = {}

game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("Other", 9e9):WaitForChild("ClaimDaily", 9e9):FireServer(unpack(args))
]]
