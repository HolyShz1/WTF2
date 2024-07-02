_G.DebugScript = true
--_G.HideUiTopbat = true

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
print(PandaAuth)
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

------------------------------------------------------ [[ Anime Defenders ]] ------------------------------------------------------
print(game.PlaceId)
local PlaceId_AD = {17764698696,17017769292,17018663967,17633071278,17078425946,17456575820,17490500437,17513685680,17620826119}
if table.find(PlaceId_AD,game.PlaceId) then
    repeat wait() until game:IsLoaded()
    if not game:IsLoaded() then game.Loaded:Wait() end
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
    local SaveSettings = {
        ["Main"] = {
            ['Select Mode'] = "Story",
            ['Select Map'] = "nil",
            ['Select Act'] = "None",
            ['Select Difficulty'] = "Normal",
            ['Enable Auto StoryInf'] = false,

            ['Join Story'] = false,

            ['Select Raids'] = "Cursed Dungeon",
            ['Enable Auto Raids'] = false,

            ['Select Challenge Map'] = {"Mob City"},
            ['Select Challenge'] = {"None"},
            ['Select Challenge Reward'] = {"None"},
            ['Enable Auto Challenge'] = false,

            ['Friend Only'] = false,
            ['Auto Start'] = false,
            ["Delay [Start,Retry,Leave]"] = 3,

            ['Auto Tower of Eternity'] = false,

            ['Auto Vote Start']  = false,
            ['Auto Next Level'] = false,
            ['Auto Leave'] = false,
            ['Auto Retry'] = false,
            ['Auto Cleam Quest'] = false,
            ['Auto x2 Speed'] = false,

            ['Manual Click [Retry]'] = false,
            ['Manual Click [Leave]'] = false,

            ['Select Wave Amount'] = 100,
            ['Auto Leave at Wave'] = false,
            ['Auto Retry at Wave'] = false,
            ['Select Time Replay [sec]'] = 1200,
            ['Auto Replay at Time'] = false,
        },
        ["Summon"] = {
            ['Select Banner'] = "Standard",
            ['Select Method'] = 'x1',
            ['Auto Summon'] = false,
        },
        ['Macro'] = {
            ['Macro Select'] = "None",
            ['Delat Macro Play Time (sec)'] = 1,
            ['Play Macro'] = false,

            ['Macro Map'] = {},
        },
        ["Notifier"] = {
            ["Webhook Url"] = "nil",
            ['Select Item'] = {},
            ["Send All Item"] = false,
            ['Select Unit'] = {},
            ["Send Unit Kills"] = false,
            ["Send After End Game"] = false,
        },
        ["SaveSetting"] = {
            ['Select Time [sec]'] = 600,
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
            if not isfolder("HolyShz/AnimeDefenders") then
                makefolder("HolyShz/AnimeDefenders")
            end
            if not isfolder("HolyShz/AnimeDefenders/data") then
                makefolder("HolyShz/AnimeDefenders/data")
            end
            if not isfolder("HolyShz/AnimeDefenders/Macro") then
                makefolder("HolyShz/AnimeDefenders/Macro")
            end
            if not isfile("HolyShz/AnimeDefenders/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("HolyShz/AnimeDefenders/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeDefenders/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
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
            if isfile("HolyShz/AnimeDefenders/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeDefenders/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("HolyShz/AnimeDefenders/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
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
    local function convertToHMS(seconds)
        -- Handle negative input
        if seconds < 0 then
          error("Input cannot be negative")
        end
        -- Get hours
        local hours = math.floor(seconds / 3600)
        seconds = seconds % 3600
        -- Get minutes
        local minutes = math.floor(seconds / 60)
        seconds = seconds % 60
        -- Return formatted string
        return string.format("%02d:%02d:%02d", hours, minutes, seconds)
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
    function StringToVector3(params)
        return Vector3.new(unpack(game:GetService("HttpService"):JSONDecode("["..params.."]")))
    end
    function Timelapse()
        return workspace.DistributedGameTime
    end
    ------------------------------------------------------ [[ Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()

    local UI = Venyx.new({
        title = "[SUMMER] Anime Defenders",
        Version = "Version 1.0.1"
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
    local Main_Story_Page = MainCreateTap:addSection({
        title = "Setting - Story & Infinite"
    })
    local Main_Challenge_Page = MainCreateTap:addSection({
        title = "Setting - Challenge"
    })
    local Main_Raids_Page = MainCreateTap:addSection({
        title = "Setting - Raids"
    })
    local Main_Tower_Page = MainCreateTap:addSection({
        title = "Setting - Tower of Eternity"
    })
    local Main_Mode_Page = MainCreateTap:addSection({
        title = "Setting - Mode"
    })
    local Main_Misc_Page = MainCreateTap:addSection({
        title = "Misc"
    })
    local CoMain_Game_Page = MainCreateTap:addSection({
        title = "In Game - Setting"
    })
    
    -- Summon
    local MainCreateTap = UI:addPage({
        title = "Summon",
        icon = 7939410236
    })
    local Auto_Summon_Page = MainCreateTap:addSection({
        title = "Auto Summon"
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
    -- Macro Map
    local MacroMapTap = UI:addPage({
        title = "Macro Map",
        icon = 10734943448
    })
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
    ------------------------------------------------------ [[ Create Data ]] ------------------------------------------------------
    local Table_Story_Map,DataMap = {},{}
    DataMap["MapName"] = {}
    MapData = require(game:GetService("ReplicatedStorage").Modules.Bins.MapData)
    table.foreach(MapData ,function(i,v)
        if v['IsStoryMode'] then
            table.insert(Table_Story_Map,v.DisplayName)
            DataMap["MapName"][v.DisplayName] = i
            DataMap[v.DisplayName] = {}
            table.foreach(v['Chapters'],function(j,k)
                table.insert(DataMap[v.DisplayName],k:split("_")[2])
            end)
        end
    end)

    RaidData = require(game:GetService("ReplicatedStorage").Modules.Bins.RaidData)
    local Table_Raids_Map = {"Cursed Train",}
    table.foreach(RaidData ,function(i,v)
        --if v['DisplayName'] == "Cursed Rail" then v['DisplayName'] = "Cursed Train" end
        table.insert(Table_Raids_Map,v['DisplayName'])
        DataMap["MapName"][v.DisplayName] = i
        DataMap[v.DisplayName] = {}
        table.insert(DataMap[v.DisplayName],v.Chapter:split("_")[2])
    end)

    local Values = require(game:GetService("ReplicatedStorage"):WaitForChild("Values"))
    local MapValues = require(game:GetService("ReplicatedStorage").Values)
    local ChallengeData = require(game:GetService("ReplicatedStorage").Modules.Bins.ModifierData)
    local ChapterData = require(game:GetService("ReplicatedStorage").Modules.Bins.ChapterData)
    local InfiniteData = require(game:GetService("ReplicatedStorage").Modules.Bins.InfiniteData)
    local UnitUpgradeData = require(game:GetService("ReplicatedStorage").Modules.Bins.UnitUpgradeData)
    local Actions = require(game:GetService("ReplicatedStorage").Actions)
    local UnitUpgradeDataRec = require(game:GetService("ReplicatedStorage").Modules.Bins.UnitUpgradeData)
    local Bitbuf = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Bitbuf"))
    function GetBytes(args)
        local HttpService = game.HttpService

        Encode = HttpService:JSONEncode(args)

        local Buffer = Bitbuf.new()

        local rnd1 = math.random(42, 48) + math.random(1, 4)

        Buffer:writeUnit(9, rnd1)

        Buffer:WriteUint(rnd1, math.floor(workspace:GetServerTimeNow()))

        Buffer:writeUnit(19, #Encode)
        
        Buffer:WriteBytes(Encode)

        Buffer:writeUnit(9, math.random(1, 31))

        return Buffer:String()
    end
    function EventCrypt(Type)
        return Actions[Type].name
    end
    function FireEvent(Type, ...)
        local ActionsPath = game:GetService("ReplicatedStorage").Actions
        local Crypt = EventCrypt(Type)
        if Type == 'SUMMON' and ActionsPath.Invokables:FindFirstChild(Crypt) then
            return Crypt and ActionsPath.Invokables:FindFirstChild(Crypt):InvokeServer(GetBytes({...}))
        end 
        return Crypt and ActionsPath.Action:FireServer(GetBytes({Crypt, ...}))
    end
    function IsLobby()
        return Values.GAME_MODE.value == nil
    end
    
    function IsMatch()
        return Values.GAME_MODE.value ~= nil
    end
    
    ------------------------------------------------------ [[ Main ]] ------------------------------------------------------
    --Main_Story_Page
    LoadRefreshAct = false
    Text_Raids_Boss = Main_Story_Page:addLabel({title = 'Challenge : '})
    Main_Story_Page:addDropdown({
        title = "Select Story",
        list = Table_Story_Map, 
        default = SaveSettings["Main"]['Select Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Map'] = v
            Save()
            if LoadRefreshAct then
                RefreshAct()
            end
        end;
    })
    SelectAct = Main_Story_Page:addDropdown({
        title = "Select Act",
        list = DataMap[SaveSettings["Main"]['Select Map']], 
        default = SaveSettings["Main"]['Select Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Act'] = v
            Save()
        end;
    })
    Main_Story_Page:addDropdown({
        title = "Select Difficulty",
        list = {"Normal","Hard"}, 
        default = SaveSettings["Main"]['Select Difficulty'] ,
        callback = function(v)
            SaveSettings["Main"]['Select Difficulty']  = v
            Save()
        end;
    })

    Main_Story_Page:addToggle({
        title = "Enable Auto Story & Inf",
        default = SaveSettings["Main"]['Enable Auto StoryInf'] ,
        callback = function(v)
            SaveSettings["Main"]['Enable Auto StoryInf'] = v
            Save()
        end;
    })

    --Main_Mode_Page
    Main_Mode_Page:addToggle({
        title = "Friend Only",
        default = SaveSettings["Main"]['Friend Only'] ,
        callback = function(v)
            SaveSettings["Main"]['Friend Only'] = v
            Save()
        end;
    })
    Main_Mode_Page:addToggle({
        title = "Auto Join Map",
        default = SaveSettings["Main"]['Join Story'] ,
        callback = function(v)
            SaveSettings["Main"]['Join Story'] = v
            Save()
        end;
    })
    function RefreshAct()
        SelectAct.Options:Refresh(DataMap[SaveSettings["Main"]['Select Map']],SaveSettings["Main"]['Select Act']) 
    end
    LoadRefreshAct = true
    Main_Mode_Page:addDropdown({
        title = "Delay [Start,Retry,Leave]",
        list = {0,1,2,3,4,5,6,7,8,9,10}, 
        default = SaveSettings["Main"]["Delay [Start,Retry,Leave]"],
        callback = function(v)
            SaveSettings["Main"]["Delay [Start,Retry,Leave]"] = v
            Save()
        end;
    })
    Main_Mode_Page:addToggle({
        title = "Auto Start",
        default = SaveSettings["Main"]['Auto Start'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Start'] = v
            Save()
        end;
    })
    --Main_Misc_Page
    Main_Misc_Page:addToggle({
        title = "Auto Retry",
        default = SaveSettings["Main"]['Auto Retry'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Retry'] = v
            Save()
        end;
    })
    Main_Misc_Page:addToggle({
        title = "Auto Leave",
        default = SaveSettings["Main"]['Auto Leave'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Leave'] = v
            Save()
        end;
    })
    Main_Misc_Page:addLabel({title = 'If you use "Auto Retry,Auto Leave [Mobile]" \nNeed to Enable "Auto Hide UI" in "Theme" sector \nand Need to Disable "Auto Retry,Auto Leave"'})
    --Manual Click
    Main_Misc_Page:addToggle({
        title = "Auto Retry [Mobile]",
        default  = SaveSettings["Main"]['Manual Click [Retry]'] ,
        callback = function(v)
            SaveSettings["Main"]['Manual Click [Retry]'] = v
            Save()
        end ,
    })
    Main_Misc_Page:addToggle({
        title = "Auto Leave [Mobile]",
        default  = SaveSettings["Main"]['Manual Click [Leave]'] ,
        callback = function(v)
            SaveSettings["Main"]['Manual Click [Leave]'] = v
            Save()
        end ,
    })
    --CoMain_Game_Page
    CoMain_Game_Page:addToggle({
        title = "Auto Cleam Quest",
        default = SaveSettings["Main"]['Auto Cleam Quest'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Cleam Quest'] = v
            Save()
        end;
    })
    WAVE_CAP = {}
    for i = 1,300 do
        table.insert(WAVE_CAP,i)
    end
    CoMain_Game_Page:addDropdown({
        title = "Select Wave Amount",
        list = WAVE_CAP, 
        default = SaveSettings["Main"]['Select Wave Amount'],
        callback = function(v)
            SaveSettings["Main"]['Select Wave Amount'] = v
            Save()
        end;
    })

    CoMain_Game_Page:addToggle({
        title = "Auto Leave at Wave",
        default =  SaveSettings["Main"]['Auto Leave at Wave']  ,
        callback = function(v)
            SaveSettings["Main"]['Auto Leave at Wave']  = v
            Save()
        end;
    })
     
    -- Raid
    Main_Raids_Page:addDropdown({
        title = "Select Raids",
        list = Table_Raids_Map, 
        default = SaveSettings["Main"]['Select Raids'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids'] = v
            Save()
        end;
    })
    Main_Raids_Page:addToggle({
        title = "Enable Auto Raids",
        default =  SaveSettings["Main"]['Enable Auto Raids']  ,
        callback = function(v)
            SaveSettings["Main"]['Enable Auto Raids']  = v
            Save()
        end;
    })

    -- Tower of Eternity
    Main_Tower_Page:addToggle({
        title = "Enable Auto Tower of Eternity",
        default =  SaveSettings["Main"]['Auto Tower of Eternity']  ,
        callback = function(v)
            SaveSettings["Main"]['Auto Tower of Eternity']  = v
            Save()
        end;
    })

    --Challenge
    Main_Challenge_Page:addMulitDropdown({
        title = "Ignore Map",
        list = Table_Story_Map, 
        default = SaveSettings["Main"]['Select Challenge Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge Map'] = v
            Save()
        end;
    })

    local TableChallenge,TableChallengeData = {"None",},{}
    table.foreach(ChallengeData,function(i,v)
        if v['DisplayName'] then
            TableChallengeData[tostring(v.DisplayName)] = tostring(v.Description)
            table.insert(TableChallenge,tostring(v.DisplayName))
        end
    end)

    wait()
    Main_Challenge_Page:addMulitDropdown({
        title = "Ignore Challenge",
        list = TableChallenge, 
        default = SaveSettings["Main"]['Select Challenge'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge'] = v
            Save()
        end;
    })
    Main_Challenge_Page:addMulitDropdown({
        title = "Ignore Reward",
        list = {"None","Gold","Enegery Crystal","Trait Crystal","Risky Dice","Frost Bind","Star Rift (Rainbow)","Star Rift (Purple)","Star Rift (Red)","Star Rift (Green)","Star Rift (Blue)"}, 
        default = SaveSettings["Main"]['Select Challenge Reward'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge Reward'] = v
            Save()
        end;
    })
    Main_Challenge_Page:addToggle({
        title = "Enable Auto Challenge",
        default =  SaveSettings["Main"]['Enable Auto Challenge']  ,
        callback = function(v)
            SaveSettings["Main"]['Enable Auto Challenge']  = v
            Save()
        end;
    })


    ------------------------------------------------------ [[ Summon ]] ------------------------------------------------------
    Text_Emeralds = Auto_Summon_Page:addLabel({title = 'Gold : N/A \n Gem : N/A  | Trait Crystal  : N/A \n Frost Bind : N/A | Dice  : N/A ' })
    Auto_Summon_Page:addDropdown({
        title = "Select Banner",
        list = {'Standard'}, 
        default = SaveSettings["Summon"]['Select Banner'],
        callback = function(v)
            SaveSettings["Summon"]['Select Banner'] = v
            Save()
        end;
    })
    Auto_Summon_Page:addDropdown({
        title = "Select Method",
        list = {'x1',"x10"}, 
        default = SaveSettings["Summon"]['Select Method'],
        callback = function(v)
            SaveSettings["Summon"]['Select Method'] = v
            Save()
        end;
    })
    Auto_Summon_Page:addToggle({
        title = "Auto Summon",
        default = SaveSettings["Summon"]['Auto Summon'] ,
        callback = function(v)
            SaveSettings["Summon"]['Auto Summon'] = v
            Save()
        end;
    })
    task.spawn(function()
        while task.wait() do
            if SaveSettings["Summon"]['Auto Summon'] then
                if SaveSettings["Summon"]['Select Banner'] == 'Standard' then
                    if SaveSettings["Summon"]['Select Method'] == "x1" then
                        FireEvent('SUMMON', "Standard", 1)
                    elseif SaveSettings["Summon"]['Select Method'] == "x10" then
                        FireEvent('SUMMON', "Standard", 10)
                    end
                end
            end
            task.wait(.25)
        end
    end)

    Table_Code = {
        "release2024",
        "subcool",
        "sub2toadboigaming",
        "sub2mozking",
        "sub2karizmaqt",
        "sub2jonaslyz",
        "sub2riktime",
        "sub2nagblox",
        "adontop",
        "200kholymoly",
    }
    Auto_Summon_Page:addButton({
        title = "Redeem Code",
        callback = function()
            for i,v in pairs(Table_Code) do
                FireEvent('CODE_USE', v)
            end
        end,
    })
    ------------------------------------------------------ [[ Macro ]] ------------------------------------------------------
    function CreateMarocList()
        Select_Macro_Profile = {}
        for i,v in pairs(listfiles("HolyShz/AnimeDefenders/Macro")) do
            if string.find(v,[[\]]) then
                table.insert(Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
            else
                table.insert(Select_Macro_Profile, tostring(v:split([[/]])[4]:gsub(".json", "")))
            end
        end
        return Select_Macro_Profile
    end
    local MacroStats = Macro_Setting_Page:addLabel({title = 'Main : N/S'})
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
                if not isfile("HolyShz/AnimeDefenders/Macro/" .. tostring(MacroName)..".json") then
                    writefile("HolyShz/AnimeDefenders/Macro/" .. tostring(MacroName)..".json", game:GetService("HttpService"):JSONEncode({}))
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
            if isfile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                delfile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json")
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
            if game.PlaceId ~= 17017769292 then
                if RecordMacroToggle and type(SaveSettings['Macro']['Macro Select']) ~= "None" then
                    LocalPlayer.PlayerGui:WaitForChild("WaveTopBar"):WaitForChild("Wave"):WaitForChild("WaveFrame")
                    if game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible then
                        UI:Notify({
                            title = "Notification",
                            text = "Macro Status : Waiting Wave Start"
                        })
                        repeat wait() until not game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible
                    end
                    if (MapValues['GAME_WAVE']['value'] == "Starting" or (tostring(game:GetService("Players").LocalPlayer.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel.text) == "1" or tostring(game:GetService("Players").LocalPlayer.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel.text) == "1/15")
                    or game:GetService("Players").LocalPlayer.PlayerGui.HUD.WaveNumberNotification.WaveNumberText.text == "Wave 1 Started" ) then
                        UI:Notify({
                            title = "Notification",
                            text = "Macro Status : Waiting Wave Start GAME_WAVE"
                        })
                        repeat wait() until (MapValues['GAME_WAVE']['value'] ~= "Starting" or (tostring(game:GetService("Players").LocalPlayer.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel.text) ~= "1" or tostring(game:GetService("Players").LocalPlayer.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel.text) ~= "1/15") or game:GetService("Players").LocalPlayer.PlayerGui.HUD.WaveNumberNotification.WaveNumberText.text ~= "Wave 1 Started" )
                    end
                    NumberPlace,Index,TimeInGame = 1,1,0
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
                    writefile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                end
            end
        end ,
    })
    --znue1WdW 145236789
    NumberPlace,Index,TimeInGame = 1,1,0
    local PlayerData = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
    if not IsLobby() then
        local EquippedUnitsData = {}
        table.foreach(PlayerData['EquippedUnits'],function(i,v)
            EquippedUnitsData[PlayerData['Units'][v]['Type']] = v
        end)
        task.spawn(function()
            while wait() do
                if RecordMacroToggle and game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible then
                    RecordMacroToggle = false
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                end
            end
        end)
        workspace.Units.ChildAdded:Connect(function(v)
            if v:WaitForChild("CurrentUnitStand") then
                if RecordMacroToggle then
                    if LocalPlayer.PlayerGui.MatchIntroGui.Holder.Challenge.TextLabel.Text == "All units increased cost" then
                        MacroStats.Options:ChangeText("Status: Record Marcro [ PlaceTower ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. MapValues['GAME_WAVE']['value']['min'] .. " | Used Money : $" .. comma_value((UnitUpgradeDataRec[v.Name][v:GetAttribute('CurrentUnitUpgradeStand') or #UnitUpgradeData[v.Name]]['Cost']) * 1.25) )
                    else
                        MacroStats.Options:ChangeText("Status: Record Marcro [ PlaceTower ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. MapValues['GAME_WAVE']['value']['min'] .. " | Used Money : $" .. comma_value(UnitUpgradeDataRec[v.Name][v:GetAttribute('CurrentUnitUpgradeStand') or #UnitUpgradeData[v.Name]]['Cost']) )
                    end
                    local DataTable = {
                        ['Time'] = Timelapse() - StartRecordTime,
                        ['Index'] = Index,
                        ["Method_Data"] = {
                            ["Method"] = tostring('PlaceTower'),
                            ["Data"] = {
                                ['Wave'] = MapValues['GAME_WAVE']['value']['min'] or 0,
                                ["UnitPlace"] = tostring(EquippedUnitsData[v.Name]),
                                ["UnitName"] = v.Name,
                                ["CFrame"] = tostring(v:GetModelCFrame())
                            }
                        }
                    }
                    table.insert(getgenv().RecordMacro, DataTable)
                    table.sort(getgenv().RecordMacro , function(a,b)
                        return tonumber(a['Index']) < tonumber(b['Index'])
                    end)
                    writefile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    Index = Index + 1

                    -- Upgrade
                    v:GetAttributeChangedSignal("CurrentUnitUpgradeStand"):Connect(function(NewValue) 
                        if LocalPlayer.PlayerGui.MatchIntroGui.Holder.Challenge.TextLabel.Text == "All units increased cost" then
                            MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. tostring(v.Name) .. " \n Wave : " .. MapValues['GAME_WAVE']['value']['min'] .. " | Used Money : $" .. comma_value((UnitUpgradeDataRec[v.Name][v:GetAttribute('CurrentUnitUpgradeStand') or #UnitUpgradeData[v.Name]]['Cost']) * 1.25) )
                        else
                            MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. tostring(v.Name) .. " \n Wave : " .. MapValues['GAME_WAVE']['value']['min'] .. " | Used Money : $" .. comma_value(UnitUpgradeDataRec[v.Name][v:GetAttribute('CurrentUnitUpgradeStand') or #UnitUpgradeData[v.Name]]['Cost']) )
                        end
                        local DataTable = {
                            ['Time'] = Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Upgrade'),
                                ["Data"] = {
                                    ['Wave'] = MapValues['GAME_WAVE']['value']['min'] or 0,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                    
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    
                        Index = Index + 1
                    end)

                    Actions['TOWER_CHANGE_PRIORITY']:Connect(function(i,v)
                        for j,k in pairs(workspace.Units:GetChildren()) do
                            if tonumber(k:GetAttribute("Entity")) == tonumber(i) then
                                Units = k
                                break
                            end
                        end
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Targeting ]\nTower : " .. tostring(Units.Name) .. " \n Wave : " .. MapValues['GAME_WAVE']['value']['min'] or 0)
                        local DataTable = {
                            ['Time'] = Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Targeting'),
                                ["Data"] = {
                                    ['Wave'] = MapValues['GAME_WAVE']['value']['min'] or 0,
                                    ["UnitPlace"] = Units.NumberTower.Value,
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                        
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

        workspace.Units.ChildRemoved:Connect(function(v)
            if RecordMacroToggle then
                MacroStats.Options:ChangeText("Status: Record Marcro [ Selling ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. MapValues['GAME_WAVE']['value']['min'] or 0 )
                local DataTable = {
                    ['Time'] = Timelapse() - StartRecordTime,
                    ['Index'] = Index,
                    ["Method_Data"] = {
                        ["Method"] = tostring('Selling'),
                        ["Data"] = {
                            ['Wave'] = MapValues['GAME_WAVE']['value']['min'] or 0,
                            ["UnitPlace"] = v.NumberTower.Value,
                        }
                    }
                }
                table.insert(getgenv().RecordMacro, DataTable)
                table.sort(getgenv().RecordMacro , function(a,b)
                    return tonumber(a['Index']) < tonumber(b['Index'])
                end)
                writefile("HolyShz/AnimeDefenders/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
            
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
    function Replay()
        spawn(function()
            local e, s = pcall(function()
                if not IsLobby() then
                    local MapName = game:GetService("Players").LocalPlayer.PlayerGui.MatchIntroGui.Holder.Map.TextLabel.Text

                    MacroMapCheck = SaveSettings['Macro']['Macro Map'][tostring(MapValues['GAME_MODE']['value'])][tostring(MapName)]
                    print("Select Macro File : " .. MacroMapCheck)
                    MacroSelect.Options:Refresh(CreateMarocList(),MacroMapCheck) 

                    MacroMapSelect = MacroMapCheck == 'None' and tostring(SaveSettings['Macro']['Macro Select']) or MacroMapCheck
                    if SaveSettings['Macro']['Play Macro'] and isfile("HolyShz/AnimeDefenders/Macro/" .. tostring(MacroMapSelect)..".json") then
                        local Macro = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeDefenders/Macro/" .. tostring(MacroMapSelect)..".json"))
                        table.sort(Macro, function(a,b)
                            return tonumber(a["Index"]) < tonumber(b["Index"])
                        end)
                        --TotalIndex
                        local TableIndex = {}
                        table.foreach(Macro,function(i,v)
                            table.insert(TableIndex,v['Index'])
                        end)
                        if game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible then
                            UI:Notify({
                                title = "Notification",
                                text = "Macro Status : Waiting Wave Start"
                            })
                            repeat wait() until not game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible
                        end
                        if MapValues['GAME_WAVE']['value'] == "Starting" then
                            UI:Notify({
                                title = "Notification",
                                text = "Macro Status : Waiting Wave Start GAME_WAVE"
                            })
                            repeat wait() until MapValues['GAME_WAVE']['value'] ~= "Starting"
                        end
                        StartRecordTime = Timelapse()
                        NumberPlace,Index,TimeInGame = 1,1,0
                        print("Started")
                        wait()

                        for i,v in pairs(Macro) do
                            local UNIT;
                            UnitUpgradeDataReplay = require(game:GetService("ReplicatedStorage").Modules.Bins.UnitUpgradeData)
                            if v["Method_Data"]["Method"] == "PlaceTower" then
                                if v["Index"] ~= math.max(unpack(TableIndex)) and LocalPlayer.PlayerGui.MatchIntroGui.Holder.Challenge.TextLabel.Text == "All units increased cost" then
                                    MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitName"] .. "\n Waiting For : $" .. comma_value((UnitUpgradeDataReplay[v["Method_Data"]["Data"]["UnitName"]][1]['Cost']) * 1.25)  )
                                elseif v["Index"] ~= math.max(unpack(TableIndex)) and LocalPlayer.PlayerGui.MatchIntroGui.Holder.Challenge.TextLabel.Text ~= "All units increased cost" then
                                    MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitName"] .. "\n Waiting For : $" .. comma_value(UnitUpgradeDataReplay[v["Method_Data"]["Data"]["UnitName"]][1]['Cost'])  )
                                elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                    MacroStats.Options:ChangeText('Status: Play Ended.')
                                end
                                repeat wait() until (LocalPlayer.leaderstats.Yen.Value >= tonumber(UnitUpgradeDataReplay[v["Method_Data"]["Data"]["UnitName"]][1]['Cost']))
                                local UnitName = v["Method_Data"]["Data"]["UnitPlace"]
                                FireEvent('UNIT_PLACE', UnitName, tostring(v["Method_Data"]["Data"]["CFrame"]), tonumber(1))
                            elseif v["Method_Data"]["Method"] == "Upgrade" then
                                for index, value in pairs(game:GetService("Workspace")["Units"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"])  then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) and LocalPlayer.PlayerGui.MatchIntroGui.Holder.Challenge.TextLabel.Text == "All units increased cost" then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex))  .."]\nTower : " .. tostring(value.Name) .. "\n Waiting For : $" .. tonumber((UnitUpgradeDataReplay[value.Name][value:GetAttribute('CurrentUnitUpgradeStand') + 1 or #UnitUpgradeDataReplay[value.Name]]['Cost']) * 1.25) )
                                        elseif v["Index"] ~= math.max(unpack(TableIndex)) and LocalPlayer.PlayerGui.MatchIntroGui.Holder.Challenge.TextLabel.Text ~= "All units increased cost" then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex))  .."]\nTower : " .. tostring(value.Name) .. "\n Waiting For : $" .. tonumber(UnitUpgradeDataReplay[value.Name][value:GetAttribute('CurrentUnitUpgradeStand') + 1 or #UnitUpgradeDataReplay[value.Name]]['Cost']) )
                                        elseif v["Index"] == math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until (LocalPlayer.leaderstats.Yen.Value >= tonumber(UnitUpgradeDataReplay[value.Name][value:GetAttribute('CurrentUnitUpgradeStand') + 1 or #UnitUpgradeDataReplay[value.Name]]['Cost']))
                                        FireEvent('UNIT_UPGRADE', value:GetAttribute("Entity"))
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Selling" then
                                for index, value in pairs(game:GetService("Workspace")["Units"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. tostring(value.Name) .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Time : " .. tostring(string.format("%.2f", (Timelapse() - StartRecordTime))) .. "/" .. tostring(string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)'])))) )
                                        elseif v["Index"] == math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until MapValues['GAME_WAVE']['value']['min'] >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))

                                        FireEvent('TOWER_SELL', value:GetAttribute("Entity"))
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Targeting" then
                                for index, value in pairs(game:GetService("Workspace")["Units"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then 
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. tostring(value.Name) .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Change Target : " .. v["Method_Data"]["Data"]["Targeting"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end 
                                        repeat wait() until MapValues['GAME_WAVE']['value']['min'] >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))
                                        if not v["Method_Data"]["Data"]["Targeting"] then
                                            FireEvent('TOWER_CHANGE_PRIORITY', value:GetAttribute("Entity"))
                                        end
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Ability" then
                                for index, value in pairs(game:GetService("Workspace")["Units"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. tostring(value.Name) .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Time : " .. tostring(string.format("%.2f", (Timelapse() - StartRecordTime))) .. "/" .. tostring(string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)'])))) )
                                        elseif v["Index"] == math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until MapValues['GAME_WAVE']['value']['min'] or 0 >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))

                                        break
                                    end
                                end
                            end
                            wait(1)
                        end
                    end
                end
            end)
            if not e and s then
                warn(s)
            end
        end)
    end
    Macro_Play_Page:addToggle({
        title = "Play Macro",
        default  = SaveSettings['Macro']['Play Macro'] ,
        callback = function(v)
            SaveSettings['Macro']['Play Macro'] = v
            Save()

            Replay()
        end ,
    })
    Macro_Play_Page:addLabel({title = "It's a BETA version has a Bug and Problem \n If you found a Bug please report in Discord"})
    ------------------------------------------------------ [[ Macro Map ]] ------------------------------------------------------
    local Macro_Setting_Page = MacroMapTap:addSection({
        title = "Macro - Setting"
    })

    local GAME_MODE = {'Story','Infinite','Challenge',"Raid"}
    local RefreshMacroMap = {}
    for i,GAME_MODE in pairs(GAME_MODE) do
        if not SaveSettings['Macro']['Macro Map'][GAME_MODE] then
            SaveSettings['Macro']['Macro Map'][GAME_MODE] = {}
        end
        local Macro_Setting_Page = MacroMapTap:addSection({
            title = "Macro - " .. GAME_MODE
        })

        if GAME_MODE == "Raid" then   
            for i,NameMap in pairs(Table_Raids_Map) do
                if not SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap] then
                    SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap] = "None"
                end

                RefreshMacroMap[GAME_MODE .. "_" .. NameMap] = Macro_Setting_Page:addDropdown({
                    title = NameMap,
                    list = CreateMarocList(), 
                    default = SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap],
                    callback = function(v)
                        SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap] = v
                        Save()
                    end;
                })
            end
        else
            for i,NameMap in pairs(Table_Story_Map) do
                if not SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap] then
                    SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap] = "None"
                end

                RefreshMacroMap[GAME_MODE .. "_" .. NameMap] = Macro_Setting_Page:addDropdown({
                    title = NameMap,
                    list = CreateMarocList(), 
                    default = SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap],
                    callback = function(v)
                        SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap] = v
                        Save()
                    end;
                })
            end
        end
    end

    Macro_Setting_Page:addButton({
        title = "Refressh Macro",
        callback = function()
            for i,v in pairs(RefreshMacroMap) do
                GAME_MODE = i:split("_")[1]
                NameMap = i:split("_")[2]
                v.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap]) 
            end
        end,
    })
    ------------------------------------------------------ [[ Webhook ]] ------------------------------------------------------
    local Table_Webhook_Traits = {
        ["nil"] = "",
        ["Almighty 1"] = "<:Almighty:1252602149196533813>",
        ["Requiem 1"] = "<:Requiem:1252602219451125790>",
        ["Precision 1"] = "<:Precision:1252602262157791293>",
        ["Sonic 1"] = "<:Sonic:1252602316654248046>",
        ["Midas Touch 1"] = "<:MidasTouch:1252602348686016582>",
        ["Bullseye 1"] = "<:Bullseye:1252602421440413838>",
        ["Prodigy 1"] = "<:Prodigy:1252602471205965845>",
        ["Critical 3"] = "<:Critical3:1252602554261573784>",
        ["Critical 2"] = "<:Critical2:1252602601208283187>",
        ["Critical 1"] = "<:Critical1:1252602637652852827>",
        ["Hunter 3"] = "<:Hunter3:1252602680048615475>",
        ["Hunter 2"] = "<:Hunter2:1252602722931441755>",
        ["Hunter 1"] = "<:Hunter1:1252602753029636237>",
        ["Swiftness 3"] = "<:Swiftness3:1252602810940260352>",
        ["Swiftness 2"] = "<:Swiftness2:1252602848005591090>",
        ["Swiftness 1"] = "<:Swiftness1:1252602884172808243>",
        ["Brawler 3"] = "<:Brawler3:1252602918113116241>",
        ["Brawler 2"] = "<:Brawler2:1252602971473317918>",
        ["Brawler 1"] = "<:Brawler1:1252603005929525318>" 
    }

    local color = (0 * 65536) + (255 * 256) + 255
    local Headers = {["content-type"] = "application/json"} -- Don't Modify
    local Time = os.date('!*t', OSTime);

    local PlayerDataWH2 = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
    --Unit_Kill
    function Unit_Kill()
        local CountAmountUnit = 1
        local TextUnitKills = ""
        if SaveSettings["Notifier"]["Send Unit Kills"] then
            PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
            for i1,v1 in pairs(PlayerDataKills['EquippedUnits']) do
                if table.find(SaveSettings["Notifier"]['Select Unit'],tostring(i1)) then
                    PlayerDataKillsInfo = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                    for i2,v2 in pairs(PlayerDataKillsInfo['Units']) do
                        if tostring(v1) == tostring(i2) then
                            local UnitLevelData = require(game:GetService("ReplicatedStorage").Modules.Bins.UnitLevelData)
                            local LevelXPNow = tostring(v2.XP)
                            local LevelXPNext = UnitLevelData[(v2.Level)]
                            if v2.Level == 60 then
                                LevelXPNow = "Max"
                                LevelXPNext = "Max" 
                            else
                                LevelXPNow = tostring(v2.XP)
                                LevelXPNext = UnitLevelData[((v2.Level) + 1)]
                            end
                            --Rank
                            local Ranks = PlayerDataKillsInfo['Units'][(tostring(v1))]['Ranks']
                            local DMGRanks = Ranks.Damage
                            local CDRanks = Ranks.Cooldown
                            local RNGRanks = Ranks.Range
                            --Kills
                            PlayerDataKillsInfo = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                            local UnitDataK = PlayerDataKillsInfo['Units'][(tostring(v1))]['Statistics']
                            UnitKill = UnitDataK.Kills     
    
                            --Traits
                            PlayerDataKillsInfo = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                            local Traits = PlayerDataKillsInfo['Units'][(tostring(v1))]['Traits']
                            local Traits1_Resulte = tostring(Traits[1])
                            local Traits2_Resulte = tostring(Traits[2])
    
                            --BuffSlot1
                            Traits1_Resulte = Table_Webhook_Traits[Traits1_Resulte]
                            --BuffSlot2
                            Traits2_Resulte = Table_Webhook_Traits[Traits2_Resulte]
    
                            if v2.Worthiness == nil then
                                v2.Worthiness = 0
                                TextUnitKills = TextUnitKills .. "**[Lv." .. tostring(comma_value(v2.Level)) .. "] • (" .. (comma_value(LevelXPNow)) .. "**/**" .. (comma_value(LevelXPNext)) ..") • ** __**" .. tostring(v2.Type) .. "**__ | " .. Traits1_Resulte .. "" .. Traits2_Resulte .. " **|** **[" .. DMGRanks .. "]** **[" .. CDRanks .. "]** **["  .. RNGRanks .. "] | [Worthiness : " .. tostring(string.format('%.2f',v2.Worthiness)) .. "%]**\n"
                            else
                                TextUnitKills = TextUnitKills .. "**[Lv." .. tostring(comma_value(v2.Level)) .. "] • (" .. (comma_value(LevelXPNow)) .. "**/**" .. (comma_value(LevelXPNext)) ..") • ** __**" .. tostring(v2.Type) .. "**__ | " .. Traits1_Resulte .. "" .. Traits2_Resulte .. " **|** **[" .. DMGRanks .. "]** **[" .. CDRanks .. "]** **["  .. RNGRanks .. "] | [Worthiness : " .. tostring(string.format('%.2f',v2.Worthiness)) .. "%]**\n"
                                CountAmountUnit = CountAmountUnit + 1
                            end
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
        return TextUnitKills
    end
    if game.PlaceId ~= 17017769292 then
        TextUnitKills = Unit_Kill()
    end
    --End_Unit_Kill

    local TestDataLobby = {
        ["content"] = "",
        ["type"] = "rich",

        ["embeds"] = {
            {
                ["title"] = "**Anime Defenders : Leave at Wave " .. tonumber(SaveSettings["Main"]['Select Wave Amount']) .. "**",
                ["author"] = {
                    ["name"] = "HolyShz Webhook - Anime Defenders ",
                    ["icon_url"] = "https://tr.rbxcdn.com/cf143cdddac61fab5f5765dce4febdd3/150/150/Image/png",
                },
                ["thumbnail"] = {
                    ["url"] = "https://cdn.discordapp.com/attachments/844228874221125741/1244324443250098227/New.png?ex=66595031&is=6657feb1&hm=de18849576f885552b4743dfd68ac3bb9b94bd0e187db17dfec61ebfe966adce&",
                },
                ["image"] = {
                    ["url"] = "https://tr.rbxcdn.com/af8187431074d8377a331fca46ec890f/768/432/Image/Png"
                },
                ["description"] = "Player Name : ||**" ..game:GetService("Players").LocalPlayer.DisplayName.. " (" ..game:GetService("Players").LocalPlayer.Name.. ") **||\n **".. tostring(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Toolbar.XPBar.XPAmount.Text) .. " **",
                ["color"] = tonumber(color),
                ["timestamp"] = string.format("%d-%d-%dT%02d:%02d:%02dZ", Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                ["footer"] = {
                    ["text"] = "// Script by HolyShz & kitsuna",
                },
                ["fields"] = {
                    {
                        ["name"] = ":robot:** • -> Player Stats <- • **:robot:",
                        ["value"] = "\n" .. "<:Gem:1245532591981858916>" .. " Gem : ".. comma_value(PlayerDataWH2.Currencies.Gems) ..
                                    "\n" .. "<:Gold:1245532595270189188>" .. " Gold : ".. comma_value(PlayerDataWH2.Currencies.Gold) ..
                                    "\n" .. "<:TraitCrystal:1245532370116018236>" .. " Trait Crystal : ".. comma_value(PlayerDataWH2.Items['Trait Crystal'] or 0) ..
                                    "\n" .. "<:Dice:1245532589226197042>" .. " Dice : ".. comma_value(PlayerDataWH2.Items['Risky Dice'] or 0) ..
                                    "\n" .. "<:FrostBind:1245534927487897640>" .. " Frost Bind : ".. comma_value(PlayerDataWH2.Items['Frost Bind'] or 0)
                            ,
                        ["inline"] = false
                    },
                    {
                        ["name"] = ":smirk_cat: **• -> Unit Stats <- •** :smirk_cat:",
                        ["value"] = "\n" .. tostring(TextUnitKills) .. " ",
                        ["inline"] = false
                    },
                },
            },
        }
    }

    local TestDataLobby = game:GetService('HttpService'):JSONEncode(TestDataLobby)
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
            if game.PlaceId ~= 17017769292 then
                HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=TestDataLobby, Method="POST", Headers=Headers})
            else
                HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=TestDataLobby, Method="POST", Headers=Headers})
            end
        end
    })

    ItemsDatainfo = require(game:GetService("ReplicatedStorage").Modules.Bins.ItemData)
    local TableItemData = {}
    for i,v in pairs(ItemsDatainfo) do
        table.insert(TableItemData,tostring(i))
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

    PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
    local TableUnitSlotData = {}
    if not (PlayerDataKills['EquippedUnits']) then
        print("Can't Load Slots")
    else
        PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
        for i,v in pairs(PlayerDataKills['EquippedUnits']) do
            table.insert(TableUnitSlotData,tostring(i))
        end
    end
    WebhookPage:addMulitDropdown({
        title = "Select Unit Slots",
        list = TableUnitSlotData, 
        default = SaveSettings["Notifier"]['Select Unit'],
        callback = function(v)
            SaveSettings["Notifier"]['Select Unit'] = v
            Save()
        end;
    })

    WebhookPage:addToggle({
        title = "Send Unit Status [Select Unit]",
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

    --Webhook Method 1
    spawn(function()
        while wait() do
            if SaveSettings["Notifier"]["Webhook Url"] == "nil" then return end 
            if LocalPlayer.PlayerGui:FindFirstChild('PAGES'):FindFirstChild('MatchResultPage') and LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible and SaveSettings["Notifier"]["Send After End Game"] then
                print("555")
                local PlayerDataWH = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                local GameMapValuesWH = game:GetService("ReplicatedStorage").Values.Init:InvokeServer()
                local MapWaveValues = require(game:GetService("ReplicatedStorage").Values)

                --Wave_Time_resulte
                MapValuesEX2 = require(game:GetService("ReplicatedStorage").Values)
                WaveEnd = MapValuesEX2['GAME_WAVE']['value']['min']
                PlayerItemsDataAll = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()

                local CountAmount = 1
                local TextDropLabel = ""
                local Table_Items_Drops = {}

                --EXP
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Statistics:GetChildren()) do
                    if v:IsA("Frame") then
                        if v.Name == "Experience" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". EXP " .. v.CategoryStat.Text .. "\n"
                            CountAmount = CountAmount + 1
                        end
                    end
                end
                --ITEMs
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Rewards:GetChildren()) do
                    if v:IsA("Frame") then

                        if v.Name == "Gems" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " <:Gem:1245532591981858916>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Gold" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " <:Gold:1245532595270189188>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Trait Crystal" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:TraitCrystal:1245532370116018236>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Risky Dice" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Dice:1245532589226197042>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Frost Bind" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:FrostBind:1245534927487897640>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Meat" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Meat:1245553857627426877>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Cursed Object" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:CursedOb:1245817226578231336>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Underwater Chest" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Screenshot20240615105319:1251384581945425920>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Energy Crystal" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:EnergyCrys:1245817229157859388>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Aline Fruit" or v.Name == "Alien Fruit" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:AlineF:1251758613614034984>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Ancient Scroll" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:AncieanScroll:1257776126726639646>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Mana Crystal" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:ManaCrystal:1257776137871032393>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Jester's Hat" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:JesterHat:1257776133865476147>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Winter Herb" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:WinterHerb:1257776144300904570>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Rainbow)" or v.Name == "Star Rift(Rainbow)" or v.Name == "StarRift (Rainbow)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Srain:1245817239949676695>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Blue)" or v.Name == "Star Rift(Blue)" or v.Name == "StarRift (Blue)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Sblue:1245817231406006313>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Green)" or v.Name == "Star Rift(Green)" or v.Name == "StarRift (Green)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Sgreen:1245817234350407770>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Red)" or v.Name == "Star Rift(Red)" or v.Name == "StarRift (Red)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Sred:1245817242831163484>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Purple)" or v.Name == "Star Rift(Purple)" or v.Name == "StarRift (Purple)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:Spurple:1245817236862795777>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Yellow)" or v.Name == "Star Rift(Yellow)" or v.Name == "StarRift (Yellow)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:StarRiftYellow:1251753052902391808>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Dark)" or v.Name == "Star Rift(Dark)" or v.Name == "StarRift (Dark)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:StarRiftDark:1257776139611537478>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Star Rift (Light)" or v.Name == "Star Rift(Light)" or v.Name == "StarRift (Light)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:StarRiftLight:1257776142404943884>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Raid Shards (Red)" or v.Name == "RaidShards (Red)" or v.Name == "Raid Shards(Red)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:RaidShardsRed:1251276787053498368>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Raid Shards (Yellow)" or v.Name == "RaidShards (Yellow)" or v.Name == "Raid Shards(Yellow)" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:RaidShardsYellow:1257727138065416257>\n"
                            CountAmount = CountAmount + 1
                        elseif v.Name == "Magic Mirror" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] <:MagicMirror:1257776136130400329>\n"
                            CountAmount = CountAmount + 1
                        else
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Button.CountLabel.Text .. " -> " .. v.Button.NameLabel.Text .. " [Total : " .. PlayerItemsDataAll['Items'][tostring(v.Name)] .."] :anger:\n"
                            CountAmount = CountAmount + 1
                        end
                    end
                end

                if TextDropLabel == "" then
                    TextDropLabel = "Not Have Items Drops"
                end

                --End_Item_All

                --Unit_Kill
                TextUnitKills = Unit_Kill()

                --Send_Total_Item_Inventory
                local CountAmountAll = 1
                local TextDropLabelAll = ""
                local AllTextItemLogo = ""
                if SaveSettings["Notifier"]["Send All Item"] then
                    --Normal_Item
                    ItemsDatainfo2 = require(game:GetService("ReplicatedStorage").Modules.Bins.ItemData)
                    PlayerItemsData = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                    for i,v in pairs(PlayerItemsData['Items']) do
                        if table.find(SaveSettings["Notifier"]['Select Item'],tostring(i)) then
                            if i == "Meat" then
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(i) .. " -> " ..  tostring(comma_value(v)) .. "/" .. comma_value(ItemsDatainfo2[tostring(i)].StackSize) .. "\n"
                                CountAmountAll = CountAmountAll + 1
                            else
                                TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(i) .. " -> " ..  tostring(comma_value(v)) .. "/" .. comma_value(ItemsDatainfo2[tostring(i)].StackSize) .. "\n"
                                CountAmountAll = CountAmountAll + 1
                            end
                        end
                    end 
                else
                    TextDropLabelAll = " • -> Disable Function • rn <- • "
                end

                if TextDropLabelAll == ""  then
                    TextDropLabelAll = " Can't Loading Inventory "
                end 

                local thumbnails_avatar = HttpService:JSONDecode(game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. game:GetService("Players").LocalPlayer.UserId .. "&size=150x150&format=Png&isCircular=true", true))
                local Time = os.date('!*t', OSTime);
                local PlayerData_Setting = {
                    ["content"] = "",
                    ["type"] = "rich",
                    ["embeds"] = {
                        {
                            ["title"] = "**Anime Defenders **:",
                            ["author"] = {
                                ["name"] = "HolyShz Webhook - Anime Defenders",
                                ["icon_url"] = "https://tr.rbxcdn.com/cf143cdddac61fab5f5765dce4febdd3/150/150/Image/png",
                            },
                            ["thumbnail"] = {
                                ["url"] = "https://cdn.discordapp.com/attachments/844228874221125741/1244324443250098227/New.png?ex=66595031&is=6657feb1&hm=de18849576f885552b4743dfd68ac3bb9b94bd0e187db17dfec61ebfe966adce&",
                            },
                            ["image"] = {
                                ["url"] = "https://tr.rbxcdn.com/af8187431074d8377a331fca46ec890f/768/432/Image/Png"
                            },
                            ["description"] = "Player Name : ||**" ..game:GetService("Players").LocalPlayer.DisplayName.. " (" ..game:GetService("Players").LocalPlayer.Name.. ") **||\n **".. tostring(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Toolbar.XPBar.XPAmount.Text) .. " **",
                            ["color"] = tonumber(color),
                            ["timestamp"] = string.format("%d-%d-%dT%02d:%02d:%02dZ", Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                            ["footer"] = {
                                ["text"] = "// Script by HolyShz & kitsuna",
                            },
                            ["fields"] = {
                                {
                                    ["name"] = ":robot:** • -> Player Stats <- • **:robot:",
                                    ["value"] = "\n" .. "<:Gem:1245532591981858916>" .. " Gem : ".. comma_value(PlayerDataWH.Currencies.Gems) ..
                                                "\n" .. "<:Gold:1245532595270189188>" .. " Gold : ".. comma_value(PlayerDataWH.Currencies.Gold) ..
                                                "\n" .. "<:TraitCrystal:1245532370116018236>" .. " Trait Crystal : ".. comma_value(PlayerDataWH.Items['Trait Crystal'] or 0) ..
                                                "\n" .. "<:Dice:1245532589226197042>" .. " Dice : ".. comma_value(PlayerDataWH.Items['Risky Dice'] or 0) ..
                                                "\n" .. "<:FrostBind:1245534927487897640>" .. " Frost Bind : ".. comma_value(PlayerDataWH.Items['Frost Bind'] or 0)
                                        ,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = ":video_game: **• -> Game Stats <- •** :video_game:",
                                    ["value"] = "\n• Mode -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.HUD.HolderLeftBottom.ServerInformationFrame.GameModeLabel.text) ..
                                                "\n• Map -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.MapLabel.Text) ..
                                                "\n• Act -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.ChapterLabel.Text) ..
                                                "\n• Challenge -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.ChallangeLabel.Text) ..
                                                "\n• Wave End -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel.Text)  ..
                                                "\n• Time Elapsed -> " .. tostring(FormatTime(workspace.DistributedGameTime)) .. 
                                                "\n• Results -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Banner.TextLabel.Text) 
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
                local PlayerData_WH = game:GetService('HttpService'):JSONEncode(PlayerData_Setting)
                HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=PlayerData_WH, Method="POST", Headers=Headers})
                wait(30)
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

            tpservice:Teleport(17017769292, plr)
        end
    })
    Setting:addButton({
        title = "Hop Server",
        callback = function()
            Teleport(17017769292)
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
    ------------------------------------------------------ [[ Function ]] ------------------------------------------------------
    --click_Retry
    function ClickRetry()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Options.ReplayButton
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
    end
    function ClickLeaveText()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Options.BackToLobbyButton.TextLabel
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
    end
    function ClickLeave()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Options.BackToLobbyButton
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
    end
    function ClickLeaveatWave()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Options.BackToLobbyButton
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
    end
    function ClickEnterRaidText()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PromptGui.PromptDefault.Holder.Options.Enter.TextLabel
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
    end
    function ClickEnterRaid()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.PromptGui.PromptDefault.Holder.Options.Enter.Main
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
    end

    spawn(function()
        while task.wait() do
            if SaveSettings["Main"]['Auto Cleam Quest']  then
                local Actions = require(game:GetService("ReplicatedStorage").Actions)
                local PlayerData = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                table.foreach(PlayerData['Quests'],function(i,v)
                    if SaveSettings["Main"]['Auto Cleam Quest'] and v['Current'] and v['Required'] and not v['Claimed'] then
                        if v['Current'] == v['Required'] then
                            --local args = {
                            --    [1] = Actions['QUEST_CLAIM']['name'],
                            --    [2] = tostring(i)
                            --}
                            --game:GetService("ReplicatedStorage").Actions.Action:FireServer(unpack(args))
                            wait(5)
                        end
                    end
                end)
            end 
        end
    end)
    spawn(function()
        while task.wait() do
            --Time_Challenge
            local ostime = os.date("!*t");
            local MainTime = 3600 - (0 + ostime.min * 60 + ostime.sec);
            if MainTime > 3000 then
                local Time_RAID_ENDS_TIME = MainTime - 3000;
                if Time_RAID_ENDS_TIME <= 0 then 
                    CheckRaidsOpen = false
                    Text_Raids_Boss.Options:ChangeText('Challenge : Open IN : N/S')
                else
                    CheckRaidsOpen = true
                    Text_Raids_Boss.Options:ChangeText('Challenge : Open IN : '.. convertToHMS(MainTime, false, false, true))
                end
            else
                if MainTime <= 0 then
                    Text_Raids_Boss.Options:ChangeText('Challenge : Expires IN : N/S')
                else
                    Text_Raids_Boss.Options:ChangeText('Challenge : Expires IN : '.. convertToHMS(MainTime, false, false, true))
                end;	
                CheckRaidsOpen = false	
            end

            --Challenge_TEST
            local SubStuff_DONT_DELETE = workspace:FindFirstChild("SubStuff_DONT_DELETE")
            if IsLobby() and SaveSettings["Main"]['Join Story'] and SaveSettings["Main"]['Enable Auto Challenge'] and LocalPlayer.PlayerGui:FindFirstChild("UI") and LocalPlayer.PlayerGui:FindFirstChild("UI"):FindFirstChild("GUIs") and SubStuff_DONT_DELETE:FindFirstChild('StoryPods') then
                local SubStuff_DONT_DELETE = workspace:FindFirstChild("SubStuff_DONT_DELETE")
                if SubStuff_DONT_DELETE then
                    local TableFindChallent = {}
                    table.foreach(SaveSettings["Main"]['Select Challenge'],function(i,v)
                        table.insert(TableFindChallent,TableChallengeData[tostring(v)])
                    end)

                    for i,v in pairs(LocalPlayer.PlayerGui:FindFirstChild("UI"):FindFirstChild("GUIs"):GetChildren()) do
                        local MatchDisplayFrame = v:FindFirstChild('MatchDisplayFrame')
                        local ChallengeRewardsinfo = MatchDisplayFrame:FindFirstChild('PossibleRewards')
                        local ChallengeRewards = ChallengeRewardsinfo:FindFirstChild('Holder')
                        if v.Adornee:GetAttribute("ChallengeId") and not PlayerData['CompletedChallenges'][v.Adornee:GetAttribute("ChallengeId")] and MatchDisplayFrame then
                            if not MatchDisplayFrame:FindFirstChild('MatchDetailsFrame'):FindFirstChild('ChallengeCompleted').Visible then
                                if not table.find(SaveSettings["Main"]['Select Challenge Map'],MatchDisplayFrame.MatchDetailsFrame.MapNameLabel.Text) and not table.find(TableFindChallent,MatchDisplayFrame.MatchDetailsFrame.ChallangeLabel.Text) then
                                    for i1,v2 in pairs(ChallengeRewards:GetChildren()) do
                                        if v2.Name ~= "UIGridLayout" then
                                            if not table.find(SaveSettings["Main"]['Select Challenge Reward'],tostring(v2.Name)) then
                                                if Values.CURRENT_MATCH.value ~= nil then
                                                    if SaveSettings["Main"]['Auto Start'] then
                                                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                                                        FireEvent("START_MATCH")
                                                    end
                                                else
                                                    HumanoidRootPart.CFrame = v.Adornee.CFrame
                                                    task.wait(.5)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            -- Raids_TEST
            -- Cursed Dungeon | Cursed Rail or Cursed Train
            if IsLobby() and SaveSettings["Main"]['Join Story'] and SaveSettings["Main"]['Enable Auto Raids'] and LocalPlayer.PlayerGui:FindFirstChild("UI") and LocalPlayer.PlayerGui:FindFirstChild("UI"):FindFirstChild("GUIs") and SubStuff_DONT_DELETE:FindFirstChild('StoryPods') then
                local SubStuff_DONT_DELETE = workspace:FindFirstChild("SubStuff_DONT_DELETE")
                if SubStuff_DONT_DELETE then 
                    for i,v in pairs(LocalPlayer.PlayerGui:FindFirstChild("UI"):FindFirstChild("GUIs"):GetChildren()) do
                        local MatchDisplayFrame = v:FindFirstChild('MatchDisplayFrame')
                        local ChallengeRewardsinfo = MatchDisplayFrame:FindFirstChild('PossibleRewards')
                        local ChallengeRewards = ChallengeRewardsinfo:FindFirstChild('Holder')
                    
                        local TextHolder = v:FindFirstChild('TextHolder')
                        if v.Adornee:GetAttribute("RaidId") and TextHolder:FindFirstChild('RaidLockedFrame') and TextHolder:FindFirstChild('RaidLockedFrame'):FindFirstChild('UnlockLabel').Visible and MatchDisplayFrame then
                            if SaveSettings["Main"]['Select Raids'] == MatchDisplayFrame.MatchDetailsFrame.MapNameLabel.Text then
                                if Values.CURRENT_MATCH.value ~= nil then
                                    if SaveSettings["Main"]['Auto Start'] then
                                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                                        FireEvent("START_MATCH")
                                    end
                                else
                                    table.foreach(SubStuff_DONT_DELETE.RaidPods:GetChildren(),function(i,v)
                                        local MatchDisplayPart = v:FindFirstChild("MatchDisplayPart")
                                        if MatchDisplayPart and MatchDisplayPart:GetAttribute("MatchId") == nil then
                                            --print(i,v)
                                            HumanoidRootPart.CFrame = v:FindFirstChild("Detector").CFrame
                                            Character.HumanoidRootPart:PivotTo(v:FindFirstChild("Detector").CFrame)
                                        else
                                            --warn(i,v)
                                            HumanoidRootPart.CFrame = v:FindFirstChild("Detector").CFrame
                                            Character.HumanoidRootPart:PivotTo(v:FindFirstChild("Detector").CFrame)
                                        end
                                    end)
                                    wait(.5)
                                    ClickEnterRaidText()
                                    wait(.1)
                                    ClickEnterRaid()
                                    task.wait(1)
                                    repeat wait()
                                        FireEvent("RAID_CONFIRM_JOIN",v.Adornee.Parent)
                                    until not LocalPlayer.PlayerGui.PromptGui:FindFirstChild('PromptDefault')
                                end
                            end
                        end
                    end
                end 
            end
            --Story_TEST
            if IsLobby() and SaveSettings["Main"]['Join Story'] and SaveSettings["Main"]['Enable Auto StoryInf'] and LocalPlayer.PlayerGui:FindFirstChild("PAGES") and SubStuff_DONT_DELETE:FindFirstChild('StoryPods') then
                local SubStuff_DONT_DELETE = workspace:FindFirstChild("SubStuff_DONT_DELETE")
                if SubStuff_DONT_DELETE then

                    if Values.CURRENT_MATCH.value ~= nil then
                        FireEvent("CHANGE_MATCH_DATA", {
                            ["Chapter"] = (DataMap["MapName"][SaveSettings["Main"]['Select Map']] .. "_" .. SaveSettings["Main"]['Select Act']),
                            ["FriendsOnly"] = SaveSettings["Main"]['Friend Only'],
                            ["Difficulty"] = SaveSettings["Main"]['Select Difficulty']
                        })
                        if SaveSettings["Main"]['Auto Start'] then
                            FireEvent("START_MATCH")
                        end
                    else
                        table.foreach(SubStuff_DONT_DELETE.StoryPods:GetChildren(),function(i,v)
                            local MatchDisplayPart = v:FindFirstChild("MatchDisplayPart")
                            if MatchDisplayPart and MatchDisplayPart:GetAttribute("MatchId") == nil then
                                HumanoidRootPart.CFrame = v:FindFirstChild("Detector").CFrame
                                Character.HumanoidRootPart:PivotTo(v:FindFirstChild("Detector").CFrame)
                            else
                                --warn(i,v)
                                HumanoidRootPart.CFrame = v:FindFirstChild("Detector").CFrame
                                Character.HumanoidRootPart:PivotTo(v:FindFirstChild("Detector").CFrame)
                            end
                        end)
                        task.wait(.5)
                    end
                end
            end
            --Tower of Eternity
            if IsLobby() and SaveSettings["Main"]['Join Story'] and SaveSettings["Main"]['Auto Tower of Eternity'] and LocalPlayer.PlayerGui:FindFirstChild("PAGES") and SubStuff_DONT_DELETE:FindFirstChild('StoryPods') then
                local SubStuff_DONT_DELETE = workspace:FindFirstChild("SubStuff_DONT_DELETE")
                if SubStuff_DONT_DELETE then
                    if (LocalPlayer.PlayerGui:FindFirstChild("PAGES") and LocalPlayer.PlayerGui:FindFirstChild("PAGES"):FindFirstChild("MatchPage").Visible) or (LocalPlayer.PlayerGui:FindFirstChild("HUD") and LocalPlayer.PlayerGui:FindFirstChild("HUD"):FindFirstChild("MatchDisplayHolder") and LocalPlayer.PlayerGui:FindFirstChild("HUD"):FindFirstChild("MatchDisplayHolder"):FindFirstChild("MatchDisplayFrame").Visible) then
                        FireEvent("CHANGE_MATCH_DATA", {
                            ["Chapter"] = (DataMap["MapName"][SaveSettings["Main"]['Select Map']] .. "_" .. SaveSettings["Main"]['Select Act']),
                            ["FriendsOnly"] = SaveSettings["Main"]['Friend Only'],
                            ["Difficulty"] = SaveSettings["Main"]['Select Difficulty']
                        })
                        if SaveSettings["Main"]['Auto Start'] then
                            wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                            FireEvent("START_MATCH")
                        end
                    else
                        table.foreach(SubStuff_DONT_DELETE.StoryPods:GetChildren(),function(i,v)
                            local MatchDisplayPart = v:FindFirstChild("MatchDisplayPart")
                            if MatchDisplayPart and MatchDisplayPart:GetAttribute("MatchId") == nil then
                                --print(i,v)
                                HumanoidRootPart.CFrame = v:FindFirstChild("Detector").CFrame
                                Character.HumanoidRootPart:PivotTo(v:FindFirstChild("Detector").CFrame)
                            else
                                --warn(i,v)
                                HumanoidRootPart.CFrame = v:FindFirstChild("Detector").CFrame
                                Character.HumanoidRootPart:PivotTo(v:FindFirstChild("Detector").CFrame)
                            end
                        end)
                        task.wait(.5)
                    end
                end
            end
            if game.PlaceId ~= 17017769292 and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("PAGES") then  
                --Auto Retry
                if SaveSettings["Main"]['Auto Retry'] and game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickRetry()
                    print('Retry The Match ..!!!')
                    wait(1)
                    FireEvent("RESTART_GAME")
                    wait(1)
                    Replay()
                end
                --Auto Leave
                if SaveSettings["Main"]['Auto Leave'] and game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    wait(3)
                    ClickLeaveText()
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    wait(3)
                    ClickLeave()
                end
                --Leave At Wave
                if SaveSettings["Main"]['Auto Leave at Wave'] then
                    local Players = game:GetService("Players")
                    local TeleportService = game:GetService("TeleportService")
                    local player = Players.LocalPlayer
                    local waveTextLabel = player.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel
                    waveTextLabel:GetPropertyChangedSignal("Text"):Connect(function()
                        if SaveSettings["Main"]['Auto Leave at Wave'] and waveTextLabel.Text == tonumber(SaveSettings["Main"]['Select Wave Amount']) + 1 then
                            wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                            TeleportService:Teleport(17017769292, player)
                            wait(1)
                            Teleport(17017769292)
                        end
                    end)
                    MapValuesEX2 = require(game:GetService("ReplicatedStorage").Values)
                    if MapValuesEX2['GAME_WAVE']['value']['min'] >= tonumber(SaveSettings["Main"]['Select Wave Amount']) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.WaveTopBar.Wave.WaveFrame.TextLabel.text) >= SaveSettings["Main"]['Select Wave Amount'] then
                        if SaveSettings["Notifier"]["Send After End Game"] then
                            HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=TestDataLobby, Method="POST", Headers=Headers})
                            wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                            TeleportService:Teleport(17017769292, player)
                            wait(1)
                            ClickLeaveatWave()
                            break
                        else
                            wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                            TeleportService:Teleport(17017769292, player)
                            wait(1)
                            ClickLeaveatWave()
                        end
                    end
                --Clicknormal
                elseif SaveSettings["Main"]['Manual Click [Retry]'] and game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickRetry =  LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Options.ReplayButton
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
                    until game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible == false or game:GetService("Players").LocalPlayer.PlayerGui.TravellingGui.Enabled == true
                    print('Manual Click Retry Match ..!!!')
                elseif SaveSettings["Main"]['Manual Click [Leave]'] and game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickLeave =  LocalPlayer.PlayerGui.PAGES.MatchResultPage.Main.Options.BackToLobbyButton
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
                    until game:GetService("Players").LocalPlayer.PlayerGui.PAGES.MatchResultPage.Visible == false or game:GetService("Players").LocalPlayer.PlayerGui.TravellingGui.Enabled == true
                    print('Manual Click Leave Match ..!!!')
                end
            end
        end
    end)

    --Auto Rejoin
    function RejoineServer()
        while wait() do
            pcall(function()
                print('Reture to Lobby by Auto Rejoin with Time ' .. tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) .. ' sec' )
                wait(.5)
                Teleport(17017769292)
                repeat wait() until not workspace.Map:FindFirstChild('MapDifficulty')
            end)
        end
    end

    spawn(function()
        while wait() do
            if SaveSettings["SaveSetting"]['Auto Rejoin [Time]'] and game.PlaceId ~= 17017769292 then
                if workspace.DistributedGameTime >= tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) then
                    RejoineServer()
                end 
            elseif SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]'] and game.PlaceId == 17017769292 then
                if workspace.DistributedGameTime >= tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) then
                    RejoineServer()
                end
            end
        end
    end)

    spawn(function()
		while wait() do
            if workspace.DistributedGameTime >= 0 then
                PlayerData2 = game:GetService("ReplicatedStorage").Remotes.GetInventory:InvokeServer()
                if game.PlaceId == 17017769292 then
                    Text_Time.Options:ChangeText(" Your Stay in the Lobby, Time not Checking \n Game Time : ".. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    Text_Emeralds.Options:ChangeText(" Gold : " .. tostring(comma_value(PlayerData2.Currencies.Gold)) .. "\n Gems : " .. tostring(comma_value(PlayerData2.Currencies.Gems)) .. " | Trait Crystal : " .. tostring(comma_value(PlayerData2.Items['Trait Crystal'] or 0)) .. "\n Frost Bind : " .. tostring(comma_value(PlayerData.Items['Frost Bind'] or 0)) .. " | Dice : " .. tostring(comma_value(PlayerData.Items['Risky Dice'] or 0)) ) 
                else
                    Text_Time.Options:ChangeText(" Game Time : " .. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    Text_Emeralds.Options:ChangeText(" Gold : " .. tostring(comma_value(PlayerData2.Currencies.Gold)) .. "\n Gems : " .. tostring(comma_value(PlayerData2.Currencies.Gems)) .. " | Trait Crystal : " .. tostring(comma_value(PlayerData2.Items['Trait Crystal'] or 0)) .. "\n Frost Bind : " .. tostring(comma_value(PlayerData2.Items['Frost Bind'] or 0)) .. " | Dice : " .. tostring(comma_value(PlayerData.Items['Risky Dice'] or 0)) ) 
                end
            end
        end
    end)

    --Auto Rejoin Error Prompt
    spawn(function()
        while wait() do
        local PlaceId_AD = {17764698696,17017769292,17018663967,17633071278,17078425946,17456575820,17490500437,17513685680,17620826119}
        if table.find(PlaceId_AD,game.PlaceId) and SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'] then -- SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']
            while task.wait() do
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:CaptureController()vu:ClickButton2(Vector2.new())
                end)
                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(a)
                    if a.Name == 'ErrorPrompt' then
                        task.wait(tonumber(SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']))
                        local tpservice= game:GetService("TeleportService")
                        local plr = game.Players.LocalPlayer
                        tpservice:Teleport(17017769292, plr)
                        warn("Fround a Error Prompt ... Trying to Reconnect ...")
                        repeat wait() until not SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]']
                        end
                    end)
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

    TextButtonPosition = UDim2.new(0,315,0,-16)
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
