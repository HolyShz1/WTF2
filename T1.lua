--_G.DebugScript = true
--_G.ShowUnit = true

if tostring(identifyexecutor()) ~= "Wave" then
    if not isfolder("HolyShz") then makefolder("HolyShz") end
    if not isfile("HolyShz/SaveKey.txt") then 
        writefile("HolyShz/SaveKey.txt", "") SaveKeyCheck = "None"
    else
        SaveKeyCheck = readfile("HolyShz/SaveKey.txt")
    end
end

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local ContentProvider = game:GetService("ContentProvider")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local function RippleEffect(object)
    spawn(function()
        local Ripple = Instance.new("ImageLabel")
        Ripple.Name = "Ripple"
        Ripple.Parent = object
        Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ripple.BackgroundTransparency = 1.000
        Ripple.ZIndex = 8
        Ripple.Image = "rbxassetid://2708891598"
        Ripple.ImageTransparency = 0.5
        Ripple.ScaleType = Enum.ScaleType.Fit
        Ripple.Position = UDim2.new((Mouse.X - Ripple.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - Ripple.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
        TweenService:Create(Ripple, TweenInfo.new(1.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -15, 0), Size = UDim2.new(0, 110, 0, 32)}):Play()
        wait(0.75)
        TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
        wait(.75)
        Ripple:Destroy()
    end)
end

local ServiceID, LibType, LibVersion = "holyshz", "roblox", "v2" 
local PandaAuth, authlink
local keyless = false
if tostring(identifyexecutor()) == "Wave" then
    keyless = true
end
local function tryLoadURL(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    if success and result then
        return result
    else
        return nil
    end
end

local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))()
local PandaAuth = PandaAuth
if not PandaAuth then
    keyless = true
end

if PandaAuth then
    local success, result = pcall(function()
        return PandaAuth:GetKey(ServiceID)
    end)
    print("-------] HolyShz Key Loaded [-------")
    warn("-------] Send Error Code After this massage [-------")
    if not success then
        keyless = true
        print("]------- HolyShz Hub Loaded ... -------[")
        print("Failed to retrieve AuthLink. PandaAuth Error, Holyshz is Keyless!!")
        print("---------------------------------------")
    end
else
    keyless = true
    print("-------] HolyShz Hub Loaded [-------")
    print("PandaAuth Error, Holyshz is Keyless!!")
    print("------------------------------------")
    warn("]-------Holyshz is Keyless!!-------[")
end

if _G.DebugScript or keyless then
    KeySuccess = true
    warn("]-------Holyshz : Enable Keyless Mode by Admin!!-------[")
else
    KeySuccess = false
    warn("]-------Holyshz : Waiting Checking Key!!-------[")
    if PandaAuth:ValidateKey(ServiceID, SaveKeyCheck) then
        KeySuccess = true
    else
        if game.CoreGui:FindFirstChild("HolyScript") then game.CoreGui:FindFirstChild("HolyScript"):Destroy() end
        if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end

        local UserInputService = game:GetService("UserInputService")
        local TweenService = game:GetService("TweenService")
        local RunService = game:GetService("RunService")
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Mouse = LocalPlayer:GetMouse()

        local KeySystemGui = Instance.new("ScreenGui")
        local Main = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local TextButton = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local UIGradient = Instance.new("UIGradient")
        local UIGradient_2 = Instance.new("UIGradient")
        local TextButton_2 = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local UIGradient_3 = Instance.new("UIGradient")
        local lock = Instance.new("ImageButton")
        local TextBox = Instance.new("TextBox")
        local TextLabel_1 = Instance.new("TextLabel")
        local UICorner_4 = Instance.new("UICorner")
        local ImageButton = Instance.new("ImageButton")
        local UICorner_5 = Instance.new("UICorner")

        local TextButton1 = Instance.new("TextButton")
        local UICorner_1 = Instance.new("UICorner")
        local UIGradient1 = Instance.new("UIGradient")
        local UIGradient_1 = Instance.new("UIGradient")

        KeySystemGui.Name = "KeySystemGui"
        KeySystemGui.Parent = game.CoreGui
        KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Main.Name = "Main"
        Main.Parent = KeySystemGui
        Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Main.BorderSizePixel = 0
        Main.Position = UDim2.new(0.5, -175, 0.5, -62)
        Main.Size = UDim2.new(0, 350, 0, 125)

        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = Main

        TextLabel.Parent = Main
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.121428572, 0, 0, 4)
        TextLabel.Size = UDim2.new(0, 113, 0, 36)
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.RichText = true
        TextLabel.Text = 'Key System\n<font size="14">Discord : WjGEt7pGDM</font>'
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 18.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        TextButton.Parent = Main
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.05, 0, 0.751999974, 0)
        TextButton.Size = UDim2.new(0, 113, 0, 25)
        TextButton.ClipsDescendants = true
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = "Copy Link Key"
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 16.000
        TextButton.TextWrapped = true

        UICorner_2.CornerRadius = UDim.new(0, 6)
        UICorner_2.Parent = TextButton

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
        UIGradient.Parent = TextButton

        UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
        UIGradient_2.Parent = TextButton

        TextButton_2.Parent = Main
        TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2.BorderSizePixel = 0
        TextButton_2.Position = UDim2.new(0.6, 0, 0.751999974, 0)
        TextButton_2.Size = UDim2.new(0, 115, 0, 25)
        TextButton_2.Font = Enum.Font.SourceSansBold
        TextButton_2.Text = "Copy Discord Link"
        TextButton_2.ClipsDescendants = true
        TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2.TextSize = 16.000

        UICorner_3.CornerRadius = UDim.new(0, 6)
        UICorner_3.Parent = TextButton_2

        UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
        UIGradient_3.Parent = TextButton_2

        lock.Name = "lock"
        lock.Parent = Main
        lock.BackgroundTransparency = 1.000
        lock.Position = UDim2.new(0.0285714287, 0, 0.115999997, 0)
        lock.Size = UDim2.new(0, 25, 0, 25)
        lock.ZIndex = 2
        lock.Image = "rbxassetid://3926305904"
        lock.ImageRectOffset = Vector2.new(4, 684)
        lock.ImageRectSize = Vector2.new(36, 36)

        TextBox.Parent = Main
        TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0.0285714287, 0, 0.416000009, 0)
        TextBox.Size = UDim2.new(0, 295, 0, 35)
        TextBox.Font = Enum.Font.SourceSans
        TextBox.PlaceholderText = "insert key (if you can't copy just join discord)"
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(255,255,255)
        TextBox.TextSize = 16.000
        TextBox.ClipsDescendants = true

        UICorner_4.CornerRadius = UDim.new(0, 6)
        UICorner_4.Parent = TextBox

        TextLabel_1.Parent = Main
        TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_1.BackgroundTransparency = 1.000
        TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_1.BorderSizePixel = 0
        TextLabel_1.Position = UDim2.new(0.0285714287, 0, 0.416000009, 0)
        TextLabel_1.Size = UDim2.new(0, 295, 0, 35)
        TextLabel_1.Font = Enum.Font.SourceSansBold
        TextLabel_1.RichText = true
        TextLabel_1.Text = ''
        TextLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_1.TextSize = 16.000
        TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left


        ImageButton.Parent = Main
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 0.750
        ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0.885714293, 0, 0.432000011, 0)
        ImageButton.Size = UDim2.new(0, 32, 0, 32)
        ImageButton.Image = "rbxassetid://3926305904"
        ImageButton.ImageRectOffset = Vector2.new(84, 204)
        ImageButton.ImageRectSize = Vector2.new(40, 40)

        UICorner_5.CornerRadius = UDim.new(0, 6)
        UICorner_5.Parent = ImageButton

        TextButton.MouseButton1Down:Connect(function()
            RippleEffect(TextButton)
            TextButton.Text = "Copy Link Success"
            setclipboard(PandaAuth:GetKey(ServiceID))
            delay(.5,function()
                TextButton.Text = "Copy Link Key"
            end)
        end)

        TextButton_2.MouseButton1Down:Connect(function()
            RippleEffect(TextButton_2)
            TextButton_2.Text = "Copy Link Success"
            setclipboard("https://discord.gg/WjGEt7pGDM")
            delay(.5,function()
                TextButton_2.Text = "Copy Link Discord"
            end)
        end)

        ImageButton.MouseButton1Click:Connect(function()
            if PandaAuth:ValidateKey(ServiceID, TextBox.Text) then
                TextBox.Visible = false
                if not isfile("HolyShz/SaveKey.txt") then
                    writefile("HolyShz/SaveKey.txt", TextBox.Text)
                else
                    writefile("HolyShz/SaveKey.txt", TextBox.Text)
                end
                TextLabel_1.Text = "Correct key"
                wait(.75)
                KeySuccess = true
            else
                TextBox.Visible = false
                TextLabel_1.Text = "Invalid key"
                wait(.75)
                TextLabel_1.Text = ""
                TextBox.Visible = true
                KeySuccess = false
            end
        end)
    end
end

if _G.NoClip then _G.NoClip:Disconnect() _G.NoClip = nil end
while wait() do if KeySuccess then break end end
if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end

    ------------------------------------------------------ [[ Anime Last Stand ]] ------------------------------------------------------

    local PlaceId_ALS = {12886143095,18583778121,12900046592,14368918515,14368918515}
    if table.find(PlaceId_ALS,game.PlaceId) then

    repeat wait() until game:IsLoaded()
    if not game:IsLoaded() then game.Loaded:Wait() end
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")


    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
    local SaveSettings = {
        ["Main"] = {
            ['Select Map'] = "nil",
            ['Select Act'] = 1,
            ['Select Mode'] = "Story",
            ['Select Difficulty'] = "Normal",
            ['Friends Only'] = false,
            ['Auto Start'] = false,
            ["Delay [Start,Retry,Leave]"] = 3,

            ['Select Challenge Map'] = {"Planet Nemak"},
            ['Select Challenge'] = {"Barebones"},

            ['Select Raids Map2'] = "Marines Fort",
            ['Select Raids Act'] = 1,
            ['Select Raids Difficulty'] = "Nightmare",

            
            ['Select Elemental Map'] = "Water",
            ['Select Elemental Difficulty'] = "Normal",

            ['Select Legend Stages Map'] = "Shibuya",
            ['Select Legend Act'] = 1,
            ['Select Legend Stages Difficulty'] = "Purgatory",

            ['Auto Skip Loading'] = false,
            ['Auto TP to Zone'] = false,
            ['Auto Join Story'] = false,
            ['Auto Retry'] = false,
            ['Auto Next'] = false,
            ['Manual Click [Retry]'] = false,
            ['Manual Click [Next]'] = false,
            ['Manual Click [Leave]'] = false,
            ['Auto Leave'] = false,
            ['Auto Story'] = false,

            ['Auto TP to WORLD 2'] = false,
            ['Auto Enable Speed'] = false,
            ['Auto Disable Attack Effect'] = false,
            ['Auto Disable Hit Effect'] = false,
            ['Auto Disable Music'] = false,
            ['Auto Disable Damage Indicator'] = false,
            ['Auto Disable Global Shadows'] = false,
            ['Auto Disable All Sound'] = false,
            ['Delete Map'] = false,

            ['Auto Redeem Daily'] = false,
        },
        ["Events"] = {
            --Capsule
            ['Select Capsule'] = "SummerCapsule",
            ['Auto Open Capsule'] = false,

            --Item
            ['Select Event Item'] = "SummerCapsule",
            ['Auto Buy Event Items'] = false,
        },
        ["Portals"] = {
            ['Select Tier Portals'] = {"Tier 1"},
            --['Select Map Portals'] = {"Planet Nemak"},
            ['Select Maps Act'] = {},
            ['Select Challenge Portals'] = {"Barebones"},
            ['Auto Next_Replay Portals'] = false,
            ['Auto Open Portals'] = false,
            ['Auto Click Portals Start'] = false,
            ['Auto Portals Start'] = false,

            ['Select Tier Portals SELL'] = {"Tier 1"},
            ['Select Maps Act SELL'] = {},
            ['Select Challenge Portals SELL'] = {"Barebones"},
            ['Auto Sell Portals'] = false,
        },
        ["InfCastle"] = {
            ['Auto Play InfCastle'] = false,
        },
        ["Gacha"] = {
            ['Select Banner'] = 'Banner 1',
            ['Select Method'] = "1",
            ['Auto Gacha'] = false,
        },
        ['Macro'] = {
            ['Macro Select'] = "None",
            ['Delat Macro Play Time (sec)'] = 3,
            ['Play Macro'] = false,

            ['Macro Map'] = {},
        },
        ["Notifier"] = {
            ["Webhook Url"] = "nil",
            ['Select Item'] = {},
            ["Send All Item"] = false,
            ['Select Unit'] = {},
            ["Send Unit Kills"] = false,
            ['Select Method [Type]'] = "Method 1",
            ["Send After End Game"] = false,
        },
        ["SaveSetting"] = {
            ['Select Time [sec]'] = 600,
            ['Select Time in Libby [sec]'] = 600,
            ['Auto Rejoin [Time]'] = false,
            ['Auto Rejoin [Time][Lobby]'] = false,
            ['Select Time When Error prompt [sec]'] = 5,
            ['Auto Rejoin When Error prompt [Time]'] = false,
            ['Hide UI at Time (sec)'] = 60,
            ['Auto Hide UI'] = false,
            ['FPS Value'] = 15,
            ['FPS Cap'] = false,
            ['Low CPU Mode'] = false,

            ['Hide Key'] = "Enum.KeyCode.LeftControl"
        }
    }
    function Load()
        if readfile and writefile and isfile and isfolder then
            if not isfolder("HolyShz") then
                makefolder("HolyShz")
            end
            if not isfolder("HolyShz/AnimeLastStand") then
                makefolder("HolyShz/AnimeLastStand")
            end
            if not isfolder("HolyShz/AnimeLastStand/data") then
                makefolder("HolyShz/AnimeLastStand/data")
            end
            if not isfolder("HolyShz/AnimeLastStand/Macro") then
                makefolder("HolyShz/AnimeLastStand/Macro")
            end
            if not isfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                for i,v in pairs(Decode) do
                    SaveSettings[i] = v
                end
            end
        else
            warn("Failed Load")
            return false
        end
    end
    function Save()
        if readfile and writefile and isfile then
            if isfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
            end
        else
            warn("Failed Save")
            return false
        end
    end
    Load()
    Save()
    ------------------------------------------------------ [[ Values ]] ------------------------------------------------------
    local plr = game:GetService("Players").LocalPlayer
    local VirtualUser = game:GetService("VirtualUser")

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local GamePlace = game.PlaceId

    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.Charactervded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local Humanoid = Character:WaitForChild("Humanoid")

    local HumanoidRootPart = Character:WaitForChild('HumanoidRootPart')
    local Humanoid = Character:WaitForChild("Humanoid")
    LocalPlayer.CharacterAdded:Connect(function(character)
        Character = character 
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        Humanoid = Character:WaitForChild("Humanoid")
    end)

    local TowerInfo = require(game:GetService("ReplicatedStorage").Modules.TowerInfo)
    local ItemsInfo = require(game:GetService("ReplicatedStorage").Modules.ItemInfo)
    ------------------------------------------------------ [[ Function First ]] ------------------------------------------------------
    function comma_value(p1)
        local v1 = p1;
        while true do
            local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2");
            v1 = v2;
            if v3 ~= 0 then else
                break;
            end;
        end;
        return v1;
    end;
    local function split(str, sep)
        local result = {}
        local regex = ("([^%s]+)"):format(sep)
        for each in str:gmatch(regex) do
        table.insert(result, each)
        end
        return result
    end
    function FormatTime(seconds)
        local hours = math.floor(seconds / 3600)
        local minutes = math.floor((seconds % 3600) / 60)
        local secondsRemaining = seconds % 60
    
        local formattedTime = string.format("%02d:%02d:%02d", hours, minutes, secondsRemaining)
        return formattedTime
    end

    --TP_low
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local S_T = game:GetService("TeleportService")
    local S_H = game:GetService("HttpService")

    local File = pcall(function()
        AllIDs = S_H:JSONDecode(readfile("server-hop-temp.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        pcall(function()
            writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
        end)

    end
    local function TPReturner(placeId)
        local Site;
        if foundAnything == "" then
            Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("server-hop-temp.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
                        wait()
                        S_T:TeleportToPlaceInstance(placeId, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport(placeId)
        while wait() do
            pcall(function()
                TPReturner(placeId)
                if foundAnything ~= "" then
                    TPReturner(placeId)
                end
            end)
        end
    end

    ------------------------------------------------------ [[ Function ]] ----------------------------------------

    function StringToXYZ(params)
        x,y,z = unpack(game:GetService("HttpService"):JSONDecode("["..params.."]"))
        return x,y,z
    end
    function StringToCFrame(params)
        return CFrame.new(unpack(game:GetService("HttpService"):JSONDecode("["..params.."]")))
    end
    function Timelapse()
        return workspace.DistributedGameTime
    end

    -------------------------------------- [[ Save Value ]] ------------------------------------------------------
    --WebhookOld
    local DataOld = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
    --CurentlyOld
    local EmeraldsOld = DataOld['Emeralds']
    local RerollsOld = DataOld['Rerolls']
    local JewelsOld = DataOld['Jewels']
    local ShellsOld = DataOld['Shells']
    --EventCoins
    local SoulCoinOld = DataOld['SoulCoin']
    --RaidTokens
    local RaidTokensOld = DataOld['RaidTokens']
    local ShinobiTokensOld = DataOld['ShinobiTokens']
    local SoulTokensOld = DataOld['SoulTokens']

    --StatCube
    local PerfectStatCubeOld = 0
    if DataOld['ItemData']['PerfectStatCube'] ~= nil then
        if DataOld['ItemData']['PerfectStatCube']['Amount'] == nil then DataOld['ItemData']['PerfectStatCube']['Amount'] = 0 end
        PerfectStatCubeOld = DataOld['ItemData']['PerfectStatCube']['Amount']
    end
    local StatCubeOld = 0
    if DataOld['ItemData']['StatCube'] ~= nil then
        if DataOld['ItemData']['StatCube']['Amount'] == nil then DataOld['ItemData']['StatCube']['Amount'] = 0 end
        StatCubeOld = DataOld['ItemData']['StatCube']['Amount']
    end
    --CapsuleOld
    local BerserkCapsuleOld = 0
    if DataOld['ItemData']['BerserkCapsule'] ~= nil then
        if DataOld['ItemData']['BerserkCapsule']['Amount'] == nil then DataOld['ItemData']['BerserkCapsule']['Amount'] = 0 end
        BerserkCapsuleOld = DataOld['ItemData']['BerserkCapsule']['Amount']
    end
    local DemonCapsuleOld = 0
    if DataOld['ItemData']['DemonCapsule'] ~= nil then
        if DataOld['ItemData']['DemonCapsule']['Amount'] == nil then DataOld['ItemData']['DemonCapsule']['Amount'] = 0 end
        DemonCapsuleOld = DataOld['ItemData']['DemonCapsule']['Amount']
    end
    local SummerCapsuleOld = 0
    if DataOld['ItemData']['SummerCapsule'] ~= nil then
        if DataOld['ItemData']['SummerCapsule']['Amount'] == nil then DataOld['ItemData']['SummerCapsule']['Amount'] = 0 end
        SummerCapsuleOld = DataOld['ItemData']['SummerCapsule']['Amount']
    end
    local SlimeCapsuleOld = 0
    if DataOld['ItemData']['SlimeCapsule'] ~= nil then
        if DataOld['ItemData']['SlimeCapsule']['Amount'] == nil then DataOld['ItemData']['SlimeCapsule']['Amount'] = 0 end
        SlimeCapsuleOld = DataOld['ItemData']['SlimeCapsule']['Amount']
    end

    ------------------------------------------------------ [[ Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/refs/heads/main/UILibrary/HolyUiV3"))()

    local UI = Venyx.new({
        title = "[Clans + Godly] Anime Last Stand",
        Version = "Version 1.0.5"
    })

    local Themes = {
        Background = Color3.fromRGB(24, 24, 24),
        Glow = Color3.fromRGB(0, 0, 0),
        Accent = Color3.fromRGB(10, 10, 10),
        LightContrast = Color3.fromRGB(20, 20, 20),
        DarkContrast = Color3.fromRGB(14, 14, 14),  
        TextColor = Color3.fromRGB(255, 255, 255)
    }
    ------------------------------------------------------ [[ Create Tab ]] ------------------------------------------------------
    local MainCreateTap = UI:addPage({
        title = "Main",
        icon = 7539983773
    })
    local MainSettingChallenge = MainCreateTap:addSection({
        title = "Main - Challenge Setting"
    })
    local MainSettingRaids = MainCreateTap:addSection({
        title = "Main - Raids Setting"
    })
    local MainSettingElemental = MainCreateTap:addSection({
        title = "Main - Elemental Setting"
    })
    local MainSettingLegendStage = MainCreateTap:addSection({
        title = "Main - Legend Stages"
    })
    local MainSettingPage = MainCreateTap:addSection({
        title = "Main - Setting"
    })
    local MainPage = MainCreateTap:addSection({
        title = "Main - Play"
    })
    local MainETCPage = MainCreateTap:addSection({
        title = "Main - InGame Settings"
    })
    
    --Event_Summer
    local EventsCreateTap = UI:addPage({
        title = "• Events",
        icon = 1
    })
    --[[local Events_Wheel = EventsCreateTap:addSection({
        title = "Events - Wheel"
    })]]
    local Events_Capsule = EventsCreateTap:addSection({
        title = "Events - Capsule"
    })
    local Events_Shop = EventsCreateTap:addSection({
        title = "Events - Shop"
    })

    --Portals
    local PortalsCreateTap = UI:addPage({
        title = "• Portals",
        icon = 1
    })
    local Portals_Setting = PortalsCreateTap:addSection({
        title = "Portals - Setting"
    })
    local Portals_Selling = PortalsCreateTap:addSection({
        title = "Portals - Sell"
    })

    --InfCastle
    local InfCastleCreateTap = UI:addPage({
        title = "• Inf Castle",
        icon = 1
    })
    local InfCastle_Setting = InfCastleCreateTap:addSection({
        title = "InfCastle - Setting"
    })



    -- Gacha
    local MainGachaTap = UI:addPage({
        title = "Auto Summon",
        icon = 7939410236
    })
    local GachaPage = MainGachaTap:addSection({
        title = "Auto Summon"
    })
    local DailyPage = MainGachaTap:addSection({
        title = "Daily"
    })
    -- Macro
    local MainCreateTap = UI:addPage({
        title = "Macro",
        icon = 10734943448
    })
    local Macro_Setting_Page = MainCreateTap:addSection({
        title = "Macro - Setting"
    })
    local Macro_Record_Page = MainCreateTap:addSection({
        title = "Macro - Record"
    })
    local Macro_Play_Page = MainCreateTap:addSection({
        title = "Macro - Play"
    })
    -- Macro Maps
    local MacroMapsCreateTap = UI:addPage({
        title = "Macro Maps",
        icon = 10723427494
    })
    -- Macro Import
    local ImportCreateTap = UI:addPage({
        title = "Import",
        icon = 10723415205
    })
    local MacroImport = ImportCreateTap:addSection({
        title = "Macro - Import Macro"
    })
    -- ShowUnit
    if _G.ShowUnit then
        local MainGachaTap = UI:addPage({
            title = "ShowUnit",
            icon = 7539983773
        })
        local ShowUnitPage = MainGachaTap:addSection({
            title = "Show Unit"
        })
        ------------------------------------------------------ [[ ShowUnit ]] ------------------------------------------------------
        UnitsName = {}
        local TowerInfo = require(game:GetService("ReplicatedStorage").Modules.TowerInfo)
        local UnitsStatus = ShowUnitPage:addLabel({title = "Unit : N/S [ Upgate : 0/0 ]\n Damage At Upgate Max : 999990\nAll Cost Upgate : 999990"})
        for i,v in pairs(game:GetService("ReplicatedStorage").Units:GetChildren()) do
            if v:IsA("Model") then
                table.insert(UnitsName,v.Name)
            end
        end
        SelectUnitUnitsName = ""
        ShowUnitPage:addDropdown({
            title = "Select Unit",
            list = UnitsName, 
            default = "",
            callback = function(v)
                SelectUnitUnitsName = v
            end;
        })
        ShowUnitPage:addButton({
            title = "Load Model Units",
            callback = function()
                if workspace:FindFirstChild('UnitsCloneNAA') then workspace:FindFirstChild('UnitsCloneNAA'):Destroy() end
                if game:GetService("ReplicatedStorage").Units:FindFirstChild(SelectUnitUnitsName) then
                    UnitsClone = game:GetService("ReplicatedStorage").Units:FindFirstChild(SelectUnitUnitsName):Clone()
                    UnitsClone.Name = "UnitsCloneNAA"
                    UnitsClone.Parent = game.workspace
                    UnitsClone:SetPrimaryPartCFrame(HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))

                    local Cost,Damage,Upgate = 0,0,0
                    table.foreach(TowerInfo[SelectUnitUnitsName],function(j,k)
                        if typeof(k) == "table" then
                            Cost = Cost + k['Cost']
                            if tonumber(j) >= Upgate then
                                Upgate = tonumber(j)
                                Damage = k['Damage']
                            end
                        end
                    end)

                    Rarity = game:GetService("ReplicatedStorage").Units:FindFirstChild(SelectUnitUnitsName) and game:GetService("ReplicatedStorage").Units[SelectUnitUnitsName].Rarity.Value or "UnDefined"
                    UnitsStatus.Options:ChangeText("Unit : ".. SelectUnitUnitsName .." [ Upgate : 0/".. Upgate .." ] " .. Rarity .. "\n Damage At Upgate Max : ".. comma_value(Damage) .."\nAll Cost Upgate And PlaceTower : ".. comma_value(Cost))
                end
            end,
        })
    end
    -- Webhook
    local WebhookCreateTap = UI:addPage({
        title = "Webhook",
        icon = 7539983773
    })
    local WebhookPage = WebhookCreateTap:addSection({
        title = "Webhook"
    })
    -- Theme
    local Theme = UI:addPage({
        title = "Theme",
        icon = 11413045091
    })
    local Colors = Theme:addSection({
        title = "Colors"
    })
    local Setting = Theme:addSection({
        title = "Setting"
    })
    ------------------------------------------------------ [[ Main Tap ]] ------------------------------------------------------\
    MapData = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMap = {}
    table.foreach(MapData,function(i,v)
        if not v['HasAct'] then
            if table.find(v['Type'],"Portal") then
                if not SaveSettings['Macro']['Macro Map']["[ Portal ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ Portal ] " .. tostring(i)] = "None"
                end
                Save()
            end
        end
        if v['HasAct'] then
            if table.find(v['Type'],"Challenge") then
                table.insert(TableMap,tostring(i))

                if not SaveSettings['Macro']['Macro Map']["[ Story ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ Story ] " .. tostring(i)] = "None"
                end

                if not SaveSettings['Macro']['Macro Map']["[ Challenge ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ Challenge ] " .. tostring(i)] = "None"
                end

                if not SaveSettings['Macro']['Macro Map']["[ Infinite ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ Infinite ] " .. tostring(i)] = "None"
                end
            
                if not SaveSettings['Macro']['Macro Map']["[ InfiniteCastle ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ InfiniteCastle ] " .. tostring(i)] = "None"
                end
                Save()
            end
            if table.find(v['Type'],"Raids") then
                if not SaveSettings['Macro']['Macro Map']["[ Raids ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ Raids ] " .. tostring(i)] = "None"
                end
                Save()
            end
            if table.find(v['Type'],"LegendaryStages") then
                if not SaveSettings['Macro']['Macro Map']["[ LegendaryStages ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ LegendaryStages ] " .. tostring(i)] = "None"
                end
                Save()
            end
        else
            if table.find(v['Type'],"ElementalCaverns") then
                --[[if not SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i)] then
                    SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i)] = "None"
                end]]
                if not SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Water"] then
                    SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Water"] = "None"
                end
                if not SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Nature"] then
                    SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Nature"] = "None"
                end
                if not SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Fire"] then
                    SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Fire"] = "None"
                end
                if not SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Light"] then
                    SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Light"] = "None"
                end
                if not SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Dark"] then
                    SaveSettings['Macro']['Macro Map']["[ ElementalCaverns ] " .. tostring(i) .. " Dark"] = "None"
                end
                Save()
            end
        end
    end)


    MainSettingPage:addDropdown({
        title = "Select Mode",
        list = {"Story","Challenge","Raids","Infinite","ElementalCaverns","LegendaryStages"}, 
        default = SaveSettings["Main"]['Select Mode'],
        callback = function(v)
            SaveSettings["Main"]['Select Mode'] = v
            Save()
        end;
    })

    MainSettingPage:addDropdown({
        title = "Select Map",
        list = TableMap, 
        default = SaveSettings["Main"]['Select Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Map'] = v
            Save()
        end;
    })

    MainSettingPage:addDropdown({
        title = "Select Act",
        list = {1,2,3,4,5,6}, 
        default = SaveSettings["Main"]['Select Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Act'] = v
            Save()
        end;
    })
    MainSettingPage:addDropdown({
        title = "Select Difficulty",
        list = {"Normal","Nightmare","Purgatory"}, 
        default = SaveSettings["Main"]['Select Difficulty'],
        callback = function(v)
            SaveSettings["Main"]['Select Difficulty'] = v
            Save()
        end;
    })
    MainSettingPage:addToggle({
        title = "Friends Only",
        default  = SaveSettings["Main"]['Friends Only'] ,
        callback = function(v)
            SaveSettings["Main"]['Friends Only'] = v
            Save()
        end ,
    })
    MainSettingPage:addToggle({
        title = "Auto Start",
        default  = SaveSettings["Main"]['Auto Start'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Start'] = v
            Save()
        end ,
    })
    MainSettingPage:addDropdown({
        title = "Delay Dropdown [Start,Retry,Leave]",
        list = {0,1,2,3,4,5,6,7,8,9,10}, 
        default = SaveSettings["Main"]["Delay [Start,Retry,Leave]"],
        callback = function(v)
            SaveSettings["Main"]["Delay [Start,Retry,Leave]"] = v
            Save()
        end;
    })
    MainSettingPage:addSlider({
        title = "Delay Slide [Start,Retry,Leave]",
        default = SaveSettings["Main"]["Delay [Start,Retry,Leave]"],
        min = 0,
        max = 10,
        callback = function(value)
            SaveSettings["Main"]["Delay [Start,Retry,Leave]"] = value
            Save()
        end
    })


    --Setting_Challenge
    Text_Challenge_Time = MainSettingChallenge:addLabel({title = 'Now Map : N/A \n Now Challenge : N/A '})

    ChallengeData = require(game:GetService("ReplicatedStorage").Modules.ChallengeInfo)
    local TableChallenge = {}
    table.foreach(ChallengeData,function(i,v)
        if v['ChallengeName'] then
            table.insert(TableChallenge,tostring(i))
        end
    end)

    wait()
    MainSettingChallenge:addMulitDropdown({
        title = "Select Challenge Map",
        list = TableMap, 
        default = SaveSettings["Main"]['Select Challenge Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge Map'] = v
            Save()
        end;
    })
    MainSettingChallenge:addMulitDropdown({
        title = "Select Challenge",
        list = TableChallenge, 
        default = SaveSettings["Main"]['Select Challenge'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge'] = v
            Save()
        end;
    })
    
    --Setting_Raids

    MapDataRaid = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMapRaids = {}
    for i,v in pairs(MapDataRaid) do
        if v['HasAct'] and table.find(v['Type'],"Raids")  then
            table.insert(TableMapRaids,tostring(i))
        end
    end


    MainSettingRaids:addDropdown({
        title = "Select Raids Map",
        list = TableMapRaids, 
        default = SaveSettings["Main"]['Select Raids Map2'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids Map2'] = v
            Save()
        end;
    })

    MainSettingRaids:addDropdown({
        title = "Select Raids Act",
        list = {1,2,3,4,5,6}, 
        default = SaveSettings["Main"]['Select Raids Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids Act'] = v
            Save()
        end;
    })

    MainSettingRaids:addDropdown({
        title = "Select Difficulty",
        list = {"Nightmare"}, 
        default = SaveSettings["Main"]['Select Raids Difficulty'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids Difficulty'] = v
            Save()
        end;
    })

    --Setting_Elemental

    ElementsData = require(game:GetService("ReplicatedStorage").Modules.Elements)
    local TableMapElementals = {}
    for i,v in pairs(ElementsData) do
        if i ~= "Neutral" then
            table.insert(TableMapElementals,tostring(i))
        end
    end

    MainSettingElemental:addDropdown({
        title = "Select Elemental Map",
        list = TableMapElementals, 
        default = SaveSettings["Main"]['Select Elemental Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Elemental Map'] = v
            Save()
        end;
    })
    MainSettingElemental:addDropdown({
        title = "Select Difficulty",
        list = {"Normal","Nightmare","Purgatory"}, 
        default = SaveSettings["Main"]['Select Elemental Difficulty'],
        callback = function(v)
            SaveSettings["Main"]['Select Elemental Difficulty'] = v
            Save()
        end;
    })

    --Setting_LegendStages

    MapDataLegendStage = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMapLegendStages = {}
    for i,v in pairs(MapDataLegendStage) do
        if v['HasAct'] and table.find(v['Type'],"LegendaryStages")  then
            table.insert(TableMapLegendStages,tostring(i))
        end
    end

    MainSettingLegendStage:addDropdown({
        title = "Select Legend Stages Map",
        list = TableMapLegendStages, 
        default = SaveSettings["Main"]['Select Legend Stages Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Legend Stages Map'] = v
            Save()
        end;
    })
    MainSettingLegendStage:addDropdown({
        title = "Select Act",
        list = {1,2,3}, 
        default = SaveSettings["Main"]['Select Legend Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Legend Act'] = v
            Save()
        end;
    })
    MainSettingLegendStage:addDropdown({
        title = "Select Difficulty",
        list = {"Purgatory"}, 
        default = SaveSettings["Main"]['Select Legend Stages Difficulty'],
        callback = function(v)
            SaveSettings["Main"]['Select Legend Stages Difficulty'] = v
            Save()
        end;
    })

    --Main_Play
    MainPage:addToggle({
        title = "Auto Skip Loading",
        default  = SaveSettings["Main"]['Auto Skip Loading'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Skip Loading'] = v
            Save()
        end ,
    })
    MainPage:addToggle({
        title = "Auto Move to Zone(Place Unit)",
        default  = SaveSettings["SaveSetting"]['Auto TP to Zone'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto TP to Zone'] = v
            Save()
        end ,
    })
    MainPage:addToggle({
        title = "Auto Join Room [Story,Inf,Raids,Challenge]",
        default  = SaveSettings["Main"]['Auto Join Story'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Join Story'] = v
            Save()
        end ,
    })

    MainPage:addToggle({
        title = "Auto Next",
        default  = SaveSettings["Main"]['Auto Next'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Next'] = v
            Save()
        end ,
    })

    MainPage:addToggle({
        title = "Auto Retry",
        default  = SaveSettings["Main"]['Auto Retry'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Retry'] = v
            Save()
        end ,
    })
    
    MainPage:addToggle({
        title = "Auto Leave",
        default  = SaveSettings["Main"]['Auto Leave'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Leave'] = v
            Save()
        end ,
    })

    MainPage:addLabel({title = 'If you use "Auto Retry,Next,Leave [Mobile]" \nNeed to Enable "Auto Hide UI" in "Theme" sector \nand Need to Disable "Auto Retry,Next,Leave"'})
    --Manual Click
    MainPage:addToggle({
        title = "Auto Next [Mobile]",
        default  = SaveSettings["Main"]['Manual Click [Next]'] ,
        callback = function(v)
            SaveSettings["Main"]['Manual Click [Next]'] = v
            Save()
        end ,
    })

    MainPage:addToggle({
        title = "Auto Retry [Mobile]",
        default  = SaveSettings["Main"]['Manual Click [Retry]'] ,
        callback = function(v)
            SaveSettings["Main"]['Manual Click [Retry]'] = v
            Save()
        end ,
    })

    MainPage:addToggle({
        title = "Auto Leave [Mobile]",
        default  = SaveSettings["Main"]['Manual Click [Leave]'] ,
        callback = function(v)
            SaveSettings["Main"]['Manual Click [Leave]'] = v
            Save()
        end ,
    })


    --Main_ETC
    MainETCPage:addToggle({
        title = "Auto TP to WORLD 2",
        default  = SaveSettings["Main"]['Auto TP to WORLD 2'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto TP to WORLD 2'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Vote x2-3 Speed",
        default  = SaveSettings["Main"]['Auto Enable Speed'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Enable Speed'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Disable Attack Effect",
        default  = SaveSettings["Main"]['Auto Disable Attack Effect'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Disable Attack Effect'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Disable Hit Effect",
        default  = SaveSettings["Main"]['Auto Disable Hit Effect'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Disable Hit Effect'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Disable Music",
        default  = SaveSettings["Main"]['Auto Disable Music'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Disable Music'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Disable Damage Indicator",
        default  = SaveSettings["Main"]['Auto Disable Damage Indicator'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Disable Damage Indicator'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Disable Global Shadows",
        default  = SaveSettings["Main"]['Auto Disable Global Shadows'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Disable Global Shadows'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Disable All Sound [Error,SFX]",
        default  = SaveSettings["Main"]['Auto Disable All Sound'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Disable All Sound'] = v
            Save()
        end ,
    })
    MainETCPage:addToggle({
        title = "Auto Delete Map",
        default  = SaveSettings["Main"]['Delete Map'] ,
        callback = function(v)
            SaveSettings["Main"]['Delete Map'] = v
            Save()
        end ,
    })


    --Redeem_Code
    DailyPage:addToggle({
        title = "Auto Redeem Daily",
        default  = SaveSettings["Main"]['Auto Redeem Daily'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Redeem Daily'] = v
            Save()
        end ,
    })

    TableCodeData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
    local TabelCodeUsed = {}
    if not (TableCodeData['Codes']) then
        print("Use some Code first")
    else
        for i,v in pairs(TableCodeData['Codes']) do
            table.insert(TabelCodeUsed,tostring(i))
        end
    end

    local TableCode = {
        
        'Sub2BmGTormenter117onYT',
        'Sub2KingLuffy',
        'Sub2ZerozKinger1MilSubs',
        'Sub2Noclypso176k',
        'Sub2MayyjeeeOrCodeWontWork',
        'HappyEaster',
        'FollowJULLGRINDSonTwitch',
        'Sub2NagBloxonYT',
        'Sub2SebbyastianonYT',
        'Sub2UniversalPantheronYT',
        'TorSavedALS',
        'Update5!',
        'LongMaitenanceLimitedCode',
        'CongratsMrBeast1Billion',
        'CongratsMrBeast1Billion2',
        'ToTheFuture!!',
        'EraOfTheAdmirals',
        'BossStudiosTakeover!',
        'AriseWakeyWakey',
        'BossStudio1stUpd',
        'SaviourCaleB',
        'AdmiralsUPD',
        'DelayedUpdate',
        'OPMUpdate',
        'BossStudiosOnTop',
        'CaleBTheHero',
        'BugFixesTeehee',
        'BannerFix!?!',
        'BannerFix!?!',
        'SOLOPREPARING!',
        'QOLUPD!',
        'REDGATE?!',
        'ConverterFix?!',
        'X7Weekend!',
        'SOLOLEVELING!',
        'HBDCaleB2024',
        'NEWUPD?!',
        'Part1UPD!',
        'SOLOPART2SOON?!',
        'ALSREVAMPSOON?',
        'QOLUpdate2!',
        'SOLOPARTTWO?!',
        'PARTTWOUPD!?',
        'QuickFixies',
        'FreeRerolls!!',
        'QOLSprinkleUPD',
        'SUMMERSOON!?',
        'ChooChoo',
        'PatchUpdate!!',
        'SorryForShutdown!!',
        'DemonPortals!!',
        '170kLikes',
        '170kFavorites',
        'FollowBoss',
        'AFKCAPSULEYAY',
        'ALSISBACK!',
        'BERSERK!',
        '170kLikes',
        '170kFavorites',
        'FREESHARDS',
        'SECRETCODE???',
        'Summer2024!',
        'CID!',
        'MoreCodes!!',
        'QUESTRESET',
        'THEWORLDSHALLKNOWPAIN!',
        'SUMMERPART2',
        'TY180KFAVS',
        'TY180KLIKES',
        'DragonVSHunters',
        'NewEraComing',
        'HuntersW?',
        'DragonsL?',
        'PatchUpdate!!',
        'GODLIES',
        '200KLIKES',
        'FIREFORCE' ,
        'TYFORSUPPORT',
        'BLEACH',
        'WORLD2ISOUT',
        'Bugfixesgoincrazy',
        'NEXTWEEKENDHYPE!',
        '20FINGERS!',
        'DOMAIN EXPANSION!',
        'HAIENERA',
        'BPReset!',
        'SorryForBugs!!',
        '300KLIKES!!',
        'JoinTheGram!',
        '10KAGAIN??',
        'ZankaNoTachi',
        'TheOne',
        'ShinigamiVsQuincy',
        'BOBAKISBACK!',
        'NewBUNDLES?!',
        'TYBW..?',
        'Welcome!!',
        'FollowDaIG',
        'JOJOUpdate!',
        'OverHeaven!',
        'HeavenUpdateHYPE??',
        'SecretCodeFR',
        '2xPOINTS',
        'NewGODLY!!',
        'MakeYourClan!',
        'Bleach2',
        'SorryForBugs!',
        'theGramALS',
        'PodcastyCodeBois!'

    }
    DailyPage:addButton({
        title = "Redeem All Code",
        callback = function()
            for i,v in pairs(TableCode) do
                if TabelCodeUsed ~= "nil" and not table.find(TabelCodeUsed,tostring(v)) then
                    local args = { [1] = v }
                    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer(unpack(args))
                    wait(0.5)
                    print("Redeem Code : " .. tostring(v))
                else
                    print("You already Used Code : " .. tostring(v))
                end
            end
        end,
    })

    DailyPage:addLabel({title = "If have a new Code \n Wait Script Update for Redeem it"})

    ------------------------------------------------------ [[ Events Tap ]] ------------------------------------------------------
    --Events_Wheel



    Text_Capsules = Events_Capsule:addLabel({title = " ** Items Event Counts ** \n Demon Capsule : N/A "})

    Capsule_Name = {}
    local CapsuleData = require(game:GetService("ReplicatedStorage").Modules.ItemInfo)
    for i,v in pairs(CapsuleData) do
        if v['ItemType'] == "Capsule" then
            table.insert(Capsule_Name,tostring(i))
        end
    end 

    Events_Capsule:addDropdown({
        title = "Select Capsule",
        list = Capsule_Name,
        default = SaveSettings["Events"]['Select Capsule'],
        callback = function(v)
            SaveSettings["Events"]['Select Capsule'] = v
            Save()
        end;
    })
    Events_Capsule:addToggle({
        title = "Auto Open Capsule",
        default  = SaveSettings["Events"]['Auto Open Capsule'] ,
        callback = function(v)
            SaveSettings["Events"]['Auto Open Capsule'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            if SaveSettings["Events"]['Auto Open Capsule'] then
                Text_Capsules.Options:ChangeText(" ** Items Event Counts ** \n " .. tostring(SaveSettings["Events"]['Select Capsule']) .." Counts : " .. tostring(comma_value(PlayerData2['ItemData'][tostring(SaveSettings["Events"]['Select Capsule'])]['Amount'])))
                local string_1 = SaveSettings["Events"]['Select Capsule'];
                local Target = game:GetService("ReplicatedStorage").Remotes.OpenCapsule;
                Target:FireServer(string_1);
                wait(.1)
            end
        end
    end)

    --Event_Shop
    Events_Shop:addDropdown({
        title = "Select Event Item",
        list = {"Tropical Paradise","SummerCapsule"},
        default = SaveSettings["Events"]['Select Event Item'],
        callback = function(v)
            SaveSettings["Events"]['Select Event Item'] = v
            Save()
        end;
    })
    Events_Shop:addToggle({
        title = "Auto Buy [Portal & Capsule]",
        default  = SaveSettings["Events"]['Auto Buy Event Items'] ,
        callback = function(v)
            SaveSettings["Events"]['Auto Buy Event Items'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            if SaveSettings["Events"]['Auto Buy Event Items'] then
                local string_1 = SaveSettings["Events"]['Select Event Item'];
                local Target = game:GetService("ReplicatedStorage").Remotes.SummerEvent;
                Target:FireServer(string_1);
                wait(.1)
            end
        end
    end)

    ------------------------------------------------------ [[ Portals Tap ]] ------------------------------------------------------
    --Tier Portals
    local TablePortals = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").Portals:GetChildren()) do
        if v:IsA("Model") then
            table.insert(TablePortals,tostring(v))
        end
    end

    Portals_Setting:addMulitDropdown({
        title = "Select Portals",
        list = TablePortals, 
        default = SaveSettings["Portals"]['Select Tier Portals'],
        callback = function(v)
            SaveSettings["Portals"]['Select Tier Portals'] = v
            Save()
        end;
    })

    --[[MapData2 = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMap2 = {}
    table.foreach(MapData2,function(i,v)
        if table.find(v['Type'],"Portal") then
            table.insert(TableMap2,tostring(i))
        end
        if v['HasAct'] then
            if table.find(v['Type'],"Challenge") then
                table.insert(TableMap2,tostring(i))
            end
        end
    end)

    Portals_Setting:addMulitDropdown({
        title = "Select Map Portals",
        list = TableMap2, 
        default = SaveSettings["Portals"]['Select Map Portals'],
        callback = function(v)
            SaveSettings["Portals"]['Select Map Portals'] = v
            Save()
        end;
    })]]

    Portals_Setting:addMulitDropdown({
        title = "Select Act [or] Tier",
        list = {1,2,3,4,5,6},  
        default = SaveSettings["Portals"]['Select Maps Act'],
        callback = function(v)
            SaveSettings["Portals"]['Select Maps Act'] = v
            Save()
        end;
    })

    ChallengeData2 = require(game:GetService("ReplicatedStorage").Modules.ChallengeInfo)
    local TableChallenge2 = {}
    table.foreach(ChallengeData2,function(i,v)
        if v['ChallengeName'] then
            table.insert(TableChallenge2,tostring(i))
        end
    end)

    Portals_Setting:addMulitDropdown({
        title = "Select Challenge",
        list = TableChallenge2, 
        default = SaveSettings["Portals"]['Select Challenge Portals'],
        callback = function(v)
            SaveSettings["Portals"]['Select Challenge Portals'] = v
            Save()
        end;
    })

    Portals_Setting:addToggle({
        title = "Auto Next/Replay Portals",
        default  = SaveSettings["Portals"]['Auto Next_Replay Portals'] ,
        callback = function(v)
            SaveSettings["Portals"]['Auto Next_Replay Portals'] = v
            Save()
        end ,
    })

    Portals_Setting:addToggle({
        title = "Auto Open Portals",
        default  = SaveSettings["Portals"]['Auto Open Portals'] ,
        callback = function(v)
            SaveSettings["Portals"]['Auto Open Portals'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            local PlaceId_Lobby = {12886143095,18583778121}
            if SaveSettings["Portals"]['Auto Open Portals'] and table.find(PlaceId_Lobby,game.PlaceId) then
                PortalsData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                for i,v in pairs(PortalsData['PortalData']) do

                    --Event_Portals
                    if table.find(SaveSettings["Portals"]['Select Tier Portals'],v['PortalName']) and table.find(SaveSettings["Portals"]['Select Maps Act'],tostring(v['PortalData']['Tier'])) and table.find(SaveSettings["Portals"]['Select Challenge Portals'],v['PortalData']['Challenges']) then
                        wait(.5)
                        local args = {
                            [1] = v['PortalID']
                        }
                        game:GetService("ReplicatedStorage").Remotes.Portals.Activate:InvokeServer(unpack(args))

                        repeat wait() until not SaveSettings["Portals"]['Auto Open Portals']
                        break
                    end
                end
            end
        end
    end)

    --OLD_Open_portals
    --[[spawn(function()
        while wait() do
            local PlaceId_Lobby = {12886143095,18583778121}
            if SaveSettings["Portals"]['Auto Open Portals'] and table.find(PlaceId_Lobby,game.PlaceId) then
                PortalsData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                for i,v in pairs(PortalsData['PortalData']) do

                    --Event_Portals
                    if (table.find(SaveSettings["Portals"]['Select Tier Portals'],v['PortalName']) or table.find(SaveSettings["Portals"]['Select Map Portals'],v['PortalName']) ) and table.find(SaveSettings["Portals"]['Select Maps Act'],tostring(v['PortalData']['Tier'])) and table.find(SaveSettings["Portals"]['Select Challenge Portals'],v['PortalData']['Challenges']) then
                        wait(.5)
                        local args = {
                            [1] = v['PortalID']
                        }
                        game:GetService("ReplicatedStorage").Remotes.Portals.Activate:InvokeServer(unpack(args))

                    --Normal_Portals
                    elseif table.find(SaveSettings["Portals"]['Select Tier Portals'],v['PortalName']) and table.find(SaveSettings["Portals"]['Select Map Portals'],v['PortalData']['Map']) and table.find(SaveSettings["Portals"]['Select Maps Act'],tostring(v['PortalData']['Act'])) and table.find(SaveSettings["Portals"]['Select Challenge Portals'],v['PortalData']['Challenges']) then
                        wait(.5)
                        local args = {
                            [1] = v['PortalID']
                        }
                        game:GetService("ReplicatedStorage").Remotes.Portals.Activate:InvokeServer(unpack(args))

                        repeat wait() until not SaveSettings["Portals"]['Auto Open Portals']
                        break
                    end
                end
            end
        end
    end)]]

    Portals_Setting:addToggle({
        title = "Auto Start Portals",
        default  = SaveSettings["Portals"]['Auto Portals Start'] ,
        callback = function(v)
            SaveSettings["Portals"]['Auto Portals Start'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("PortalUI") then
                if SaveSettings["Portals"]['Auto Portals Start'] and game:GetService("Players").LocalPlayer.PlayerGui.PortalUI.BG.Bottom.Start.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    print('Start join Portals Wait to Teleporting ..!!!')
                    repeat
                        wait()
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                        wait(10)
                        ClickStartPortals()
                    until not SaveSettings["Portals"]['Auto Portals Start'] or game:GetService("Players").LocalPlayer.PlayerGui.PortalUI.BG.Bottom.Start.Visible == false
                end
            end
        end
    end)

    Portals_Setting:addToggle({
        title = "Manual Click Start [Mobile]",
        default  = SaveSettings["Portals"]['Auto Click Portals Start'] ,
        callback = function(v)
            SaveSettings["Portals"]['Auto Click Portals Start'] = v
            Save()
        end ,
    })
    -------------------   
    --Portals_Selling--
    -------------------  
    Text_Portals_Sell = Portals_Selling:addLabel({title = '-= Selling Portal =- \n ... Wait for Select Portals ...' })

    Portals_Selling:addMulitDropdown({
        title = "Select Sell Tier Portals",
        list = TablePortals, 
        default = SaveSettings["Portals"]['Select Tier Portals SELL'],
        callback = function(v)
            SaveSettings["Portals"]['Select Tier Portals SELL'] = v
            Save()
        end;
    })

    Portals_Selling:addMulitDropdown({
        title = "Select Sell Maps Act",
        list = {1,2,3,4,5,6},  
        default = SaveSettings["Portals"]['Select Maps Act SELL'],
        callback = function(v)
            SaveSettings["Portals"]['Select Maps Act SELL'] = v
            Save()
        end;
    })

    Portals_Selling:addMulitDropdown({
        title = "Select Sell Challenge",
        list = TableChallenge2, 
        default = SaveSettings["Portals"]['Select Challenge Portals SELL'],
        callback = function(v)
            SaveSettings["Portals"]['Select Challenge Portals SELL'] = v
            Save()
        end;
    })

    Portals_Selling:addToggle({
        title = "Auto Sell Portals",
        default  = SaveSettings["Portals"]['Auto Sell Portals'] ,
        callback = function(v)
            SaveSettings["Portals"]['Auto Sell Portals'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            
            if SaveSettings["Portals"]['Auto Sell Portals'] then
                PortalsData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                for i,v in pairs(PortalsData['PortalData']) do

                    --Event_Portals
                    if table.find(SaveSettings["Portals"]['Select Tier Portals SELL'],v['PortalName']) and table.find(SaveSettings["Portals"]['Select Maps Act SELL'],tostring(v['PortalData']['Tier'])) and table.find(SaveSettings["Portals"]['Select Challenge Portals SELL'],v['PortalData']['Challenges']) then
                        wait(.5)
            
                        local args = {
                            [1] = {
                                [tostring(v['PortalID'])] = true
                            }
                        }
                        game:GetService("ReplicatedStorage").Remotes.Portals.Delete:InvokeServer(unpack(args))
            
                        Text_Portals_Sell.Options:ChangeText(" Selling Portal : " .. tostring(v['PortalName']) .. "\n Map : " .. tostring(v['PortalData']['Map']) .. " - Act" .. tostring(v['PortalData']['Act']) .. "\n Challenge : " .. tostring(v['PortalData']['Challenges']))
                        repeat wait() until not SaveSettings["Portals"]['Auto Sell Portals']
                        --break
                    end
                end
            end

        end
    end)

    Portals_Selling:addLabel({title = '** Please Re-Check Portals Before Selling ** \n Check Tier Portals & etc \n for sure you not Sell wrong Portals ' })

    ------------------------------------------------------ [[ Inf Castle Tap ]] ------------------------------------------------------
    --InfCastle
    Text_InfCastle_Play = InfCastle_Setting:addLabel({title = '"** Infinity Castle ** \n Now Room : N/A \n Now Map : N/A'})
    InfCastle_Setting:addToggle({
        title = "Auto Play Inf Castle",
        default  = SaveSettings["InfCastle"]['Auto Play InfCastle'] ,
        callback = function(v)
            SaveSettings["InfCastle"]['Auto Play InfCastle'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            local PlaceId_Lobby = {12886143095,18583778121}
            if SaveSettings["InfCastle"]['Auto Play InfCastle'] and LocalPlayer.PlayerGui:FindFirstChild("InfinityCastle") and table.find(PlaceId_Lobby,game.PlaceId) then
                if LocalPlayer.PlayerGui:FindFirstChild("InfinityCastle").Enabled == true then
                    local infinityroom = 0
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.InfinityCastle.BG.Content.Left.RoomPage.Content:GetChildren()) do
                        if LocalPlayer.PlayerGui.InfinityCastle.BG.Content.Left.RoomPage.Content.Bottom.Enter.Visible == true then
                            if v.Name == "Top" then
                                local room = string.split(v.RoomName.Text, " ")
                                local args = {
                                    [1] = "Play",
                                    [2] = tonumber(room[2])
                                }
                                game:GetService("ReplicatedStorage").Remotes.InfiniteCastleManager:FireServer(unpack(args))
                                
                                infinityroom = tonumber(room[2])
                                break
                            end
                        end
                    end
                else
                    local Lobby_Zone = workspace:FindFirstChild("Lobby"):FindFirstChild("Zones")
                    HumanoidRootPart.CFrame = Lobby_Zone:FindFirstChild("InfCastle").CFrame * CFrame.new(0,0,5)
                    Character.HumanoidRootPart:PivotTo(Lobby_Zone:FindFirstChild("InfCastle").CFrame * CFrame.new(0,0,5))
                    warn("Teleporting Infinity Castle Map...")
                    task.wait(.6)
                end
            end
        end
    end)

    ------------------------------------------------------ [[ Gacha Tap ]] ------------------------------------------------------
    Text_Emeralds = GachaPage:addLabel({title = 'Emerald Counts : N/A \n Gold Counts : N/A \n Reroll : N/A | Raid : N/A ' })
    GachaPage:addDropdown({
        title = "Select Banner",
        list = {'Banner 1','Banner 2','Ultimate Banner'}, 
        default = SaveSettings["Gacha"]['Select Banner'],
        callback = function(v)
            SaveSettings["Gacha"]['Select Banner'] = v
            Save()
        end;
    })
    GachaPage:addDropdown({
        title = "Select Method",
        list = {'1','10'}, 
        default = SaveSettings["Gacha"]['Select Method'],
        callback = function(v)
            SaveSettings["Gacha"]['Select Method'] = v
            Save()
        end;
    })
    GachaPage:addToggle({
        title = "Auto Gacha",
        default  = SaveSettings["Gacha"]['Auto Gacha'] ,
        callback = function(v)
            SaveSettings["Gacha"]['Auto Gacha'] = v
            Save()
        end ,
    })

    spawn(function()
        while wait() do
            if SaveSettings["Gacha"]['Auto Gacha'] then
                local string_1 = SaveSettings["Gacha"]['Select Method'];
                local string_2 = SaveSettings["Gacha"]['Select Banner'] == 'Banner 1' and "1" or SaveSettings["Gacha"]['Select Banner'] == 'Banner 2' and "2" or SaveSettings["Gacha"]['Select Banner'] == 'Ultimate Banner' and "3";
                local Target = game:GetService("ReplicatedStorage").Remotes.Summon;
                Target:InvokeServer(string_1, string_2);
                wait(.1)
            end
        end
    end)

    ------------------------------------------------------ [[ Macro ]] ------------------------------------------------------
    function CreateMarocList()
        Select_Macro_Profile = {}
        for i,v in pairs(listfiles("HolyShz/AnimeLastStand/Macro")) do
            if string.find(v,[[\]]) then
                table.insert(Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
            else
                table.insert(Select_Macro_Profile, tostring(v:split([[/]])[4]:gsub(".json", "")))
            end
        end
        return Select_Macro_Profile
    end
    local PlaceId_Lobby = {12886143095,18583778121}
    if not table.find(PlaceId_Lobby,game.PlaceId) then
        MapDataInfo = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()
        for i,Name in pairs(SaveSettings['Macro']['Macro Map']) do
            if ('[ Challenge ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            --[[elseif ('[ ElementalCaverns ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()]]  
            elseif ('[ LegendaryStages ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Raids ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Infinite ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ InfiniteCastle ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Portal ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Story ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
                if MapDataInfo.Element == nil then
                    print("Din't find Element not load a Module")
                else
                    print("Found a Element | Elemental : " .. MapDataInfo.MapName)
                    if ('[ ElementalCaverns ] ' .. MapDataInfo.MapName .. " " .. MapDataInfo.Element) == (tostring(i)) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                        SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                        Save()
                    end
                end
            end
        end
    end 
    local MacroStats = Macro_Setting_Page:addLabel({title = 'Main : N/S'})
    local PlaceId_Lobby = {12886143095,18583778121}
    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('EndGameUI') and not table.find(PlaceId_Lobby,game.PlaceId) then
        if RecordMacroToggle then
            MacroStats.Options:ChangeText("Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select'])
        else
            MacroStats.Options:ChangeText('Status: Play Ended.')
        end
    end

    MacroSelect = Macro_Setting_Page:addDropdown({
        title = "Select Macro",
        list = CreateMarocList(), 
        default = SaveSettings['Macro']['Macro Select'],
        callback = function(v)
            SaveSettings['Macro']['Macro Select'] = v
            Save()
        end;
    })
    Macro_Setting_Page:addButton({
        title = "Refresh Macro",
        callback = function()
            MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
        end,
    })
    MacroName = nil
    Macro_Setting_Page:addTextbox({
        title = "Create Macro Profile",
        holderbox = "Macro Name ...",
        default = "",
        callback = function(starts)
            MacroName = starts
        end,
    })
    Macro_Setting_Page:addButton({
        title = "Create Macro File",
        callback = function()
            if typeof(MacroName) ~= nil then
                if not isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(MacroName)..".json") then
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(MacroName)..".json", game:GetService("HttpService"):JSONEncode({}))
                    UI:Notify({
                        title = "Notification",
                        text = "Create Profile : Successful Create Profile"
                    })
                else
                    UI:Notify({
                        title = "Notification",
                        text = "Create Profile : You Already Have This Profile"
                    })
                end
                MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
            end 
        end,
    })
    Macro_Setting_Page:addButton({
        title = "Delete Macro",
        callback = function()
            if isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                delfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json")
            end
            MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
        end,
    })
    -- Record Macro
    getgenv().RecordMacro = {}
    RecordMacroToggle = false
    Macro_Record_Page:addToggle({
        title = "Record Macro",
        default = false ,
        callback = function(v)
            RecordMacroToggle = v
            local PlaceId_Lobby = {12886143095,18583778121}
            if not table.find(PlaceId_Lobby,game.PlaceId) then
                if RecordMacroToggle and type(SaveSettings['Macro']['Macro Select']) ~= "None" then
                    game:GetService("ReplicatedStorage"):WaitForChild("GameStarted")
                    if not game:GetService("ReplicatedStorage").GameStarted.Value then
                        UI:Notify({
                            title = "Notification",
                            text = "Macro Status : Waiting Wave Start"
                        })
                        repeat wait() until game:GetService("ReplicatedStorage").GameStarted.Value
                    end
                    StartRecordTime = Timelapse()
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Recording to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                elseif not RecordMacroToggle and type(SaveSettings['Macro']['Macro Select']) ~= "None" and #getgenv().RecordMacro > 0 then
                    table.sort(getgenv().RecordMacro , function(a,b)
                        return tonumber(a['Index']) < tonumber(b['Index'])
                    end)
                    MacroStats.Options:ChangeText("Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select'])
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                end
            end
        end ,
    })
    NumberPlace,Index,TimeInGame = 1,1,0
    local PlaceId_Lobby = {12886143095,18583778121}
    if not table.find(PlaceId_Lobby,game.PlaceId) then
        workspace.Towers.ChildAdded:Connect(function(v)
            if v:WaitForChild("Owner") and v:WaitForChild("Owner").Value.Name == LocalPlayer.Name then
                if RecordMacroToggle then
                    MacroStats.Options:ChangeText("Status: Record Marcro [ PlaceTower ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value)
                    local DataTable = {
                        ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                        ['Index'] = Index,
                        ["Method_Data"] = {
                            ["Method"] = tostring('PlaceTower'),
                            ["Data"] = {
                                ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                ["UnitPlace"] = tostring(v.Name),
                                ["CFrame"] = tostring(v:GetModelCFrame())
                            }
                        }
                    }
                    table.insert(getgenv().RecordMacro, DataTable)
                    table.sort(getgenv().RecordMacro , function(a,b)
                        
                        return tonumber(a['Index']) < tonumber(b['Index'])
                    end)
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))

                    Index = Index + 1

                    v:WaitForChild('Targeting').Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Targeting ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value .. " | Target Change : " .. v.Targeting.Value)
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Targeting'),
                                ["Data"] = {
                                    ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                    ["Targeting"] = v.Targeting.Value
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                        
                        Index = Index + 1
                    end)

                    v:WaitForChild('Upgrade').Changed:Connect(function(NewValue) 
                        if game:GetService("ReplicatedStorage").Challenge.Value == "High Cost" then
                            MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value .. " | Used Money : $" .. comma_value((TowerInfo[v.Name][v.Upgrade.Value]["Cost"]) * 1.33))
                        else
                            MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value .. " | Used Money : $" .. comma_value(TowerInfo[v.Name][v.Upgrade.Value]["Cost"]))
                        end
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Upgrade'),
                                ["Data"] = {
                                    ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    
                        Index = Index + 1
                    end)

                    v:GetAttributeChangedSignal("Ability"):Connect(function(NewValue) 
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Ability ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value)
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Ability'),
                                ["Data"] = {
                                    ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    
                        Index = Index + 1
                    end)

                end

                local Number = Instance.new("IntValue")
                Number.Name = 'NumberTower'
                Number.Parent = v
                Number.Value = NumberPlace
                NumberPlace = NumberPlace + 1
            end
        end)
        workspace.Towers.ChildRemoved:Connect(function(v)
            if RecordMacroToggle then
                MacroStats.Options:ChangeText("Status: Record Marcro [ Selling ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value)
                local DataTable = {
                    ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                    ['Index'] = Index,
                    ["Method_Data"] = {
                        ["Method"] = tostring('Selling'),
                        ["Data"] = {
                            ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                            ["UnitPlace"] = v.NumberTower.Value,
                        }
                    }
                }
                table.insert(getgenv().RecordMacro, DataTable)
                table.sort(getgenv().RecordMacro , function(a,b)
                    
                    return tonumber(a['Index']) < tonumber(b['Index'])
                end)
                writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
            
                Index = Index + 1
            end 
        end)
    end
    -- Replay
    Macro_Play_Page:addDropdown({
        title = "Delay Macro Play Time (sec)",
        list = {0,1,2,3,4,5,6,7,8,9,10},
        default = SaveSettings["Macro"]['Delat Macro Play Time (sec)'],
        callback = function(v)
            SaveSettings["Macro"]['Delat Macro Play Time (sec)'] = v
            Save()
        end;
    })
    Macro_Play_Page:addToggle({
        title = "Play Macro",
        default  = SaveSettings['Macro']['Play Macro'] ,
        callback = function(v)
            SaveSettings['Macro']['Play Macro'] = v
            Save()
            spawn(function()
                local e, s = pcall(function()
                    local PlaceId_Lobby = {12886143095,18583778121}
                    if not table.find(PlaceId_Lobby,game.PlaceId) and SaveSettings['Macro']['Play Macro'] and isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                        local Macro = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json"))
                        table.sort(Macro, function(a,b)
                            --return tonumber(a["Time"]) < tonumber(b["Time"])
                            return tonumber(a["Index"]) < tonumber(b["Index"])
                        end)
                        --TotalIndex
                        local TableIndex = {}
                        table.foreach(Macro,function(i,v)
                            table.insert(TableIndex,v['Index'])
                        end)
                        game:GetService("ReplicatedStorage"):WaitForChild("GameStarted")
                        if not game:GetService("ReplicatedStorage").GameStarted.Value then
                            UI:Notify({
                                title = "Notification",
                                text = "Macro Status : Waiting Wave Start"
                            })
                            repeat wait() until game:GetService("ReplicatedStorage").GameStarted.Value
                        end
                        StartRecordTime = Timelapse()
                        print("Started")
                        wait()

                        for i,v in pairs(Macro) do
                            --if Timelapse() - StartRecordTime < v["Time"] then
                            --    repeat wait() until Timelapse() - StartRecordTime >= v["Time"]
                            --end

                            local UNIT;
                            local LocalPlayer = game:GetService("Players").LocalPlayer
                            local PlayerModule = require(LocalPlayer.PlayerScripts.PlayerModule)
                            local ClickToMoveController = PlayerModule:GetClickToMoveController()
                            ClickToMoveController:SetShowPath(false)
                            ClickToMoveController:SetUserJumpEnabled(false)
                            
                            if v["Method_Data"]["Method"] == "PlaceTower" and game:GetService("ReplicatedStorage").Challenge.Value == "High Cost" then 
                                if v["Index"] ~= math.max(unpack(TableIndex)) then
                                    MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitPlace"] .. "\n Waiting For : $" .. comma_value((TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]) * 1.33))
                                elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                    MacroStats.Options:ChangeText('Status: Play Ended.')
                                end
                                repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber((TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]) * 1.33)

                                --TP_to_Zone
                                local PlaceId_Lobby = {12886143095,18583778121}
                                if SaveSettings["SaveSetting"]['Auto TP to Zone'] and not table.find(PlaceId_Lobby,game.PlaceId) then
                                    local CFrame_X,CFrame_Y,CFrame_Z = StringToXYZ(v["Method_Data"]["Data"]["CFrame"]) 
                                    ClickToMoveController:MoveTo(Vector3.new(CFrame_X, CFrame_Y, CFrame_Z - 2))
                                end

                                wait(tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']) or 3)
                                local args = {
                                    [1] = v["Method_Data"]["Data"]["UnitPlace"],
                                    [2] = StringToCFrame(v["Method_Data"]["Data"]["CFrame"])
                                }
                                game:GetService("ReplicatedStorage").Remotes.PlaceTower:FireServer(unpack(args))
                            elseif v["Method_Data"]["Method"] == "PlaceTower" and game:GetService("ReplicatedStorage").Challenge.Value ~= "High Cost" then
                                MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitPlace"] .. "\n Waiting For : $" .. comma_value(TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]))
                                repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber(TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"])

                                --TP_to_Zone
                                local PlaceId_Lobby = {12886143095,18583778121}
                                if SaveSettings["SaveSetting"]['Auto TP to Zone'] and not table.find(PlaceId_Lobby,game.PlaceId) then
                                    local CFrame_X,CFrame_Y,CFrame_Z = StringToXYZ(v["Method_Data"]["Data"]["CFrame"]) 
                                    ClickToMoveController:MoveTo(Vector3.new(CFrame_X, CFrame_Y, CFrame_Z - 2))
                                end

                                wait(tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']) or 3)
                                local args = {
                                    [1] = v["Method_Data"]["Data"]["UnitPlace"],
                                    [2] = StringToCFrame(v["Method_Data"]["Data"]["CFrame"])
                                }
                                game:GetService("ReplicatedStorage").Remotes.PlaceTower:FireServer(unpack(args))
                            elseif v["Method_Data"]["Method"] == "Upgrade" and game:GetService("ReplicatedStorage").Challenge.Value == "High Cost" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For : $" .. comma_value((TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"]) * 1.33))
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber((TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"]) * 1.33)
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Upgrade" and game:GetService("ReplicatedStorage").Challenge.Value ~= "High Cost" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For : $" .. comma_value(TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"]))
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber(TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"])

                                        wait(tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']) or 3)
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Selling" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("ReplicatedStorage").Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"])

                                        wait(tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']) or 3)
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Sell:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Targeting" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then --value.Targeting.Value
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Change Target : " .. v["Method_Data"]["Data"]["Targeting"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("ReplicatedStorage").Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
                                        if value.Targeting.Value ~= v["Method_Data"]["Data"]["Targeting"] then

                                            wait(tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']) or 3)
                                            local args = {
                                                [1] = value
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.ChangeTargeting:InvokeServer(unpack(args)) 
                                        end
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Ability" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("ReplicatedStorage").Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])

                                        wait(tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']) or 3)
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Ability:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            end
                            wait(1)
                        end
                    end
                end)
                if not e and s then
                    warn(s)
                end
            end)
        end ,
    })

    Macro_Play_Page:addLabel({title = "It's a BETA version has a Bug and Problem \n If you found a Bug please report in Discord"})

    ------------------------------------------------------ [[ Macro Map ]] ------------------------------------------------------
    local MacroMapsRefresh = MacroMapsCreateTap:addSection({
        title = "Macro - Refresh All Macro File"
    })
    local MacroMapsStory = MacroMapsCreateTap:addSection({
        title = "Macro Map - Story"
    })
    local MacroMapsLegendaryStages = MacroMapsCreateTap:addSection({
        title = "Macro Map - Legendary Stages"
    })
    local MacroMapsPortal = MacroMapsCreateTap:addSection({
        title = "Macro Map - Portal"
    })
    local MacroMapsRaids = MacroMapsCreateTap:addSection({
        title = "Macro Map - Raids"
    })
    local MacroMapsElementalCaverns = MacroMapsCreateTap:addSection({
        title = "Macro Map - Elemental Caverns"
    })
    local MacroMapsChallenge = MacroMapsCreateTap:addSection({
        title = "Macro Map - Challenge"
    })

    local MacroMapsInfCastle = MacroMapsCreateTap:addSection({
        title = "Macro Map - Infinite Castle"
    })
    local MacroMapsInfinite = MacroMapsCreateTap:addSection({
        title = "Macro Map - Infinite"
    })

    local TableMacroMap = {}
    for i,Name in pairs(SaveSettings['Macro']['Macro Map']) do
        if string.find(tostring(i),"Story") then
            TableMacroMap[tostring(i)] = MacroMapsStory:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"LegendaryStages") then
            TableMacroMap[tostring(i)] = MacroMapsLegendaryStages:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Portal") then
            TableMacroMap[tostring(i)] = MacroMapsPortal:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Raids") then
            TableMacroMap[tostring(i)] = MacroMapsRaids:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"ElementalCaverns") then
            TableMacroMap[tostring(i)] = MacroMapsElementalCaverns:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Challenge") then
            TableMacroMap[tostring(i)] = MacroMapsChallenge:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"InfiniteCastle") then
            TableMacroMap[tostring(i)] = MacroMapsInfCastle:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Infinite") then
            TableMacroMap[tostring(i)] = MacroMapsInfinite:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        end
    end
    function UpdateTableMacroMap()
        for i,v in pairs(TableMacroMap) do
            v.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Map'][tostring(i)]) 
        end
    end
    MacroMapsRefresh:addButton({
        title = "Refresh All Macro File",
        callback = function()
            UpdateTableMacroMap()
        end,
    })
    ------------------------------------------------------ [[ Import Macro ]] ------------------------------------------------------
    ImportFileName = "None"
    MacroImport:addTextbox({
        title = "Import File Name",
        holderbox = "file Name ...",
        default = ImportFileName,
        callback = function(starts)
            ImportFileName = starts
        end,
    })
    ImportMacroFileFromLink = "None"
    MacroImport:addTextbox({
        title = "Import Macro File From Link",
        holderbox = "Link File ...",
        default = ImportMacroFileFromLink,
        callback = function(starts)
            ImportMacroFileFromLink = starts
        end,
    })
    MacroImport:addButton({
        title = "Download Macro File",
        callback = function()
            if ImportFileName ~= "None" then
                UI:Notify({
                    title = "Notification",
                    text = "Import Macro : Not Have Import File Name"
                })
            end
            if ImportMacroFileFromLink ~= "None" then
                UI:Notify({
                    title = "Notification",
                    text = "Import Macro : Not Have Import Macro File From Link"
                })
            end
            if ImportFileName ~= "None" and ImportMacroFileFromLink ~= "None" then
                if isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(ImportFileName) .. ".json") then
                    UI:Notify({
                        title = "Notification",
                        text = "Import Macro : You Already Have This Macro Name"
                    })
                else
                    MacroFile = game:GetService("HttpService"):JSONDecode(game:HttpGet(ImportMacroFileFromLink))
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(ImportFileName) .. ".json", game:GetService("HttpService"):JSONEncode(MacroFile))
                    UI:Notify({
                        title = "Notification",
                        text = "Import Macro : Successful Create Macro " ..ImportFileName
                    })
                end
            end
        end,
    })
    ------------------------------------------------------ [[ Webhook ]] ------------------------------------------------------
    local color = (0 * 65536) + (255 * 256) + 255
    local Headers = {["content-type"] = "application/json"} -- Don't Modify
    local Time = os.date('!*t', OSTime);
    local args = { [1] = game:GetService("Players").LocalPlayer }
    PlayerData3 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))

    local TestData = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**HolyShz Webhook - Anime Last Stand**",
            ["description"] = "Player Name : ||**" ..game:GetService("Players").LocalPlayer.DisplayName.. " (" ..game:GetService("Players").LocalPlayer.Name.. ") ** ||\nLevel : ".. PlayerData3.Level .."[ " .. tostring(comma_value(string.format("%.2f",PlayerData3.EXP))) .. "/".. tostring(comma_value(string.format("%.2f",PlayerData3.MaxEXP))) .." ]",
                ["color"] = tonumber(0xDEECFF),
                ["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                ["fields"] = {
                    {
                        ["name"] = ":robot:** • -> Player Stats <- • **:robot:",
                        ["value"] = "\n" .. "<:emerald:1204766658397343805>" .. " Emeralds : ".. tostring(comma_value(string.format("%.2f",PlayerData3.Emeralds))) ..
                                    "\n" .. "<:Jewels:1264488608950124659>" .. " Jewels : ".. tostring(comma_value(PlayerData3.Jewels)) ..
                                    "\n" .. "<:gold:1217525743408648253>" .. " Gold : ".. tostring(comma_value(PlayerData3.Gold)) ..
                                    "\n" .. "<:rerolls:1216376860804382860>" .. " Reroll : ".. tostring(comma_value(PlayerData3.Rerolls)) ..
                                    "\n" .. "<:Shellss:1254264321408765972>" .. " Shells : ".. tostring(comma_value(PlayerData3.Shells)) ..
                                    "\n" .. "<:SoulCoin:1292024266107387966>" .. " Soul Coin : ".. tostring(comma_value(PlayerData3.SoulCoin))
                            ,
                        ["inline"] = false
                    },
                },
            },
        }
    }

    local TestData = game:GetService('HttpService'):JSONEncode(TestData)
    local HttpRequest = http_request or request or HttpPost or syn.request;
    function Remove_rbx(str)
        return str:match("(%d+)")
    end

    WebhookPage:addTextbox({
        title = "Webhook Url",
        holderbox = "Link Webhook ...",
        default = SaveSettings["Notifier"]["Webhook Url"],
        callback = function(starts)
            SaveSettings["Notifier"]["Webhook Url"] = starts
            Save()
        end,
    })
    WebhookPage:addButton({
        title = "Test Webhook",
        callback = function(v)
            HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=TestData, Method="POST", Headers=Headers})
        end
    })

    ItemsDatainfo = require(game:GetService("ReplicatedStorage").Modules.ItemInfo)
    local TableItemData = {"Demon Place Portal",}
    for i,v in pairs(ItemsDatainfo) do
        if i ~= "String" and i ~= "Valentines Portal" and i ~= "Tier 1" and i ~= "Tier 2" 
        and i ~= "Tier 3" and i ~= "Tier 4" and i ~= "Tier 5" then

            --Change_Item_Name --addNewItem  
            if i == "Energy" then i = "Energy" end
            if i == "SoulCoin" or i == "Soul Coin" then i = "Soul Coin" end
            if i == "Tokyo Incident" or i == "TokyoIncident" then i = "Tokyo Incident" end
            if i == "MonsterEssence" or i == "Monster Essence" then i = "Monster Essence" end
            if i == "ShinobiTokens" or i == "Shinobi Tokens" then i = "Shinobi Tokens" end
            if i == "BerserkCapsule" or i == "Black Swordsman Capsule" then i = "Black Swordsman Capsule" end
            if i == "Portal Tier 1" or i == "Tier 1" then i = "Portal Tier 1" end
            if i == "Portal Tier 2" or i == "Tier 2" then i = "Portal Tier 2" end
            if i == "Portal Tier 3" or i == "Tier 3" then i = "Portal Tier 3" end
            if i == "Portal Tier 4" or i == "Tier 4" then i = "Portal Tier 4" end
            if i == "Portal Tier 5" or i == "Tier 5" then i = "Portal Tier 5" end
            if i == "ValentinesPortal" or i == "Valentines Portal" then i = "Valentines Portal" end
            if i == "Demon Place Portal" or i == "DemonPlacePortal" or i == "DemonPlace" or i == "Demon Place" then i = "Demon Place Portal" end
            if i == "PerfectStatCube" or i == "Perfect Stat Cube" then i = "Perfect Stat Cube" end
            if i == "StatCube" or i == "Stat Cube" then i = "Stat Cube" end
            if i == "DemonCapsule" or i == "Demon Capsule" then i = "Demon Capsule" end
            if i == "Horn" then i = "Horn" end
            if i == "LightningHashiraCloak" or i == "Lightning Breathers Cloak" then i = "Water Breathers Cloak" end
            if i == "SunHashiraCloak" or i == "Sun Breathers Cloak" then i = "Water Breathers Cloak" end
            if i == "WaterHashiraCloak" or i == "Water Breathers Cloak" then i = "Water Breathers Cloak" end
            if i == "Clawed Gauntlet" or i == "ClawedGauntlet" then i = "Clawed Gauntlet" end
            if i == "Stained Bandage" or i == "StainedBandage" then i = "Stained Bandage" end
            if i == "Emperors Cloak" or i == "Emperor Cloak" then i = "Emperors Cloak" end
            if i == "SungDagger" or i == "Wolf Slayer" then i = "Wolf Slayer" end
            if i == "WishBall1" then i = "Wish Ball 1" end
            if i == "WishBall2" then i = "Wish Ball 2" end
            if i == "WishBall3" then i = "Wish Ball 3" end
            if i == "WishBall4" then i = "Wish Ball 4" end
            if i == "WishBall5" then i = "Wish Ball 5" end
            if i == "WishBall6" then i = "Wish Ball 6" end
            if i == "WishBall7" then i = "Wish Ball 7" end
            if i == "MSymbol" then i = "Mean Symbol" end
            if i == "RightEarring" then i = "Right Earring" end
            if i == "LeftEarring" then i = "Left Earring" end
            if i == "SixEyes" then i = "Six Eyes" end
            if i == "Tor Headband" then i = "Tor's Headband" end
            if i == "Tor Cloak" then i = "Tor's Cloak" end
            if i == "LamiCloud" then i = "Lami Cloud" end
            if i == "LamiStaff" then i = "Lami Staff" end
            if i == "SpiritShard" then i = "Spirit Shard" end
            if i == "ResetTree" then i = "Reset Tree" end
            if i == "Sukuna Finger" then i = "Cursed Finger" end
            if i == "Ulquiorra Sword" then i = "Ulquiorra's Sword" end
            if i == "StrawHat" then i = "Straw Hat" end
            if i == "LightSword" then i = "Light Sword" end
            if i == "Admiral Durag" then i = "Aokijis Cape" end
            if i == "Admiral Cape" then i = "Admiral Cape" end
            if i == "Birb" then i = "Bird" end
            if i == "String" then i = "Signing String" end
            if i == "Energy Core" then i = "Energy Core" end
            if i == "Devil Fruit" then i = "Demon Fruit" end
            --Spirit_Shard
            if i == "CommonSpiritShard" then i = "Common Spirit Shard" end
            if i == "RareSpiritShard" then i = "Rare Spirit Shard" end
            if i == "EpicSpiritShard" then i = "Epic Spirit Shard" end
            if i == "LegendarySpiritShard" then i = "Legendary Spirit Shard" end
            if i == "MythicSpiritShard" then i = "Mythic Spirit Shard" end
            --EXP_Item
            if i == "Tree Of Might Fruit" then i = "Tree Of Might Fruit" end
            if i == "Genos Core" or i == "Jenos Core" then i = "Genos Core" end
            if i == "GenosLeftArm" or i == "JenosLeftArm" then i = "Genos Left Arm" end
            if i == "GenosRightArm" or i == "JenosRightArm" then i = "Genos Right Arm" end
            if i == "Genos Left Arm" or i == "Jenos Left Arm" then i = "Genos Left Arm" end
            if i == "Genos Right Arm" or i == "Jenos Right Arm" then i = "Genos Right Arm" end
            if i == "Curse Talisman" then i = "Curse Talisman" end
            if i == "Ghoul Coffee" then i = "Ghoul Coffee" end
            if i == "Capsule Corp Capsule" then i = "Capsule Corp Capsule" end
            if i == "Ramen" then i = "Ramen" end
            if i == "Yokai Meat" then i = "Yokai Meat" end
            if i == "Senzu Bean" then i = "Super Bean" end
        
            table.insert(TableItemData,tostring(i))
        end
    end

    WebhookPage:addMulitDropdown({
        title = "Select Item",
        list = TableItemData, 
        default = SaveSettings["Notifier"]['Select Item'],
        callback = function(v)
            SaveSettings["Notifier"]['Select Item'] = v
            Save()
        end;
    })

    WebhookPage:addToggle({
        title = "Send Item Counts [Select Item]",
        default = SaveSettings["Notifier"]["Send All Item"] ,
        callback = function(v)
            SaveSettings["Notifier"]["Send All Item"] = v
            Save()
        end ,
    })

    PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
    local TableUnitSlotData = {}
    if not (PlayerDataKills['Slots']) then
        print("Can't Load Slots")
    else
        for i,v in pairs(PlayerDataKills['Slots']) do
            table.insert(TableUnitSlotData,tostring(i))
        end
    end
    WebhookPage:addMulitDropdown({
        title = "Select Unit Kills",
        list = TableUnitSlotData, 
        default = SaveSettings["Notifier"]['Select Unit'],
        callback = function(v)
            SaveSettings["Notifier"]['Select Unit'] = v
            Save()
        end;
    })

    WebhookPage:addToggle({
        title = "Send Unit Kills [Select Unit]",
        default = SaveSettings["Notifier"]["Send Unit Kills"] ,
        callback = function(v)
            SaveSettings["Notifier"]["Send Unit Kills"] = v
            Save()
        end ,
    })
    
    WebhookPage:addToggle({
        title = "Enable Webhook [Send After End Game]",
        default = SaveSettings["Notifier"]["Send After End Game"] ,
        callback = function(v)
            SaveSettings["Notifier"]["Send After End Game"] = v
            Save()
        end ,
    })

    spawn(function()
        while wait() do
            if SaveSettings["Notifier"]["Webhook Url"] == "nil" then return end
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('EndGameUI') and SaveSettings["Notifier"]["Send After End Game"] == true then
                local args = { [1] = game:GetService("Players").LocalPlayer }
                PlayerData2 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
                MapDataInfo = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()
                TableDataDrop = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                TableDataEXPDrop = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()

                --Reroll
                if game.Players:FindFirstChild("LocalPlayer") then
                    RerollNew2 = PlayerData2.Rerolls
                end
                --Raids Token
                if game.Players:FindFirstChild("LocalPlayer") then
                    RaidtokenNew2 = PlayerData2.RaidTokens
                end
                if tostring(MapDataInfo.Type) == "Challenge" then
                    GameMode = tostring(MapDataInfo.Type) .. " - " .. tostring(MapDataInfo.Challenge)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "Portal" then
                    GameMode = tostring(MapDataInfo.Type) .. " - " .. tostring(MapDataInfo.Challenge)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Tier " .. tostring(MapDataInfo.Tier) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "Story" then
                    GameMode = tostring(MapDataInfo.Type)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "Raids" then
                    GameMode = tostring(MapDataInfo.Type)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "InfiniteCastle" then
                    GameMode = tostring(MapDataInfo.Type) .. " (Room " .. tostring(MapDataInfo.Room) .. ")"
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                else
                    GameMode = tostring(MapDataInfo.Type)
                    MapInfo = tostring(MapDataInfo.MapName) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                end

                local CountAmount = 1
                local TextDropLabel = ""
                local Table_Items_Drops = {}

                --Curencly
                if (TableDataDrop.Emeralds - EmeraldsOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Emeralds + " .. comma_value(TableDataDrop.Emeralds - EmeraldsOld) .. " [Total : " .. comma_value(TableDataDrop.Emeralds) .."] <:emerald:1204766658397343805>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop.Jewels - JewelsOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Jewels + " .. comma_value(TableDataDrop.Jewels - JewelsOld) .. " [Total : " .. comma_value(TableDataDrop.Jewels) .."] <:Jewels:1264488608950124659>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop.Shells - ShellsOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Shells + " .. comma_value(TableDataDrop.Shells - ShellsOld) .. " [Total : " .. comma_value(TableDataDrop.Shells) .."] <:Shellss:1254264321408765972>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop.Rerolls - RerollsOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Rerolls + " .. comma_value(TableDataDrop.Rerolls - RerollsOld) .. " [Total : " .. comma_value(TableDataDrop.Rerolls) .."] <:rerolls:1216376860804382860>\n"
                    CountAmount = CountAmount + 1
                end
                --EventCoins
                if (TableDataDrop.SoulCoin - SoulCoinOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Soul Coin + " .. comma_value(TableDataDrop.SoulCoin - SoulCoinOld) .. " [Total : " .. comma_value(TableDataDrop.SoulCoin) .."] <:SoulCoin:1292024266107387966>\n"
                    CountAmount = CountAmount + 1
                end
                --RaidTokens
                if (TableDataDrop.RaidTokens - RaidTokensOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Raid Tokens + " .. comma_value(TableDataDrop.RaidTokens - RaidTokensOld) .. " [Total : " .. comma_value(TableDataDrop.RaidTokens) .."] <:rt:1225071926427254936>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop.ShinobiTokens - ShinobiTokensOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Shinobi Tokens + " .. comma_value(TableDataDrop.ShinobiTokens - ShinobiTokensOld) .. " [Total : " .. comma_value(TableDataDrop.ShinobiTokens) .."] <:SB:1256681321049227304>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop.SoulTokens - SoulTokensOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Soul Tokens + " .. comma_value(TableDataDrop.SoulTokens - SoulTokensOld) .. " [Total : " .. comma_value(TableDataDrop.SoulTokens) .."] <:SoulToken:1295157628015738880>\n"
                    CountAmount = CountAmount + 1
                end
                --item
                if (TableDataDrop['ItemData']['PerfectStatCube']['Amount'] - PerfectStatCubeOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Perfect StatCube + " .. comma_value(TableDataDrop['ItemData']['PerfectStatCube']['Amount'] - PerfectStatCubeOld) .. " [Total : " .. comma_value(TableDataDrop['ItemData']['PerfectStatCube']['Amount']) .."] <:PerfectStatCube:1249950846389846096>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop['ItemData']['StatCube']['Amount'] - StatCubeOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". StatCube + " .. comma_value(TableDataDrop['ItemData']['StatCube']['Amount'] - StatCubeOld) .. " [Total : " .. comma_value(TableDataDrop['ItemData']['StatCube']['Amount']) .."] <:StatCube:1249950849367670864>\n"
                    CountAmount = CountAmount + 1
                end

                --Capsule
                if (TableDataDrop['ItemData']['BerserkCapsule']['Amount'] - BerserkCapsuleOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Berserk Capsule + " .. comma_value(TableDataDrop['ItemData']['BerserkCapsule']['Amount'] - BerserkCapsuleOld) .. " [Total : " .. comma_value(TableDataDrop['ItemData']['BerserkCapsule']['Amount']) .."] <:BlackSwordsmanCapsule:1253029340955017368>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop['ItemData']['DemonCapsule']['Amount'] - DemonCapsuleOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Demon Capsule + " .. comma_value(TableDataDrop['ItemData']['DemonCapsule']['Amount'] - DemonCapsuleOld) .. " [Total : " .. comma_value(TableDataDrop['ItemData']['DemonCapsule']['Amount']) .."] <:DemonCapsule:1249950843004915732>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop['ItemData']['SummerCapsule']['Amount'] - SummerCapsuleOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Summer Capsule + " .. comma_value(TableDataDrop['ItemData']['SummerCapsule']['Amount'] - SummerCapsuleOld) .. " [Total : " .. comma_value(TableDataDrop['ItemData']['SummerCapsule']['Amount']) .."] <:SummerCapsule:1294778268515307671>\n"
                    CountAmount = CountAmount + 1
                end
                if (TableDataDrop['ItemData']['SlimeCapsule']['Amount'] - SlimeCapsuleOld) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Slime Capsule + " .. comma_value(TableDataDrop['ItemData']['SlimeCapsule']['Amount'] - SlimeCapsuleOld) .. " [Total : " .. comma_value(TableDataDrop['ItemData']['SlimeCapsule']['Amount']) .."] <:SlimeCapsule:1294778266271617115>\n"
                    CountAmount = CountAmount + 1
                end

                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Container.Rewards.Holder:GetChildren()) do
                    if v.Name ~= "UIPadding" and v.Name ~= "UIListLayout" and v.Name ~= "Emeralds" and v.Name ~= "Jewels" and v.Name ~= "RaidTokens"
                    and v.Name ~= "ShinobiTokens" and v.Name ~= "Shells" and v.Name ~= "SoulCoin" and v.Name ~= "Rerolls"  and v.Name ~= "PerfectStatCube" 
                    and v.Name ~= "StatCube" and v.Name ~= "SoulTokens" then
                        
                    
                        if v.Name == "EXP" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. "  :sparkles:" .. "\n"
                            CountAmount = CountAmount + 1

                        --Unit_Logo1  addUnit
                        elseif v.Name == "HeavenlyChad" or v.Name == "HeavenlyChad (Jotaro OH)" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:JotaroOH:1231422389766717442>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Drip Nami" or v.Name == "Drip Zami" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:DripZami:1231420403847663668>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Red Pirate (Young)" or v.Name == "Red Pirate (Young) (Shanks)" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:YS1:1226869137813536808>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Golden Admiral" or v.Name == "Sengoku" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:SenGoku:1231422392446746765>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Gerp" or v.Name == "Garp" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:GARP:1229479636409520199>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Shiny Wish Dragon" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:WishDragon:1231478817743310889>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Strongest Aline" or v.Name == "Boros" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:BorosModel:1236448885480624139>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "NoobSung" or v.Name == "Sunwoo" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:NoobSung:1236833612666769509>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Baruka" or v.Name == "Ice Elf Emperor" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Baruka:1242041207908204646>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Butterfly Breather" or v.Name == "ButterflyBreather" or v.Name == "Shinobu" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:ButterflyBreathernobg:1248546596799516673>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Akaza" or v.Name == "Demon moon guy" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Akaza:1250354426820956190>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "RengokuEvo" or v.Name == "Flame swordsman" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Rengoku:1250354429836787803>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Griffith" or v.Name == "The Umbral Prince" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:griffith:1253029344985481336>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Pain" or v.Name == "Almighty Ninja" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Pain:1256681621394948188>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Captain Isao" or v.Name == "Director-General" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Shinomiya:1261523440578592799>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "IchigoFalseBankai" or v.Name == "Ichiko (Fullbring Kai)" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:IchikoFullbringKai:1294398533130125322>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Pucci White Snake" or v.Name == "Poche (Pale Snake)" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:PochePaleSnake:1294398538763079760>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Meliodas" or v.Name == "Wrath" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:DemonSin:1294398529560903721>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Aizen" or v.Name == "Aisen" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Aisen:1294398527312756736>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Johnny (Tusk 1-3)" or v.Name == "Johnny (Tusk 1-3)" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:Johnny_29:1294398536464465960>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Aisen (Final Orb)" or v.Name == "Aizen_Hollow" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + 1 <:AisenFinalOrb:1295174955629285426>\n"
                            CountAmount = CountAmount + 1
                            
                        --Portals addPortal
                        elseif v.Name == "Tier 1" or v.Name == "Tier 1 Portal" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Tier1:1236448928711442572>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tier 2" or v.Name == "Tier 2 Portal" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Tier2:1236448930506739802>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tier 3" or v.Name == "Tier 3 Portal" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Tier3:1236448932465213572>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tier 4" or v.Name == "Tier 4 Portal" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Tier4:1236449151273930752>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tier 5" or v.Name == "Tier 5 Portal" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Tier5:1236448937301512293>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Valentines Portal" or v.Name == "Valentines Portal" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Valentine:1236448940094783568>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "DemonPlacePortal" or v.Name == "Demon Place Portal" or v.Name == "DemonPlace" or v.Name == "Demon Place" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:DemonPlace:1250009846963503145>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "AlienCitadel" or v.Name == "Alien Citadel" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:DemonPlace:1250009846963503145>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "UnderworldDimension" or v.Name == "Underworld Dimension" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:DemonPlace:1250009846963503145>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tropical Paradise" or v.Name == "Tropical Paradise" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:TPortal:1254256944428880104>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "TokyoIncident" or v.Name == "Tokyo Incident" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:Valentine:1254256944428880104>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "SoulSociety(Invaded)" or v.Name == "Soul Society (Invaded)" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:SSS:1295197014300299338>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Inner Dimension" or v.Name == "InnerDimension" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:InnerPortal:1295197010126700575>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Soul King Palace" or v.Name == "SoulKingPalace" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Name .. " + 1  <:SoulKingPortal:1295197012307738654>\n"
                            CountAmount = CountAmount + 1

                        --Item_Logoa --addNewItem 
                        elseif v.Name == "Hogoyoku" or v.Name == "Crumbling Orb" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Hogoyoku']['Amount']) .. "] <:CrumblingOrb:1295553669705760838>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Escanor_Evo_Item" or v.Name == "Full Day Axe" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Escanor_Evo_Item']['Amount']) .. "] <:FullDayAxe:1294399155069780101>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Meliodas_Evo_Item" or v.Name == "Wrath Dagger" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Meliodas_Evo_Item']['Amount']) .. "] <:WrathDagger:1294399161784860722>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "King_Evo_Item" or v.Name == "Fairy Spear" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['King_Evo_Item']['Amount']) .. "] <:FairySpear:1294399152645472397>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ulquiorra_Evo_Item" or v.Name == "Hollowed Wings" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Ulquiorra_Evo_Item']['Amount']) .. "] <:HollowedWings:1294399157217267742>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Aizen_Evo_Item" or v.Name == "Hollow Robe" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Aizen_Evo_Item']['Amount']) .. "] <:HollowRobe:1294399159767535666>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "NatureEssence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['NatureEssence']['Amount']) .. "] <:Nature_Essence:1294399775684300980>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "FireEssence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['FireEssence']['Amount']) .. "] <:Fire_Essence:1294399771292991550>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "DarkEssence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['DarkEssence']['Amount']) .. "] <:Dark_Essence:1294399769262948433>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WaterEssence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WaterEssence']['Amount']) .. "] <:Water_Essence:1294399788095111248>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LightEssence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['LightEssence']['Amount']) .. "] <:Light_Essence:1294399773792665811>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Time Essence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Time Essence']['Amount']) .. "] <:TimeEssence:1294399780637769812>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "CursedEssence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['CursedEssence']['Amount']) .. "] <:Cursed_Essence:1294399767165796525>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "SoulCandy" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['SoulCandy']['Amount']) .. "] <:Soul_Candy:1294399778070986832>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Energy" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Energy']['Amount']) .. "] <:Energy:1292404604981608571>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "MonsterEssence" or v.Name == "Monster Essence" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['MonsterEssence']['Amount']) .. "] <:MonEssen:1259222118068125858>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Horn" or v.Name == "Horn" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Horn']['Amount']) .. "] <:Horn:1249832443251523655>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WaterHashiraCloak" or v.Name == "Water Breathers Cloak" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WaterHashiraCloak']['Amount']) .. "] <:WBC:1248709221189681202>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LightningHashiraCloak" or v.Name == "Lightning Breathers Cloak" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['LightningHashiraCloak']['Amount']) .. "] <:LbC:1248639008553308211>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "SunHashiraCloak" or v.Name == "Sun Breathers Cloak" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['SunHashiraCloak']['Amount']) .. "] <:SBC:1248639010977349653>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Stained Bandage" or v.Name == "StainedBandage" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Bandage']['Amount']) .. "] <:StainedBandage:1239483199474896906>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Clawed Gauntlet" or v.Name == "ClawedGauntlet" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Clawed Gauntlet']['Amount']) .. "] <:ClawedGauntlet:1239483197419552789>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Emperor Cloak" or v.Name == "Emperors Cloak" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Emperor Cloak']['Amount']) .. "] <:EmperorCloak:1237257884765786132>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "SungDagger" or v.Name == "Wolf Slayer" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['SungDagger']['Amount']) .. "] <:SungDagger:1236834009082888192>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall1" or v.Name == "Wish Ball 1" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall1']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall2" or v.Name == "Wish Ball 2" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall2']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall3" or v.Name == "Wish Ball 3" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall3']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall4" or v.Name == "Wish Ball 4" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall4']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall5" or v.Name == "Wish Ball 5" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall5']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall6" or v.Name == "Wish Ball 6" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall6']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "WishBall7" or v.Name == "Wish Ball 7" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['WishBall7']['Amount']) .. "] <:Wish_Balls:1227137580785602671>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "MSymbol" or v.Name == "Mean Symbol" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['MSymbol']['Amount']) .. "] <:Mean_Symbol:1227137443984310333>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "RightEarring" or v.Name == "Right Earring" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['RightEarring']['Amount']) .. "] <:Earrings:1227137412103147532>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LeftEarring" or v.Name == "Left Earring" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['LeftEarring']['Amount']) .. "] <:Earrings:1227137412103147532>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "SixEyes" or v.Name == "Six Eyes" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['SixEyes']['Amount']) .. "] <:Six_Eye:1227137469770764319>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tor Headband" or v.Name == "Tor's Headband" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Tor Headband']['Amount']) .. "] <:Tors_Headband:1227137526213640223>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tor Cloak" or v.Name == "Tor's Cloak" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Tor Cloak']['Amount']) .. "] <:Tors_Cloak:1227137511650758668>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LamiCloud" or v.Name == "Lami Cloud" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['LamiCloud']['Amount']) .. "] <:Zami_Cloud:1227137595981430784>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LamiStaff" or v.Name == "Lami Staff" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['LamiStaff']['Amount']) .. "] <:Zami_Staff:1227137615418101760>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "ResetTree" or v.Name == "Reset Tree" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['ResetTree']['Amount']) .. "] <:Reset_Tree:1227137457028337675>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Sukuna Finger" or v.Name == "Cursed Finger" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Sukuna Finger']['Amount']) .. "] <:Sukuna_Finger:1227137497713086495>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ulquiorra Sword" or v.Name == "Ulquiorra's Sword" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Ulquiorra Sword']['Amount']) .. "] <:Ulmiorra_Blade:1227137541116002334>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ulquiorra Spear" or v.Name == "Ulquiorra's Spear" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Ulquiorra Spear']['Amount']) .. "] <:Ulq_spear:1227137562305363998>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Halo" or v.Name == "Halo" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Halo']['Amount']) .. "] <:Halo:1227137426691063848>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "StrawHat" or v.Name == "Straw Hat" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['StrawHat']['Amount']) .. "] <:StrawHat3:1227143233600225321>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Candy" or v.Name == "Candy" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Candy']['Amount']) .. "] <:Candy:1227137395686899723>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LightSword" or v.Name == "Light Sword" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Light Sword']['Amount']) .. "] <:LightSword:1229479699995033682>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Admiral Durag" or v.Name == "Aokijis Cape" or v.Name == "Aokijis Cap" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Aokijis Cap']['Amount']) .. "] <:AokijisCape:1229479695058341948>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Admiral Cape" or v.Name == "Admiral Cape" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Admiral Cape']['Amount']) .. "] <:AdmiralCape:1229479692659200020>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Birb" or v.Name == "Bird" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Birb']['Amount']) .. "] <:Bird:1229479697092448430>\n"
                            CountAmount = CountAmount + 1
                        --Spirit_Shard
                        elseif v.Name == "CommonSpiritShard" or v.Name == "Common Spirit Shard" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['CommonSpiritShard']['Amount']) .. "] <:CommonSpiritShard:1292539877329469460>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "RareSpiritShard" or v.Name == "Rare Spirit Shard" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['RareSpiritShard']['Amount']) .. "] <:RareSpiritShard:1292539886942818395>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "EpicSpiritShard" or v.Name == "Epic Spirit Shard" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['EpicSpiritShard']['Amount']) .. "] <:EpicSpiritShard:1292539879401586818>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "LegendarySpiritShard" or v.Name == "Legendary Spirit Shard" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['LegendarySpiritShard']['Amount']) .. "] <:LegendarySpiritShards:1292539882211905647>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "MythicSpiritShard" or v.Name == "Mythic Spirit Shard" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['MythicSpiritShard']['Amount']) .. "] <:MythicSpiritShard:1292539884376162376>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Genos Core" or v.Name == "Jenos Core" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Genos Core']['Amount']) .. "] <:GenosCore:1232486949143711897>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "GenosLeftArm" or v.Name == "JenosLeftArm" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['GenosLeftArm']['Amount']) .. "] <:GenosLeftArm:1236448905231728751>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "GenosRightArm" or v.Name == "JenosRightArm" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['GenosRightArm']['Amount']) .. "] <:GenosRightArm:1236448907576344616>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Genos Left Arm" or v.Name == "Jenos Left Arm" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['GenosLeftArm']['Amount']) .. "] <:GenosLeftArm:1236448905231728751>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Genos Right Arm" or v.Name == "Jenos Right Arm" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['GenosRightArm']['Amount']) .. "] <:GenosRightArm:1236448907576344616>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ninja Headband" or v.Name == "Ninja Headband" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + ".. v.Amount.Text .. " [Total : " .. comma_value(TableDataDrop['ItemData']['Ninja Headband']['Amount']) .. "] <:NinjaHeadband:1236448916619137105>\n"
                            CountAmount = CountAmount + 1
                        --EXP_ITEM
                        elseif v.Name == "Devil Fruit" or v.Name == "Demon Fruit" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Devil Fruit']['Amount']) .. "] <:DemonFruit:1236448899158507551>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Tree Of Might Fruit" or v.Name == "Tree Of Might Fruit" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Tree Of Might Fruit']['Amount']) .. "] <:ThreeOfMightFruit:1236448926845112382>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Curse Talisman" or v.Name == "Curse Talisman" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Curse Talisman']['Amount']) .. "] <:CurseTalisman:1236448896885063740>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ghoul Coffee" or v.Name == "Ghoul Coffee" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Ghoul Coffee']['Amount']) .. "] <:GhoulCoffee:1236448909644271777>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ramen" or v.Name == "Ramen" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Ramen']['Amount']) .. "] <:Ramen:1236449378722517003>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Yokai Meat" or v.Name == "Yokai Meat" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Yokai Meat']['Amount']) .. "] <:YokaiMeat1:1236448942372290614>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Senzu Bean" or v.Name == "Super Bean" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Senzu Bean']['Amount']) .. "] <:SuperBean:1236448925066723398>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Energy Core" or v.Name == "Energy Core" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. " [Total : " .. comma_value(TableDataEXPDrop['ExperienceItemsData']['Energy Core']['Amount']) .. "] <:EnergyCore:1236448903231180840>\n"
                            CountAmount = CountAmount + 1
                        else
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Name .. " + " .. v.Amount.Text .. "  :scales:\n"
                            CountAmount = CountAmount + 1
                        end
                    end
                end

                if TextDropLabel == ""  then
                    TextDropLabel = ":red_circle: Not Have Items Drops :red_circle:"
                end

                --Item_All
                local CountAmountAll = 1
                local TextDropLabelAll = ""
                local AllTextItemLogo = ""
                if SaveSettings["Notifier"]["Send All Item"] then

                    --Normal_Item
                    TableData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i,v in pairs(TableData['ItemData']) do
                        
                        --Change_Item_Name --addNewItem
                        if v.ItemName == "Energy" then v.ItemName = "Energy" end
                        if v.ItemName == "MonsterEssence" or v.ItemName == "Monster Essence" then v.ItemName = "Monster Essence" end
                        if v.ItemName == "BerserkCapsule" or v.ItemName == "Black Swordsman Capsule" then v.ItemName = "Black Swordsman Capsule" end
                        if v.ItemName == "DemonPlacePortal" or v.ItemName == "Demon Place Portal" or v.ItemName == "DemonPlace" or v.ItemName == "Demon Place" then v.ItemName = "Demon Place Portal" end
                        if v.ItemName == "PerfectStatCube" or v.ItemName == "Perfect Stat Cube" then v.ItemName = "Perfect Stat Cube" end
                        if v.ItemName == "StatCube" or v.ItemName == "Stat Cube" then v.ItemName = "Stat Cube" end
                        if v.ItemName == "DemonCapsule" or v.ItemName == "Demon Capsule" then v.ItemName = "Demon Capsule" end
                        if v.ItemName == "Horn" then v.ItemName = "Horn" end
                        if v.ItemName == "WaterHashiraCloak" or v.ItemName == "Water Breathers Cloak" then v.ItemName = "Water Breathers Cloak" end
                        if v.ItemName == "LightningHashiraCloak" or v.ItemName == "Lightning Breathers Cloak" then v.ItemName = "Lightning Breathers Cloak" end
                        if v.ItemName == "SunHashiraCloak" or v.ItemName == "Sun Breathers Cloak" then v.ItemName = "Sun Breathers Cloak" end
                        if v.ItemName == "Clawed Gauntlet" or v.ItemName == "ClawedGauntlet" then v.ItemName = "Clawed Gauntlet" end
                        if v.ItemName == "Stained Bandage" or v.ItemName == "StainedBandage" then v.ItemName = "Stained Bandage" end
                        if v.ItemName == "Emperor Cloak" or v.ItemName == "Emperors Cloak" then v.ItemName = "Emperors Cloak" end
                        if v.ItemName == "SungDagger" or v.ItemName == "Wolf Slayer" then v.ItemName = "Wolf Slayer" end
                        if v.ItemName == "WishBall1" then v.ItemName = "Wish Ball 1" end
                        if v.ItemName == "WishBall2" then v.ItemName = "Wish Ball 2" end
                        if v.ItemName == "WishBall3" then v.ItemName = "Wish Ball 3" end
                        if v.ItemName == "WishBall4" then v.ItemName = "Wish Ball 4" end
                        if v.ItemName == "WishBall5" then v.ItemName = "Wish Ball 5" end
                        if v.ItemName == "WishBall6" then v.ItemName = "Wish Ball 6" end
                        if v.ItemName == "WishBall7" then v.ItemName = "Wish Ball 7" end
                        if v.ItemName == "MSymbol" then v.ItemName = "Mean Symbol" end
                        if v.ItemName == "RightEarring" then v.ItemName = "Right Earring" end
                        if v.ItemName == "LeftEarring" then v.ItemName = "Left Earring" end
                        if v.ItemName == "SixEyes" then v.ItemName = "Six Eyes" end
                        if v.ItemName == "Tor Headband" then v.ItemName = "Tor's Headband" end
                        if v.ItemName == "Tor Cloak" then v.ItemName = "Tor's Cloak" end
                        if v.ItemName == "LamiCloud" then v.ItemName = "Lami Cloud" end
                        if v.ItemName == "LamiStaff" then v.ItemName = "Lami Staff" end
                        if v.ItemName == "SpiritShard" then v.ItemName = "Spirit Shard" end
                        if v.ItemName == "ResetTree" then v.ItemName = "Reset Tree" end
                        if v.ItemName == "Sukuna Finger" then v.ItemName = "Cursed Finger" end
                        if v.ItemName == "Ulquiorra Sword" then v.ItemName = "Ulquiorra's Sword" end
                        if v.ItemName == "StrawHat" then v.ItemName = "Straw Hat" end
                        if v.ItemName == "LightSword" then v.ItemName = "Light Sword" end
                        if v.ItemName == "Admiral Durag" then v.ItemName = "Aokijis Cape" end
                        if v.ItemName == "Admiral Cape" then v.ItemName = "Admiral Cape" end
                        if v.ItemName == "Birb" then v.ItemName = "Bird" end
                        if v.ItemName == "String" then v.ItemName = "Signing String" end
                        --Spirit_Shard
                        if v.ItemName == "CommonSpiritShard" then v.ItemName = "Common Spirit Shard" end
                        if v.ItemName == "RareSpiritShard" then v.ItemName = "Rare Spirit Shard" end
                        if v.ItemName == "EpicSpiritShard" then v.ItemName = "Epic Spirit Shard" end
                        if v.ItemName == "LegendarySpiritShard" then v.ItemName = "Legendary Spirit Shard" end
                        if v.ItemName == "MythicSpiritShard" then v.ItemName = "Mythic Spirit Shard" end

                        if table.find(SaveSettings["Notifier"]['Select Item'],tostring(i)) or table.find(SaveSettings["Notifier"]['Select Item'],tostring(v.ItemName)) then
                            --addNewItem
                            if v.ItemName == "WishBall1" or v.ItemName == "Wish Ball 1" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WishBall2" or v.ItemName == "Wish Ball 2" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WishBall3" or v.ItemName == "Wish Ball 3" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WishBall4" or v.ItemName == "Wish Ball 4" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WishBall5" or v.ItemName == "Wish Ball 5" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WishBall6" or v.ItemName == "Wish Ball 6" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WishBall7" or v.ItemName == "Wish Ball 7" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Wish_Balls:1227137580785602671>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "MSymbol" or v.ItemName == "Mean Symbol" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Mean_Symbol:1227137443984310333>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "RightEarring" or v.ItemName == "Right Earring" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Earrings:1227137412103147532>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "LeftEarring" or v.ItemName == "Left Earring" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Earrings:1227137412103147532>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "SixEyes" or v.ItemName == "Six Eyes" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Six_Eye:1227137469770764319>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Tor Headband" or v.ItemName == "Tor's Headband" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Tors_Headband:1227137526213640223>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Tor Cloak" or v.ItemName == "Tor's Cloak" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Tors_Cloak:1227137511650758668>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "LamiCloud" or v.ItemName == "Lami Cloud" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Zami_Cloud:1227137595981430784>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "LamiStaff" or v.ItemName == "Lami Staff" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Zami_Staff:1227137615418101760>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "SpiritShard" or v.ItemName == "Spirit Shard" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Spirit_Shard:1227137483460972655>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "ResetTree" or v.ItemName == "Reset Tree" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Reset_Tree:1227137457028337675>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Sukuna Finger" or v.ItemName == "Cursed Finger" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Sukuna_Finger:1227137497713086495>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Ulquiorra Sword" or v.ItemName == "Ulquiorra's Sword" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Ulmiorra_Blade:1227137541116002334>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Ulquiorra Spear" or v.ItemName == "Ulquiorra's Spear" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Ulq_spear:1227137562305363998>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Halo" or v.ItemName == "Halo" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Halo:1227137426691063848>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "StrawHat" or v.ItemName == "Straw Hat" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:StrawHat3:1227143233600225321>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Candy" or v.ItemName == "Candy" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Candy:1227137395686899723>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "LightSword" or v.ItemName == "Light Sword" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:LightSword:1229479699995033682>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Admiral Durag" or v.ItemName == "Aokijis Cape" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:AokijisCape:1229479695058341948>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Admiral Cape" or v.ItemName == "Admiral Cape" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:AdmiralCape:1229479692659200020>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Birb" or v.ItemName == "Bird" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Bird:1229479697092448430>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Genos Core" or v.ItemName == "Jenos Core" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:GenosCore:1232486949143711897>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "GenosLeftArm" or v.ItemName == "JenosLeftArm" or v.ItemName == "Genos Left Arm" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:GenosLeftArm:1236448905231728751>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "GenosRightArm" or v.ItemName == "JenosRightArm" or v.ItemName == "Genos Right Arm" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:GenosRightArm:1236448907576344616>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Genos Left Arm" or v.ItemName == "Jenos Left Arm" or v.ItemName == "Genos Left Arm" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:GenosLeftArm:1236448905231728751>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Genos Right Arm" or v.ItemName == "Jenos Right Arm" or v.ItemName == "Genos Right Arm" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:GenosRightArm:1236448907576344616>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "SungDagger" or v.ItemName == "Wolf Slayer" or v.ItemName == "Wolf Slayer" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:SungDagger:1236834009082888192>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Emperors Cloak" or v.ItemName == "Emperors Cloak" or v.ItemName == "Emperors Cloak" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:EmperorCloak:1237257884765786132>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Stained Bandage" or v.ItemName == "StainedBandage" or v.ItemName == "Stained Bandage's" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:StainedBandage:1239483199474896906>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Clawed Gauntlet" or v.ItemName == "ClawedGauntlet" or v.ItemName == "Clawed Gauntlet's" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:ClawedGauntlet:1239483197419552789>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "WaterHashiraCloak" or v.ItemName == "Water Breathers Cloak" or v.ItemName == "Water Breathers Cloak" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:WBC:1248709221189681202>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "LightningHashiraCloak" or v.ItemName == "Lightning Breathers Cloak" or v.ItemName == "Lightning Breathers Cloak" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:LbC:1248639008553308211>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "SunHashiraCloak" or v.ItemName == "Sun Breathers Cloak" or v.ItemName == "Sun Breathers Cloak" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:SBC:1248639010977349653>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Horn" or v.ItemName == "Horn" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Horn:1249832443251523655>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "PerfectStatCube" or v.ItemName == "Perfect Stat Cube" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:PerfectStatCube:1249950846389846096>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "StatCube" or v.ItemName == "Stat Cube" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:StatCube:1249950849367670864>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "DemonCapsule" or v.ItemName == "Demon Capsule" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:DemonCapsule:1249950843004915732>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "DemonPlacePortal" or v.ItemName == "Demon Place Portal" or v.ItemName == "DemonPlace" or v.ItemName == "Demon Place" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:DemonPlace:1250009846963503145>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "BerserkCapsule" or v.ItemName == "Black Swordsman Capsule" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:BlackSwordsmanCapsule:1253029340955017368>\n"
                                CountAmountAll = CountAmountAll + 1
                            --Spirit_Shard 
                            elseif v.ItemName == "CommonSpiritShard" or v.ItemName == "Common Spirit Shard" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:CommonSpiritShard:1232486716288405624>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "RareSpiritShard" or v.ItemName == "Rare Spirit Shard" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:RareSpiritShard:1236448922906525746>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "EpicSpiritShard" or v.ItemName == "Epic Spirit Shard" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:EpicSpiritShard:1232486718209523784>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "LegendarySpiritShard" or v.ItemName == "Legendary Spirit Shard" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:LegendarySpiritShard:1236448912454455367>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "MythicSpiritShard" or v.ItemName == "Mythic Spirit Shard" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:MythicSpiritShard:1236448914660524085>\n"
                                CountAmountAll = CountAmountAll + 1
                            else
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  :anger:\n"
                                CountAmountAll = CountAmountAll + 1
                            end
                        end
                    end
                    --Portal_Item
                    TableDataEXP = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i,v in pairs(TableDataEXP['PortalData']) do
                        if v['PortalName'] then
                            --Portal_Item --addNewItem
                            if v.PortalName == "Portal Tier 1" or v.PortalName == "Tier 1" then v.PortalName = "Portal Tier 1" end
                            if v.PortalName == "Portal Tier 2" or v.PortalName == "Tier 2" then v.PortalName = "Portal Tier 2" end
                            if v.PortalName == "Portal Tier 3" or v.PortalName == "Tier 3" then v.PortalName = "Portal Tier 3" end
                            if v.PortalName == "Portal Tier 4" or v.PortalName == "Tier 4" then v.PortalName = "Portal Tier 4" end
                            if v.PortalName == "Portal Tier 5" or v.PortalName == "Tier 5" then v.PortalName = "Portal Tier 5" end
                            if v.PortalName == "ValentinesPortal" or v.PortalName == "Valentines Portal" then v.PortalName = "Valentines Portal" end
                            if v.PortalName == "Demon Place Portal" or v.PortalName == "DemonPlacePortal" or v.PortalName == "DemonPlace" or v.PortalName == "Demon Place" then v.PortalName = "Demon Place Portal" end
                            if v.PortalName == "AlienCitadel" or v.PortalName == "Alien Citadel" then v.PortalName = "Alien Citadel" end
                            if v.PortalName == "UnderworldDimension" or v.PortalName == "Underworld Dimension" or v.PortalName == "Underworld Secret Portal" then v.PortalName = "Underworld Dimension" end
                            if v.PortalName == "Tokyo Incident" or v.PortalName == "TokyoIncident" then v.PortalName = "Tokyo Incident" end
                            if v.PortalName == "Tropical Paradise" or v.PortalName == "TropicalParadise" then v.PortalName = "Tropical Paradise" end

                            if table.find(SaveSettings["Notifier"]['Select Item'],tostring(i)) or table.find(SaveSettings["Notifier"]['Select Item'],tostring(v.PortalName)) then
                                --Portal_Item --addNewItem
                                if v.PortalName == "Portal Tier 1" or v.PortalName == "Tier 1" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Portal Tier 1 <:Tier1:1236448928711442572>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "Portal Tier 2" or v.PortalName == "Tier 2" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Portal Tier 2 <:Tier2:1236448930506739802>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "Portal Tier 3" or v.PortalName == "Tier 3" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Portal Tier 3 <:Tier3:1236448932465213572>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "Portal Tier 4" or v.PortalName == "Tier 4" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Portal Tier 4 <:Tier4:1236449151273930752>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "Portal Tier 5" or v.PortalName == "Tier 5" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Portal Tier 5 <:Tier5:1236448937301512293>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "Demon Place Portal" or v.PortalName == "DemonPlacePortal" or v.PortalName == "DemonPlace" or v.PortalName == "Demon Place" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Demon Place Portal <:DemonPlace:1250009846963503145>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "ValentinesPortal" or v.PortalName == "Valentines Portal" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Valentines Portal <:Valentine:1236448940094783568>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "AlienCitadel" or v.PortalName == "Alien Citadel" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Alien Citadel <:DemonPlace:1250009846963503145>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "UnderworldDimension" or v.PortalName == "Underworld Dimension" or v.PortalName == "Underworld Secret Portal" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Underworld Dimension <:DemonPlace:1250009846963503145>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "Tropical Paradise" or v.PortalName == "TropicalParadise" or v.PortalName == "Tropical Paradise" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Tropical Paradise <:TPortal:1254256944428880104>\n"
                                    CountAmountAll = CountAmountAll + 1
                                elseif v.PortalName == "TokyoIncident" or v.PortalName == "Tokyo Incident" or v.PortalName == "Tokyo Incident" then
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". Tokyo Incident <:DemonPlace:1250009846963503145>\n"
                                    CountAmountAll = CountAmountAll + 1
                                else
                                    TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.PortalName) .. " ->  + 1  :cyclone:\n"
                                    CountAmountAll = CountAmountAll + 1
                                end
                            end
                        end
                    end

                    --EXP_Item
                    TableDataEXP = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i,v in pairs(TableDataEXP['ExperienceItemsData']) do

                        --EXP_Item --addNewItem
                        if v.ItemName == "Tree Of Might Fruit" then v.ItemName = "Tree Of Might Fruit" end
                        if v.ItemName == "Genos Core" or v.ItemName == "Jenos Core" then v.ItemName = "Genos Core" end
                        if v.ItemName == "GenosLeftArm" or v.ItemName == "JenosLeftArm" then v.ItemName = "Genos Left Arm" end
                        if v.ItemName == "GenosRightArm" or v.ItemName == "JenosRightArm" then v.ItemName = "Genos Right Arm" end
                        if v.ItemName == "Genos Left Arm" or v.ItemName == "Jenos Left Arm" then v.ItemName = "Genos Left Arm" end
                        if v.ItemName == "Genos Right Arm" or v.ItemName == "Jenos Right Arm" then v.ItemName = "Genos Right Arm" end
                        if v.ItemName == "Curse Talisman" then v.ItemName = "Curse Talisman" end
                        if v.ItemName == "Ghoul Coffee" then v.ItemName = "Ghoul Coffee" end
                        if v.ItemName == "Capsule Corp Capsule" then v.ItemName = "Capsule Corp Capsule" end
                        if v.ItemName == "Ramen" then v.ItemName = "Ramen" end
                        if v.ItemName == "Yokai Meat" then v.ItemName = "Yokai Meat" end
                        if v.ItemName == "Senzu Bean" then v.ItemName = "Super Bean" end
                        if v.ItemName == "Energy Core" then v.ItemName = "Energy Core" end

                        if table.find(SaveSettings["Notifier"]['Select Item'],tostring(i)) or table.find(SaveSettings["Notifier"]['Select Item'],tostring(v.ItemName)) then
                            --EXP_Items --addNewItem
                            if v.ItemName == "Devil Fruit" or v.ItemName == "Demon Fruit" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:DemonFruit:1236448899158507551>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Ninja Headband" or v.ItemName == "Ninja Headband" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:NinjaHeadband:1236448916619137105>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Tree Of Might Fruit" or v.ItemName == "Tree Of Might Fruit" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:ThreeOfMightFruit:1236448926845112382>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Curse Talisman" or v.ItemName == "Curse Talisman" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:CurseTalisman:1236448896885063740>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Ghoul Coffee" or v.ItemName == "Ghoul Coffee" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:GhoulCoffee:1236448909644271777>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Capsule Corp Capsule" or v.ItemName == "Capsule Corp Capsule" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:CapsuleCorpCapsule:1232487006840291339>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Ramen" or v.ItemName == "Ramen" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:Ramen:1236449378722517003>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Yokai Meat" or v.ItemName == "Yokai Meat" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:YokaiMeat1:1236448942372290614>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Senzu Bean" or v.ItemName == "Super Bean" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:SuperBean:1236448925066723398>\n"
                                CountAmountAll = CountAmountAll + 1
                            elseif v.ItemName == "Energy Core" or v.ItemName == "Energy Core" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  <:EnergyCore:1236448903231180840>\n"
                                CountAmountAll = CountAmountAll + 1
                            else
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "  :anger:\n"
                                CountAmountAll = CountAmountAll + 1
                            end
                        end
                    end

                else
                    TextDropLabelAll = ":red_circle: • -> Disable Function • rn <- • :red_circle:"
                end

                if TextDropLabelAll == ""  then
                    TextDropLabelAll = ":red_circle: Can't Loading Inventory :red_circle:"
                end
                --End_Item_All

                --Unit_Kill
                local CountAmountUnit = 1
                local TextUnitKills = ""
                if SaveSettings["Notifier"]["Send Unit Kills"] then

                    local UnitOldId = {}
                    PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i1,v1 in pairs(PlayerDataKills['Slots']) do
                        if table.find(SaveSettings["Notifier"]['Select Unit'],tostring(i1)) then
                            table.insert(UnitOldId,tostring(v1.UnitID))
                            PlayerDataKillsInfo = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                            for i2,v2 in pairs(PlayerDataKillsInfo['UnitData']) do
                                if tostring(v1.UnitID) == tostring(v2.UnitID) then
                                    --Quirk
                                    local QuirkName = tostring(v2.Quirk)
                                    
                                    if QuirkName == "nil" then QuirkName = ":x:"
                                    elseif QuirkName == "Glitched" then QuirkName = "<:Glitched2:1227818072316841994>"
                                    elseif QuirkName == "Avatar" then QuirkName = "<:Avatar:1227150795921690697>"
                                    elseif QuirkName == "Overlord" then QuirkName = "<:Overlord:1227150832420519976>"
                                    elseif QuirkName == "Shinigami" then QuirkName = "<:Shinigami:1227150835541344286>"
                                    elseif QuirkName == "Entrepreneur" then QuirkName = "<:Entrepreneur:1227150822585012244>"
                                    elseif QuirkName == "All Seeing" then QuirkName = "<:AllSeeing:1227150792314720369>"
                                    elseif QuirkName == "Accelerate" or QuirkName == "Accelerate 1" or QuirkName == "Accelerate 2" then QuirkName = "<:Accelerate:1227127831587459122>"
                                    elseif QuirkName == "Scoped" or QuirkName == "Scoped 1" or QuirkName == "Scoped 2" then QuirkName = "<:Scoped:1227127865410191412>"
                                    elseif QuirkName == "Sturdy" or QuirkName == "Sturdy 1" or QuirkName == "Sturdy 2" then QuirkName = "<:Sturdy:1227127901011574834>"
                                    elseif QuirkName == "Accelerate3" or QuirkName == "Accelerate 3" then QuirkName = "<:Accelerate3:1228192934852169811>"
                                    elseif QuirkName == "Scoped3" or QuirkName == "Scoped 3" then QuirkName = "<:Scoped3:1228192938887221390>"
                                    elseif QuirkName == "Sturdy3" or QuirkName == "Sturdy 3" then QuirkName = "<:Sturdy3:1228192931316236308>"
                                    elseif QuirkName == "Eagle Eye" then QuirkName = "<:EagleEye:1227127949539541054>"
                                    elseif QuirkName == "Elemental Master" then QuirkName = "<:ElementalMaster:1227127970821570570>"
                                    elseif QuirkName == "Golden" then QuirkName = "<:Golden:1227127933177696256>"
                                    elseif QuirkName == "Hyper Speed" then QuirkName = "<:HyperSpeed:1227127989444149288>"
                                    elseif QuirkName == "Juggernaut" then QuirkName = "<:Juggernaut:1227128005713858611>"
                                    elseif QuirkName == "Shining" then QuirkName = "<:Shining:1227128021102760006>"
                                    elseif QuirkName == "Diamond" then QuirkName = "<:Diamond:1227128074676736080>"
                                    elseif QuirkName == "Vulture" then QuirkName = "<:Vulture:1227128059509997608>"
                                    elseif QuirkName == "Cosmic" then QuirkName = "<:Cosmic:1227128105190031441>"
                                    elseif QuirkName == "Demi God" then QuirkName = "<:DemiGod:1227128090506035201>" end

                                    TextUnitKills = TextUnitKills .. "**[Lv." .. tostring(comma_value(v2.Level)) .. "]** " .. tostring(v2.UnitName) .. "  " .. QuirkName .. " | Kill : " .. tostring(comma_value(v2.Kills)) .. " :crossed_swords:\n"
                                    CountAmountUnit = CountAmountUnit + 1
                                end
                            end
                        end
                    end
                else
                    TextUnitKills = ":red_circle: • -> Disable Function • rn <- • :red_circle:"
                end

                if TextUnitKills == "" then
                    TextUnitKills = ":red_circle: Can't Loading Unit Slots :red_circle:"
                end
                --End_Unit_Kill
                
                --Game Status Method
                local Win_or_Lose = tostring(game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Container.Stats.Result.Text)
                if Win_or_Lose == "Win" then Win_or_Lose = "Win <:W_:1175418407538139217>" end
                if Win_or_Lose == "Defeat" then Win_or_Lose = "Defeat <:L_:1175418266865389739>" end

                local Wave_Survaval = tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value))
                if Win_or_Lose == "Win <:W_:1175418407538139217>" then Wave_Survaval =  Wave_Survaval .. " :smiling_imp:" end
                if Win_or_Lose == "Defeat <:L_:1175418266865389739>" then Wave_Survaval = Wave_Survaval .. " :confounded:" end

                local Iime_Survaval = tostring(FormatTime(workspace.DistributedGameTime))
                if Win_or_Lose == "Win <:W_:1175418407538139217>" then Iime_Survaval =  Iime_Survaval .. " :hourglass:" end
                if Win_or_Lose == "Defeat <:L_:1175418266865389739>" then Iime_Survaval = Iime_Survaval .. " :hourglass_flowing_sand:" end

                local Time = os.date('!*t', OSTime);
                local PlayerData = {
                    ["content"] = "",
                    ["type"] = "rich",
                    ["embeds"] = {
                        {
                            ["title"] = "**Anime Last Stand **:",
                            ["author"] = {
                                ["name"] = "HolyShz Webhook - Anime Last Stand ",
                                ["icon_url"] = "https://tr.rbxcdn.com/180DAY-e84dcce2f2fe616558a2c56bc7da7ba3/256/256/Image/png",
                            },
                            ["image"] = {
                                ["url"] = "https://tr.rbxcdn.com/e893b8fc4ca334bdf84d9ae82e277667/768/432/Image/Png",
                            },
                            ["description"] = "Player Name : ||**" ..game:GetService("Players").LocalPlayer.DisplayName.. " (" ..game:GetService("Players").LocalPlayer.Name.. ") ** ||\nLevel : ".. PlayerData2.Level .."[ " .. tostring(comma_value(string.format("%.2f",PlayerData2.EXP))) .. "/".. tostring(comma_value(string.format("%.2f",PlayerData2.MaxEXP))) .." ]",
                            ["color"] = tonumber(color),
                            ["timestamp"] = string.format("%d-%d-%dT%02d:%02d:%02dZ", Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                            ["footer"] = {
                                ["text"] = "// Script by HolyShz & kitsuna",
                            },
                            ["fields"] = {
                                {
                                    ["name"] = ":robot:** • -> Player Stats <- • **:robot:",
                                    ["value"] = "\n" .. "<:emerald:1204766658397343805>" .. " Emeralds : ".. tostring(comma_value(string.format("%.2f",PlayerData2.Emeralds))) ..
                                                "\n" .. "<:Jewels:1264488608950124659>" .. " Jewels : ".. tostring(comma_value(PlayerData2.Jewels)) ..
                                                "\n" .. "<:gold:1217525743408648253>" .. " Gold : ".. tostring(comma_value(PlayerData2.Gold)) ..
                                                "\n" .. "<:rerolls:1216376860804382860>" .. " Reroll : ".. tostring(comma_value(PlayerData2.Rerolls)) ..
                                                "\n" .. "<:Shellss:1254264321408765972>" .. " Shells : ".. tostring(comma_value(PlayerData2.Shells)) ..
                                                "\n" .. "<:SoulCoin:1292024266107387966>" .. " Soul Coin : ".. tostring(comma_value(PlayerData2.SoulCoin))
                                        ,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = ":video_game: **• -> Game Stats <- •** :video_game:",
                                    ["value"] = "\n• Game Mode -> " .. GameMode ..
                                                "\n• Map -> " .. MapInfo ..
                                                "\n• Waves Survived -> " .. Wave_Survaval .. 
                                                "\n• Time Elapsed -> " .. Iime_Survaval .. 
                                                "\n• Results -> " .. Win_or_Lose  
                                        ,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = ":customs: **• -> Item Drops <- •** :customs:",
                                    ["value"] = "\n" .. TextDropLabel .. " ",
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = ":smirk_cat: **• -> Unit Stats <- •** :smirk_cat:",
                                    ["value"] = "\n" .. TextUnitKills .. " ",
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = ":luggage: **• -> Player Item Counts <- •** :luggage:",
                                    ["value"] = "\n" .. TextDropLabelAll .. " ",
                                    ["inline"] = false
                                },
                            },
                        }
                    }
                }
                print('🟢🟢🟢 Webhook Sending Resulte ... !!! 🟢🟢🟢')
                local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
                HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=PlayerData, Method="POST", Headers=Headers})
                return
            end
        end
    end)

    ------------------------------------------------------ [[ Color Theme ]] ------------------------------------------------------
    -- // Adding a color picker for each type of theme customisable
    for theme, color in pairs(Themes) do
        Colors:addColorPicker({
            title = theme,
            default = color,
            callback = function(color3)
                UI:setTheme({
                    theme = theme, 
                    color3 = color3
                })
            end
        })
    end
    -- Setting
    

    Text_Time = Setting:addLabel({title = 'Game Time : N/A '})
    Setting:addDropdown({
        title = "Select Time [sec]",
        list = {300,360,420,480,540,600,660,720,780,840,900,1200,1800,2400,3000,3600}, 
        default = SaveSettings["SaveSetting"]['Select Time [sec]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Select Time [sec]'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Rejoin Lobby at Time [In Map]",
        default  = SaveSettings["SaveSetting"]['Auto Rejoin [Time]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Rejoin [Time]'] = v
            Save()
        end ,
    })
    Setting:addDropdown({
        title = "Select Time in Libby [sec]",
        list = {300,360,420,480,540,600,660,720,780,840,900,1200,1800,2400,3000,3600}, 
        default = SaveSettings["SaveSetting"]['Select Time in Libby [sec]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Select Time in Libby [sec]'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Rejoin Lobby at Time [In Lobby]",
        default  = SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]']= v
            Save()
        end ,
    })
    --Rejoin_When_Error
    Setting:addDropdown({
        title = "Select Time When Error prompt [sec]",
        list = {5,10,15,20,25,30}, 
        default = SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Rejoin Lobby When Error prompt",
        default  = SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'] = v
            Save()
        end ,
    })
    Setting:addDropdown({
        title = "Hide UI at Time (sec)",
        list = {5,10,15,20,25,30,35,40,45,50,55,60},
        default = SaveSettings["SaveSetting"]['Hide UI at Time (sec)'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Hide UI at Time (sec)'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Hide UI (HIDE UI When Executor)",
        default  = SaveSettings["SaveSetting"]['Auto Hide UI'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Hide UI'] = v
            Save()
        end ,
    })

    Setting:addButton({
        title = "Rejoin",
        callback = function()
            local tpservice= game:GetService("TeleportService")
            local plr = game.Players.LocalPlayer

            tpservice:Teleport(12886143095, plr)
        end
    })
    Setting:addButton({
        title = "Hop Server",
        callback = function()
            Teleport(12886143095)
        end
    })
    --Start_FPS_Cap
    FPS_CAP = {}
    for i = 1,60 do
        table.insert(FPS_CAP,i)
    end
    Setting:addDropdown({
        title = "Select FPS Amount",
        list = FPS_CAP, 
        default = SaveSettings["SaveSetting"]['FPS Value'],
        callback = function(v)
            SaveSettings["SaveSetting"]['FPS Value'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Enable FPS Cap",
        default  = SaveSettings["SaveSetting"]['FPS Cap'] ,
        callback = function(v)
            SaveSettings["SaveSetting"]['FPS Cap'] = v
            Save()
        end ,
    })
    Setting:addToggle({
        title = "Enable Low CPU Mode",
        default  = SaveSettings["SaveSetting"]['Low CPU Mode'] ,
        callback = function(v)
            SaveSettings["SaveSetting"]['Low CPU Mode'] = v
            Save()
        end ,
    })
    print(game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled == true)
    warn(game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled == false)
    Setting:addKeybind({
        title = "Keybind Hide Ui",
        key = Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],
        callback = function()
            if SaveSettings["SaveSetting"]['Auto Hide UI'] then
                if SaveSettings["SaveSetting"]['Auto Hide UI'] == true then SaveSettings["SaveSetting"]['Auto Hide UI'] = false end
                game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled = not game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled
                UI:toggle()
            else
                UI:toggle()
            end
        end,
        changedCallback = function(key)
            SaveSettings["SaveSetting"]['Hide Key'] = tostring(key)
            Save()
        end
    })
    UI:SelectPage({
        page = UI.pages[1],
        toggle = true
    })
    ---------------------------------------------------------------------------------------------------------
    function ClickSkipLoading()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.Loading.Image.Skip
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Skip Loading Screen ..!!!')
    end

    function ClickNext()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('go to the Next Act ..!!!')
    end

    function ClickRetry()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Retry The Match ..!!!')
    end

    function ClickLeave()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Leave to Lobby ..!!!')
    end

    function ClickClaimDaily()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.Daily.BG.Claim
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Claim Daily Reward ..!!!')
    end

    function ClickStartPortals()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PortalUI.BG.Bottom.Start
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Leave to Lobby ..!!!')
    end

    function ClickEnterW2()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.Confirm.BG.Bottom.Enter
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('go to World 2 ..!!!')
    end


    spawn(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Loading") then
                if  SaveSettings["Main"]['Auto Skip Loading'] then
                    ClickSkipLoading()
                end
            end

            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("PortalUI") then
                if SaveSettings["Portals"]['Auto Click Portals Start'] and game:GetService("Players").LocalPlayer.PlayerGui.PortalUI.BG.Bottom.Start.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickStartPortals =  LocalPlayer.PlayerGui.PortalUI.BG.Bottom.Start
                    repeat
                        wait()
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(
                            ClickStartPortals.AbsolutePosition.X + 50, 
                            ClickStartPortals.AbsolutePosition.Y + 50, 
                            0, 
                            not game.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), 
                            game, 
                            0
                        )
                    until game:GetService("Players").LocalPlayer.PlayerGui.PortalUI.BG.Bottom.Start.Visible == false
                    print('Manual Click Start Portals ..!!!')
                end
            end
            
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("EndGameUI") then
                --Next_Replay_Portals
                if SaveSettings["Portals"]['Auto Next_Replay Portals'] and SaveSettings["Portals"]['Auto Open Portals'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == true then
                    PortalsData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i,v in pairs(PortalsData['PortalData']) do
                
                        --Event_Portals
                        if table.find(SaveSettings["Portals"]['Select Tier Portals'],v['PortalName']) and table.find(SaveSettings["Portals"]['Select Maps Act'],tostring(v['PortalData']['Tier'])) and table.find(SaveSettings["Portals"]['Select Challenge Portals'],v['PortalData']['Challenges']) then
                            wait(.5)
                            local args = {
                                [1] = v['PortalID']
                            }
                            game:GetService("ReplicatedStorage").Remotes.Portals.Activate:InvokeServer(unpack(args))
                
                            print('Select Next Portal..!!!')
                            repeat wait() until not SaveSettings["Portals"]['Auto Next_Replay Portals'] or SaveSettings["Portals"]['Auto Open Portals']
                            break
                        end
                    end
                end

                if SaveSettings["Main"]['Auto Next'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickNext()
                elseif SaveSettings["Main"]['Auto Retry'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickRetry()
                elseif SaveSettings["Main"]['Auto Leave'] and not SaveSettings["Main"]['Auto Retry'] and not SaveSettings["Main"]['Auto Next'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickLeave()
                elseif SaveSettings["Main"]['Auto Leave'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave.Visible == true then
                    if game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == false then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        ClickLeave()
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry.Visible == false then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        ClickLeave()
                    end
                --Manual Click [Retry,Next,Leave]
                elseif SaveSettings["Main"]['Manual Click [Next]'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickNext =  LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next
                    repeat
                        wait()
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(
                            ClickNext.AbsolutePosition.X + 50, 
                            ClickNext.AbsolutePosition.Y + 50, 
                            0, 
                            not game.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), 
                            game, 
                            0
                        )
                    until game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == false
                    print('Manual Click Next Match ..!!!')
                elseif SaveSettings["Main"]['Manual Click [Retry]'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickRetry =  LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry
                    repeat
                        wait()
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(
                            ClickRetry.AbsolutePosition.X + 50, 
                            ClickRetry.AbsolutePosition.Y + 50, 
                            0, 
                            not game.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), 
                            game, 
                            0
                        )
                    until game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == false
                    print('Manual Click Retry Match ..!!!')
                elseif SaveSettings["Main"]['Manual Click [Leave]'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickLeave =  LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave
                    repeat
                        wait()
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(
                            ClickLeave.AbsolutePosition.X + 50, 
                            ClickLeave.AbsolutePosition.Y + 50, 
                            0, 
                            not game.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), 
                            game, 
                            0
                        )
                    until game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == false
                    print('Manual Click Leave Match ..!!!')
                end 
            end
        
            --Redeem
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Daily') then
                if SaveSettings["Main"]['Auto Redeem Daily'] and game:GetService("Players").LocalPlayer.PlayerGui.Daily.Enabled == true then
                    ClickClaimDaily()
                end
            end

            --Story
            if SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Auto TP to WORLD 2'] and game.PlaceId == 12886143095 then
                wait(.5)
                repeat
                    wait()
                    local LocalPlayer = game:GetService("Players").LocalPlayer
                    local PlayerModule = require(LocalPlayer.PlayerScripts.PlayerModule)
                    local ClickToMoveController = PlayerModule:GetClickToMoveController()
                    ClickToMoveController:SetShowPath(false)
                    ClickToMoveController:SetUserJumpEnabled(false)
                                                
                    ClickToMoveController:MoveTo(Vector3.new(-123.46552276611328, 13.810534477233887, -32.067291259765625))
                    wait(10)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.46552276611328, 13.810534477233887, -32.067291259765625)

                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Confirm') or not SaveSettings["Main"]['Auto TP to WORLD 2']
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Confirm') and game:GetService("Players").LocalPlayer.PlayerGui.Confirm.Enabled == true then
                    ClickEnterW2()
                end
            end
            local PlaceId_Lobby = {12886143095,18583778121}
            if SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Story" and table.find(PlaceId_Lobby,game.PlaceId) then
                local TeleporterFolder = workspace:FindFirstChild("TeleporterFolder")
                if TeleporterFolder and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Story').Enabled then

                    local args = {
                        [1] = SaveSettings["Main"]['Select Map'],
                        [2] = tonumber(SaveSettings["Main"]['Select Act']),
                        [3] = SaveSettings["Main"]['Select Difficulty'],
                        [4] = SaveSettings["Main"]['Friends Only']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Story.Select:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").TeleporterFolder.Story:GetChildren()) do
                        local Door = v:FindFirstChild('Door')
                        local UI = Door:FindFirstChild('UI')
                        local PlayerCount = UI:FindFirstChild('PlayerCount')
                        if not v:GetAttribute("PlayerCount") and not v:GetAttribute("Leader") and not v:GetAttribute("EndTime") then

                            HumanoidRootPart.CFrame = v.Door.CFrame
                        end
                    end
                    task.wait(.5)
                end
            --Legend_Stages
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "LegendaryStages" and table.find(PlaceId_Lobby,game.PlaceId) then
                local TeleporterFolder = workspace:FindFirstChild("TeleporterFolder")
                if TeleporterFolder and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Story').Enabled then

                    local args = {
                        [1] = SaveSettings["Main"]['Select Legend Stages Map'],
                        [2] = tonumber(SaveSettings["Main"]['Select Legend Act']),
                        [3] = SaveSettings["Main"]['Select Legend Stages Difficulty'],
                        [4] = SaveSettings["Main"]['Friends Only'],
                        [5] = true
                    }
                    game:GetService("ReplicatedStorage").Remotes.Story.Select:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").TeleporterFolder.Story:GetChildren()) do
                        local Door = v:FindFirstChild('Door')
                        local UI = Door:FindFirstChild('UI')
                        local PlayerCount = UI:FindFirstChild('PlayerCount')
                        if not v:GetAttribute("PlayerCount") and not v:GetAttribute("Leader") and not v:GetAttribute("EndTime") then

                            HumanoidRootPart.CFrame = v.Door.CFrame
                        end
                    end
                    task.wait(.5)
                end
            --Raids
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Raids" and table.find(PlaceId_Lobby,game.PlaceId) then
                local TeleporterFolder = workspace:FindFirstChild("TeleporterFolder")
                if TeleporterFolder and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Raids').Enabled then

                    local args = {
                        [1] = SaveSettings["Main"]['Select Raids Map2'],
                        [2] = tonumber(SaveSettings["Main"]['Select Raids Act']),
                        [3] = SaveSettings["Main"]['Select Raids Difficulty'],
                        [4] = SaveSettings["Main"]['Friends Only']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Raids.Select:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").TeleporterFolder.Raids:GetChildren()) do
                        local Door = v:FindFirstChild('Door')
                        local UI = Door:FindFirstChild('UI')
                        local PlayerCount = UI:FindFirstChild('PlayerCount')
                        if not v:GetAttribute("PlayerCount") and not v:GetAttribute("Leader") and not v:GetAttribute("EndTime") then
                  
                            HumanoidRootPart.CFrame = v.Door.CFrame
                        end
                    end
                    task.wait(.5)
                end
            --ElementalCaverns
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "ElementalCaverns" and table.find(PlaceId_Lobby,game.PlaceId) then
                local TeleporterFolder = workspace:FindFirstChild("TeleporterFolder")
                if TeleporterFolder and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ElementalCaverns').Enabled then
                    local args = {
                        [1] = SaveSettings["Main"]['Select Elemental Map'],
                        [2] = SaveSettings["Main"]['Select Elemental Difficulty'],
                        [3] = SaveSettings["Main"]['Friends Only']
                    }
                    game:GetService("ReplicatedStorage").Remotes.ElementalCaverns.Select:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").TeleporterFolder.ElementalCaverns:GetChildren()) do
                        local Door = v:FindFirstChild('Door')
                        local UI = Door:FindFirstChild('UI')
                        local PlayerCount = UI:FindFirstChild('PlayerCount')
                        if not v:GetAttribute("PlayerCount") and not v:GetAttribute("Leader") and not v:GetAttribute("EndTime") then
                 
                            HumanoidRootPart.CFrame = v.Door.CFrame
                        end
                    end
                    task.wait(.5)
                end
            --Infinite
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Infinite" and table.find(PlaceId_Lobby,game.PlaceId) then
                local TeleporterFolder = workspace:FindFirstChild("TeleporterFolder")
                if TeleporterFolder and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Story').Enabled then

                    local args = {
                        [1] = SaveSettings["Main"]['Select Map'],
                        [2] = "Infinite",
                        [3] = SaveSettings["Main"]['Select Difficulty'],
                        [4] = SaveSettings["Main"]['Friends Only']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Story.Select:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").TeleporterFolder.Story:GetChildren()) do
                        local Door = v:FindFirstChild('Door')
                        local UI = Door:FindFirstChild('UI')
                        local PlayerCount = UI:FindFirstChild('PlayerCount')
                        if not v:GetAttribute("PlayerCount") and not v:GetAttribute("Leader") and not v:GetAttribute("EndTime") then

                            HumanoidRootPart.CFrame = v.Door.CFrame
                        end
                    end
                    task.wait(.5)
                end
            --Challenge
            local ChallengeInfoName = game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.Challenge.Value
            local MapChallengeName = game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapName.Value
            local PlaceId_Lobby = {12886143095,18583778121}
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Challenge" and table.find(PlaceId_Lobby,game.PlaceId)
            and table.find(SaveSettings["Main"]['Select Challenge Map'],game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapName.Value) and table.find(SaveSettings["Main"]['Select Challenge'],game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.Challenge.Value) then
                local TeleporterFolder = workspace:FindFirstChild("TeleporterFolder")
                if TeleporterFolder and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('MapSelection') then
                    if SaveSettings["Main"]['Friends Only'] then
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.FriendsOnly:InvokeServer()
                    end

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join Challenge Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").TeleporterFolder.Challenge:GetChildren()) do
                        local Door = v:FindFirstChild('Door')
                        local UI = Door:FindFirstChild('UI')
                        local PlayerCount = UI:FindFirstChild('PlayerCount')
                        if not v:GetAttribute("PlayerCount") and not v:GetAttribute("Leader") and not v:GetAttribute("EndTime") then
                 
                            HumanoidRootPart.CFrame = v.Door.CFrame
                        end
                    end
                    task.wait(5)
                end
            end
        end
    end)

    --Auto Rejoin Error Prompt
    spawn(function()
        while wait() do
        local PlaceId_ALS = {12900046592,18583778121,14368918515,12886143095,14368918515}
        if table.find(PlaceId_ALS,game.PlaceId) and SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'] then -- SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']
            while task.wait(tonumber(SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]'])) do
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:CaptureController()vu:ClickButton2(Vector2.new())
                end)
                game:GetService("GuiService").ErrorMessageChanged:Connect(function()
                    warn("Fround a Error Prompt ... Trying to Reconnect ...")
                    wait(tonumber(SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']))
                    game:GetService("TeleportService"):Teleport(12886143095)
                end)
                wait(.5)
                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(a)
                    if a.Name == 'ErrorPrompt' then
                        task.wait(tonumber(SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']))
                        local tpservice= game:GetService("TeleportService")
                        local plr = game.Players.LocalPlayer
                        tpservice:Teleport(12886143095, plr)
                        warn("Fround a Error Prompt ... Trying to Reconnect ...")
                        repeat wait() until not SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]']
                        end
                    end)
                end
            end
        end
    end)

    function DelMapMain()
        if game.Workspace:FindFirstChild("Map") then
            for i,v in pairs(game:GetService("Workspace")["Map"]:GetChildren()) do
                if v.ClassName ~= "Model" and v.ClassName ~= "Folder" and v.ClassName ~= "Part" 
                and v.ClassName ~= "StringValue" and v.ClassName ~= "BoolValue" then v:Remove() end
            end
        end  
    end
    function DelMapMain2()
        if game.Workspace.Map:FindFirstChild("Map") then
            for i,v in pairs(game:GetService("Workspace")["Map"].Map:GetChildren()) do
                if v.ClassName ~= "SpawnLocation" and v.ClassName ~= "sPart" and v.ClassName ~= "sMeshPart" 
                and v.ClassName ~= "StringValue" and v.ClassName ~= "BoolValue" then v:Remove() end
            end
        end  
    end
    function DelLighting()
        if game.Workspace.Map:FindFirstChild("Lighting") then
            for i,v in pairs(game:GetService("Workspace")["Map"].Lighting:GetChildren()) do
                if v.ClassName ~= "Part" then v:Remove() end
            end
        end  
    end

    --ETC_function
    spawn(function()
        while wait() do
            if game.PlaceId == 12886143095 then
                if SaveSettings["Main"]['Auto TP to WORLD 2'] then
                    wait(.5)
                    repeat
                        wait()
                        local LocalPlayer = game:GetService("Players").LocalPlayer
                        local PlayerModule = require(LocalPlayer.PlayerScripts.PlayerModule)
                        local ClickToMoveController = PlayerModule:GetClickToMoveController()
                        ClickToMoveController:SetShowPath(false)
                        ClickToMoveController:SetUserJumpEnabled(false)
                                                    
                        ClickToMoveController:MoveTo(Vector3.new(-123.46552276611328, 13.810534477233887, -32.067291259765625))

                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Confirm') or not SaveSettings["Main"]['Auto TP to WORLD 2']
                end
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Confirm') and game:GetService("Players").LocalPlayer.PlayerGui.Confirm.Enabled == true then
                    ClickEnterW2()
                end
            end
            if not table.find(PlaceId_Lobby,game.PlaceId) then
                if SaveSettings["Main"]['Auto Enable Speed'] and game:GetService("ReplicatedStorage").TimeScale.Value == 1 then
                    wait(.5)
                    repeat
                        wait()
                        local args = {
                            [1] = true
                        }
                        game:GetService("ReplicatedStorage").Remotes.VoteChangeTimeScale:FireServer(unpack(args))
                    until not SaveSettings["Main"]['Auto Enable Speed'] or game:GetService("ReplicatedStorage").TimeScale.Value ~= 1
                elseif SaveSettings["Main"]['Auto Disable Attack Effect'] and game:GetService("Players").LocalPlayer.PlayerGui.Settings.AttackEffects.Value == true then
                    wait(.5)
                        local args = {
                            [1] = "AttackEffects"
                        }
                        game:GetService("ReplicatedStorage").Remotes.SetSettings:InvokeServer(unpack(args))
                elseif SaveSettings["Main"]['Auto Disable Hit Effect'] and game:GetService("Players").LocalPlayer.PlayerGui.Settings.HitEffects.Value == true then
                    wait(.5)
                    local args = {
                        [1] = "HitEffects"
                    }
                    game:GetService("ReplicatedStorage").Remotes.SetSettings:InvokeServer(unpack(args))
                elseif SaveSettings["Main"]['Auto Disable Music'] and game:GetService("Players").LocalPlayer.PlayerGui.Settings.Music.Value == true then
                    wait(.5)
                    local args = {
                        [1] = "Music"
                    }
                    game:GetService("ReplicatedStorage").Remotes.SetSettings:InvokeServer(unpack(args))
                elseif SaveSettings["Main"]['Auto Disable Damage Indicator'] and game:GetService("Players").LocalPlayer.PlayerGui.Settings.DamageIndicator.Value == true then
                    wait(.5)
                    local args = {
                        [1] = "DamageIndicator"
                    }
                    game:GetService("ReplicatedStorage").Remotes.SetSettings:InvokeServer(unpack(args))
                elseif SaveSettings["Main"]['Auto Disable Global Shadows'] and game:GetService("Players").LocalPlayer.PlayerGui.Settings.GlobalShadows.Value == true then
                    wait(.5)
                    local args = {
                        [1] = "GlobalShadows"
                    }
                    game:GetService("ReplicatedStorage").Remotes.SetSettings:InvokeServer(unpack(args))
                elseif SaveSettings["Main"]['Auto Disable All Sound'] then
                    wait(.1)
                    game:GetService("Workspace").OceanLoop.Volume = 0
                    game:GetService("Workspace")["OceanLoop"].Volume = 0
                    wait(.1)
                    game:GetService("Workspace").GameMusic.Volume = 0
                    game:GetService("Workspace")["GameMusic"].Volume = 0
                    wait(.1)
                    game:GetService("Players").LocalPlayer.PlayerGui["CashSFX"].Volume = 0
                    game:GetService("Players").LocalPlayer.PlayerGui.CashSFX.Volume = 0
                    wait(.1)
                    game:GetService("Players").LocalPlayer.PlayerGui["TowerInteractionSFX"].Volume = 0
                    game:GetService("Players").LocalPlayer.PlayerGui.TowerInteractionSFX.Volume = 0
                    wait(.1)
                    game:GetService("Players").LocalPlayer.PlayerGui["ErrorSFX"].Volume = 0
                    game:GetService("Players").LocalPlayer.PlayerGui.ErrorSFX.Volume = 0
                    wait(.1)
                    game:GetService("Players").LocalPlayer.PlayerGui["NormalSFX"].Volume = 0
                    game:GetService("Players").LocalPlayer.PlayerGui.NormalSFX.Volume = 0
                end
            end
        end
    end)

    spawn(function()
        while wait() do
            local PlaceId_Lobby = {12886143095,18583778121}
            if not table.find(PlaceId_Lobby,game.PlaceId) then
                if SaveSettings["Main"]['Delete Map'] then
                    wait(.1)
                    DelMapMain2()
                    DelMapMain()
                    DelLighting()
                end
            end
        end
    end)

    --Auto Rejoin
    function RejoineServer()
        while wait() do
            pcall(function()
                local PlaceId_Lobby = {12886143095,18583778121}
                if table.find(PlaceId_Lobby,game.PlaceId) then
                    print('Reture to Lobby by Auto Rejoin with Time ' .. tonumber(SaveSettings["SaveSetting"]['Select Time in Libby [sec]']) .. ' sec' )
                else
                    print('Reture to Lobby by Auto Rejoin with Time ' .. tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) .. ' sec' )
                end
                wait(.5)
                Teleport(12886143095)
                wait(5)
                local Players = game:GetService("Players")
                local TeleportService = game:GetService("TeleportService")
                local player = Players.LocalPlayer
                TeleportService:Teleport(12886143095, player)
                repeat wait() until not workspace.Map:FindFirstChild('MapDifficulty')
            end)
        end
    end

    spawn(function()
        while wait() do
            local PlaceId_Lobby3 = {12886143095,18583778121}
            if SaveSettings["SaveSetting"]['Auto Rejoin [Time]'] and not table.find(PlaceId_Lobby3,game.PlaceId) then
                if workspace.DistributedGameTime >= tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) then
                    local Players = game:GetService("Players")
                    local TeleportService = game:GetService("TeleportService")
                    local player = Players.LocalPlayer
                    TeleportService:Teleport(12886143095, player)
                    wait(3)
                    RejoineServer()
                end 
            elseif SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]'] and table.find(PlaceId_Lobby3,game.PlaceId) then
                if workspace.DistributedGameTime >= tonumber(SaveSettings["SaveSetting"]['Select Time in Libby [sec]']) then
                    local Players = game:GetService("Players")
                    local TeleportService = game:GetService("TeleportService")
                    local player = Players.LocalPlayer
                    TeleportService:Teleport(12886143095, player)
                    wait(3)
                    RejoineServer()
                end
            end
        end
    end)

    spawn(function()
		while wait() do
            if workspace.DistributedGameTime >= 0 then
                local args = { [1] = game:GetService("Players").LocalPlayer }
                PlayerData2 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
                local PlaceId_Lobby = {12886143095,18583778121}

                if table.find(PlaceId_Lobby,game.PlaceId) then
                    Text_Challenge_Time.Options:ChangeText(" Now Map : " .. tostring(game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapName.Value) .. " (Act " .. tostring(game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapNum.Value) .. ")\n Now Challenge : "  .. tostring(game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.Challenge.Value)) 
                    if SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]'] then
                        Text_Time.Options:ChangeText(" Your Enable Rejoin [Time][Lobby], Time not Checking in LOBBY \n Game Time : ".. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    else
                        Text_Time.Options:ChangeText(" Your Disable Rejoin [Time][Lobby], Time Checking in LOBBY \n Game Time : ".. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    end
                    Text_Emeralds.Options:ChangeText(" Emerald Count : " ..  tostring(comma_value(PlayerData2.Emeralds)) .. "\n Jewels Count : " .. tostring(comma_value(PlayerData2.Jewels)) .. " | Reroll : ".. tostring(comma_value(PlayerData2.Rerolls)) .. "\n Shells : " .. tostring(comma_value(PlayerData2.Shells)) ) 
                    if SaveSettings["InfCastle"]['Auto Play InfCastle'] then
                        Text_InfCastle_Play.Options:ChangeText("** Infinity Castle **\n Now Room : " .. tostring(LocalPlayer.PlayerGui.InfinityCastle.BG.Content.Left.RoomPage.Content.Top.RoomName.Text) .. "\n Now Map : " .. tostring(LocalPlayer.PlayerGui.InfinityCastle.BG.Content.Left.RoomPage.Content.Top.Map.Text)) 
                    else
                        Text_InfCastle_Play.Options:ChangeText("** Infinity Castle ** \n Now Room : Waiting for loadind Inffinity Castle Room Data \n Now Map : Waiting for loadind Inffinity Castle Map Data") 
                    end
                else
                    MapDataText = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()
                    if tostring(MapDataText.MapNum) == "nil" then
                        ActorPlay = " "
                    else
                        ActorPlay = tostring("(Act " .. tostring(MapDataText.MapNum) .. ")" or " ")
                    end
                    if tostring(MapDataText.Tier) == "nil" then
                        if tostring(MapDataText.Room) == "nil" then   
                            TierPlay = " "
                        else
                            TierPlay = tostring("(Room " .. tostring(MapDataText.Room) .. ")" or " ")
                        end
                    else
                        TierPlay = tostring("(Tier " .. tostring(MapDataText.Tier) .. ")" or " ")
                    end
                    if tostring(MapDataText.Challenge) == "nil" then
                        ChallengeorDiffPlay = tostring("Difficulty : " .. tostring(MapDataText.Difficulty) or " ")
                    else
                        ChallengeorDiffPlay = tostring("Challenge : " .. tostring(MapDataText.Challenge) or " ")
                    end
                    if table.find(TableChallenge,game:GetService("ReplicatedStorage").Challenge.Value) then
                        Text_Challenge_Time.Options:ChangeText(" Playing Mode : " .. tostring(MapDataText.Type) .. " ".. TierPlay .. "\n Playing Map : " .. tostring(MapDataText.MapName) .. " ".. ActorPlay .. "\n Playing "  .. ChallengeorDiffPlay .. " (Wave " .. tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value)) .. ")") 
                    else
                        Text_Challenge_Time.Options:ChangeText(" Playing Mode : " .. tostring(MapDataText.Type) .. " ".. TierPlay .. "\n Playing Map : " .. tostring(MapDataText.MapName) .. " ".. ActorPlay .. "\n Playing "  .. ChallengeorDiffPlay .. " (Wave " .. tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value)) .. ")") 
                    end
                    Text_Time.Options:ChangeText(" Game Time : " .. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    Text_Emeralds.Options:ChangeText(" Emerald Count : " ..  tostring(comma_value(PlayerData2.Emeralds)) .. "\n Jewels Count : " .. tostring(comma_value(PlayerData2.Jewels)) .. " | Reroll : ".. tostring(comma_value(PlayerData2.Rerolls)) .. "\n Shells : " .. tostring(comma_value(PlayerData2.Shells)) ) 
                    Text_InfCastle_Play.Options:ChangeText(" Playing Mode : " .. tostring(MapDataText.Type) .. " ".. TierPlay .. "\n Playing Map : " .. tostring(MapDataText.MapName) .. " ".. ActorPlay .. "\n Playing "  .. ChallengeorDiffPlay .. " (Wave " .. tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value)) .. ")") 
                end
            end
        end
    end)

    --lowCPU
    local IS_ROBLOX_ACTIVE = false
    local UIS = game:GetService("UserInputService")
    UIS.WindowFocused:Connect(function()
        IS_ROBLOX_ACTIVE = true
    end)
    UIS.WindowFocusReleased:Connect(function()
        IS_ROBLOX_ACTIVE = false
    end)
    function isrbxactive()
        return IS_ROBLOX_ACTIVE
    end
    task.spawn(function()
        while task.wait() do
            getgenv().isrbxactive = newcclosure(isrbxactive)
            if IS_ROBLOX_ACTIVE ~= true and SaveSettings["SaveSetting"]['Low CPU Mode'] then
                setfpscap(tonumber(SaveSettings["SaveSetting"]['FPS Value']))
                game:GetService("RunService"):Set3dRenderingEnabled(false)
                isrbxactive(true)
            else
                setfpscap(240)
                game:GetService("RunService"):Set3dRenderingEnabled(true)
                isrbxactive(false)
            end
        end
    end)

    --FPS_Cap
    local IS_ROBLOX_ACTIVE2 = false
    local UIS = game:GetService("UserInputService")
    UIS.WindowFocused:Connect(function()
        IS_ROBLOX_ACTIVE2 = true
    end)
    UIS.WindowFocusReleased:Connect(function()
        IS_ROBLOX_ACTIVE2 = false
    end)
    function isrbxactive2()
        return IS_ROBLOX_ACTIVE2
    end
    task.spawn(function()
        while task.wait() do
            getgenv().isrbxactive2 = newcclosure(isrbxactive2)
            if SaveSettings["SaveSetting"]['FPS Cap'] then
                setfpscap(tonumber(SaveSettings["SaveSetting"]['FPS Value']))
                isrbxactive2(true)
            end
        end
    end)

    -- Anti Afk
    DalyKick = 0
    local VirtualUser = game:GetService("VirtualUser")
    spawn(function()
        while wait() do
            pcall(function() 
                VirtualUser:CaptureController()
                VirtualUser:SetKeyDown("w",key)
                wait()
                VirtualUser:CaptureController()
                VirtualUser:SetKeyUp("w",key)
                wait(1000)
            end)
        end
    end)

    -- Hide Ui
    if game.CoreGui:FindFirstChild("HideUiHoly") then
        game.CoreGui:FindFirstChild("HideUiHoly"):Destroy()
    end

    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local HttpService = game:GetService("HttpService")
    local UserInputService = game:GetService("UserInputService")
    local ContentProvider = game:GetService("ContentProvider")
    local CoreGui = game:GetService("CoreGui")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()

    local function RippleEffect(object)
        spawn(function()
            local Ripple = Instance.new("ImageLabel")
            Ripple.Name = "Ripple"
            Ripple.Parent = object
            Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Ripple.BackgroundTransparency = 1.000
            Ripple.ZIndex = 8
            Ripple.Image = "rbxassetid://2708891598"
            Ripple.ImageTransparency = 0.5
            Ripple.ScaleType = Enum.ScaleType.Fit
            Ripple.Position = UDim2.new((Mouse.X - Ripple.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - Ripple.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
            TweenService:Create(Ripple, TweenInfo.new(1.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -15, 0), Size = UDim2.new(0, 110, 0, 32)}):Play()
            wait(0.75)
            TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
            wait(.75)
            Ripple:Destroy()
        end)
    end

    local KeySystemGui = Instance.new("ScreenGui")
    KeySystemGui.Name = "HideUiHoly"
    KeySystemGui.Parent = game.CoreGui
    KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TextButtonPosition = game.PlaceId == 12900046592 and UDim2.new(0,330,0,-16) or game.PlaceId == 12886143095 and UDim2.new(0,330,0,-16) or  game:GetService("CoreGui"):FindFirstChild('TrigonTopbar') and UDim2.new(0,260,0,-16) or UDim2.new(0,210,0,-16)
    local TextButton = Instance.new("TextButton")
    TextButton.Parent = KeySystemGui
    TextButton.AnchorPoint = Vector2.new(1, 0.5)
    TextButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
    TextButton.BackgroundTransparency = 0.5
    TextButton.BorderColor3 = Color3.fromRGB(27,42,53)
    TextButton.BorderSizePixel = 0
    TextButton.Position = TextButtonPosition
    TextButton.Size = UDim2.new(0, 110, 0, 32)
    TextButton.ClipsDescendants = true
    TextButton.Font = Enum.Font.GothamSemibold
    TextButton.Text = "Hide Ui"
    TextButton.TextColor3 = Color3.fromRGB(255,255,255)
    TextButton.TextSize = 16.000
    TextButton.TextWrapped = true

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = TextButton

    TextButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextSize = 18}):Play()
        end
    end)
    TextButton.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextSize = 16}):Play()
        end
    end)

    TextButton.MouseButton1Down:Connect(function()
        RippleEffect(TextButton)
        if game:GetService("CoreGui"):FindFirstChild('HolyScript') then
            if SaveSettings["SaveSetting"]['Auto Hide UI'] == true then SaveSettings["SaveSetting"]['Auto Hide UI'] = false end
            game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled = not game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled
        end
    end)

    --Auto HideUi
    spawn(function()
        while wait() do
            if game:GetService("CoreGui"):FindFirstChild('HolyScript') then
                if SaveSettings["SaveSetting"]['Auto Hide UI'] and game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled == true then
                    if SaveSettings["SaveSetting"]['Hide UI at Time (sec)'] == "None" then SaveSettings["SaveSetting"]['Hide UI at Time (sec)'] = 60 end
                    wait(tonumber(tostring(SaveSettings["SaveSetting"]['Hide UI at Time (sec)'])))
                    UI:toggle()
                    game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled = not game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled
                    print('Hide HolyShz Hub Screen UI..!!!')
                end
            end
        end
    end)
end
