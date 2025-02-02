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

    ------------------------------------------------------ [[ Anime Adventures ]] ------------------------------------------------------

repeat wait() until game:IsLoaded()
if not game:IsLoaded() then game.Loaded:Wait() end
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")


------------------------------------------------------ [[ Webhook inventory ]] ------------------------------------------------------
local v5 = require(game.ReplicatedStorage.src.Loader)
local ItemInventoryServiceClient = v5.load_client_service(script, "ItemInventoryServiceClient")
function get_inventory_items_unique_items()
	return ItemInventoryServiceClient["session"]['inventory']['inventory_profile_data']['unique_items']
end
function get_inventory_items()
	return ItemInventoryServiceClient["session"]["inventory"]['inventory_profile_data']['normal_items']
end
function get_Units_Owner()
	return ItemInventoryServiceClient["session"]["collection"]["collection_profile_data"]['owned_units']
end
local Count_Portal_list = 0
local Table_All_Items_Old_data = {}
local Table_All_Items_New_data = {}
for v2, v3 in pairs(game:GetService("ReplicatedStorage").src.Data.Items:GetDescendants()) do
	if v3:IsA("ModuleScript") then
		for v4, v5 in pairs(require(v3)) do
		    Table_All_Items_Old_data[v4] = {}
			Table_All_Items_Old_data[v4]['Name'] = v5['name']
		    Table_All_Items_Old_data[v4]['Count'] = 0
			Table_All_Items_New_data[v4] = {}
			Table_All_Items_New_data[v4]['Name'] = v5['name']
			Table_All_Items_New_data[v4]['Count'] = 0
		end
	end
end
local Data_Units_All_Games = require(game:GetService("ReplicatedStorage").src.Data.Units)
for i,v in pairs(Data_Units_All_Games) do
    if v.rarity then
        Table_All_Items_Old_data[i] = {}
        Table_All_Items_Old_data[i]['Name'] = v['name']
        Table_All_Items_Old_data[i]['Count'] = 0
        Table_All_Items_Old_data[i]['Count Shiny'] = 0
        Table_All_Items_New_data[i] = {}
        Table_All_Items_New_data[i]['Name'] = v['name']
        Table_All_Items_New_data[i]['Count'] = 0
        Table_All_Items_New_data[i]['Count Shiny'] = 0
    end
end
for i,v in pairs(get_inventory_items()) do
	Table_All_Items_Old_data[i]['Count'] = v
end
for i,v in pairs(get_inventory_items_unique_items()) do
    if string.find(v['item_id'],"portal") or string.find(v['item_id'],"disc") then
        Count_Portal_list = Count_Portal_list + 1
        Table_All_Items_Old_data[v['item_id']]['Count'] = Table_All_Items_Old_data[v['item_id']]['Count'] + 1
    end
end
for i,v in pairs(get_Units_Owner()) do
    Table_All_Items_Old_data[v["unit_id"]]['Count'] = Table_All_Items_Old_data[v["unit_id"]]['Count'] + 1
    if v.shiny then
        Table_All_Items_Old_data[v["unit_id"]]['Count'] = Table_All_Items_Old_data[v["unit_id"]]['Count'] - 1
        Table_All_Items_Old_data[v["unit_id"]]['Count Shiny'] = Table_All_Items_Old_data[v["unit_id"]]['Count Shiny'] + 1
    end
end

 --Gem_Gold_Trophies_OLD
if game.Players.LocalPlayer._stats:FindFirstChild("player_xp") then
    prlXPOld = game.Players.LocalPlayer._stats.player_xp.Value
end
if game.Players.LocalPlayer._stats:FindFirstChild("gold_amount") then
    prlGoldOld = game.Players.LocalPlayer._stats.gold_amount.Value
end
if game.Players.LocalPlayer._stats:FindFirstChild("gem_amount") then
    prlGemOld = game.Players.LocalPlayer._stats.gem_amount.Value
end
if game.Players.LocalPlayer._stats:FindFirstChild("trophies") then
    prlTrophiesOld = game.Players.LocalPlayer._stats.trophies.Value
end

--Event_OLD
--[[if game.Players.LocalPlayer._stats:FindFirstChild("_resourceCandies") then
    SummerPearlsOld = game.Players.LocalPlayer._stats._resourceCandies.Value
end]]
if game.Players.LocalPlayer._stats:FindFirstChild("_resourceHolidayStars") then
    HolidayStarsOld = game.Players.LocalPlayer._stats._resourceHolidayStars.Value
end

------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
local SaveSettings = {
    ["Join"] = {
        ['Select World'] = "",
        ['Select Act Story'] = "Act 1",
        ['Select Mode Story'] = "Story",
        ['Enable Farm Story&Legend'] = false,

        ['Select Challenges'] = {},
        ['Enable Farm Challenges'] = false,

        ['Select World Raids'] = "",
        ['Select Act Raids'] = "Act 1",
        ['Enable Farm Raids'] = false,

        ['Select Events'] = "",
        ['Enable Farm Events'] = false,

        ['Select Event Map'] = {},
        ['Select Event Challenges'] = {},
        ['Select Event Tier'] = {},
        ['Enable Farm Events Assasin'] = false,

        ['Select Portals'] = "",
        ['Select Portal Map'] = {},
        ['Select Portal Challenge'] = {},
        ['Select Portal Tier2'] = {},
        ['Enable Farm Portals'] = false,

        ['Select Challenge Mode'] = {},
        ['Select Challenge Drops'] = {},

        ['Select Join Modes'] = {},
        ['Find Match [Matchmaking]'] = false,
        ['Friends Only'] = false,
        ['Auto Start'] = false,
        ['Auto Join'] = false,  

        ['Auto Start In Games'] = false,
        ['Auto Next In Games'] = false,
        ['Auto Retry In Games'] = false,
        ['Auto Back To Lobby In Games'] = false,


        ['Delay Use Abilite (sec)'] = 10,
        ['Select Wave Use Abilite'] = 15,
        ['Auto Abilite at Wave'] = false,
        ['Select Wave to Upgrade'] = 15,
        ['Auto Upgrade All at Wave'] = false,
        ['Select Wave to SELL'] = 15,
        ['Auto Sell All at Wave'] = false,
    },
    ['AutoPlay'] = {
        ['Select Unit Buff'] = {},
        ['Auto Buff'] = false,
        
        ['Place Anywhere'] = false,
        ['Delete Map'] = false,

        --[[["FocusWave [ Priority limit wave ]"] = 5,
        ['Select Cards Buff'] = {},
        ['Priority Cards'] = {},
        ['Cards [ All cards select after FocusWave wave ends ]'] = {},
        ['Auto Cards'] = false,]]
    },
    ["Summon"] = {
        ['Auto Claim Daily'] = false,

        ['Select Banner'] = "Special",
        ['Select Method'] = 'x1',
        ['Auto Summon'] = false,

        ['Select Capsule'] = "Spooky Star",
        ['Select Capsule Method'] = 'x1',
        ['Auto Open Capsule'] = false,

    },
    ['Macro'] = {
        ['Macro Select'] = "None",
        ['Delat Macro Play Time (sec)'] = 1,
        ['Play Macro'] = false,

        ['Macro Map'] = {},
    },
    ["Webhook"] = {
        ["Webhook Url"] = "",
        ["Send After End Game"] = false,
    },
    ["SaveSetting"] = {
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
        if not isfolder("HolyShz/AnimeAdventures") then
            makefolder("HolyShz/AnimeAdventures")
        end
        if not isfolder("HolyShz/AnimeAdventures/data") then
            makefolder("HolyShz/AnimeAdventures/data")
        end
        if not isfolder("HolyShz/AnimeAdventures/Macro") then
            makefolder("HolyShz/AnimeAdventures/Macro")
        end
        if not isfile("HolyShz/AnimeAdventures/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
            writefile("HolyShz/AnimeAdventures/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeAdventures/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
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
        if isfile("HolyShz/AnimeAdventures/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
            Load()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeAdventures/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
            local Array = {}
            for i,v in pairs(SaveSettings) do
                Array[i] = v
            end
            writefile("HolyShz/AnimeAdventures/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
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
local VirtualUser = game:GetService("VirtualUser")
local GamePlace = game.PlaceId

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
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
--Get_Wave_GameMode
function GetWaveNumber()
    return game:GetService("Workspace")["_wave_num"].Value
end
function GLD()
    local list = {}
    for i,v in pairs(game.Workspace._MAP_CONFIG:WaitForChild("GetLevelData"):InvokeServer()) do
        list[i] = v
    end
    return list
end
if not workspace._MAP_CONFIG.IsLobby.Value then
    GLD()
end
--Del_Map
function DelMap()
    if game.Workspace._terrain:FindFirstChild("terrain") then
        for i,v in pairs(game:GetService("Workspace")["_terrain"].terrain:GetChildren()) do
            if v.ClassName == "Model" then v:Remove() end
            if v.ClassName == "Folder" then v:Remove() end
        end
    end  
    wait(.1)
    if game.Workspace:FindFirstChild("_map") then
        for i,v in pairs(game:GetService("Workspace")["_map"]:GetChildren()) do
            if v.ClassName == "Model" then v:Remove() end
            if v.ClassName == "Folder" then v:Remove() end
        end
    end 
end
--Get_Assasin_Data
function GetAssasinData()
    local DataContract = game:GetService("ReplicatedStorage").endpoints.client_to_server.get_current_event_contracts:InvokeServer()
    for i,v in pairs(DataContract) do
        if v['_event_contract']['contract_group'] == "Sakamoto" then
            return DataContract
        end
    end
    wait(5)
end

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

function ClickButton(Button,Mode)
    local ButtonClick = Button
    local events = { "MouseButton1Click", "MouseButton1Down", "Activated" }
    if Mode == "1" then
        for i, v in next, events do firesignal(ButtonClick[v]) end
    else
        for i,v in pairs(events) do
            for i,v in pairs(getconnections(ButtonClick[v])) do
                v.Function()
            end
        end
    end
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        task.wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

local ApiServiceWebhook = {} do
    local httpService = game:GetService("HttpService")
    local HttpRequest = http_request or request or HttpPost or syn.request;

    function ApiServiceWebhook:Send(url, data)
        print()
        local response = HttpRequest({
            ["Url"] = url,
            ["Method"] = "POST",
            ["Body"] = httpService:JSONEncode(data),
            ["Headers"] = {
                ["content-type"] = "application/json"
            }
        })

        if response.StatusCode == 204 then
            print('Data received and file written successfully')
        else
            print(response.message)
        end
        return response
    end
end
getgenv().ApiServiceWebhook = ApiServiceWebhook;

------------------------------------------------------ [[ Webhook ]] ------------------------------------------------------

function WebhookMain()
    if SaveSettings["Webhook"]["Send After End Game"] then
        if SaveSettings["Webhook"]["Webhook Url"] ~= "" then 
            if not SaveSettings["Webhook"]["Send After End Game"] then return end
                
            local Time = os.date('!*t', OSTime);
            local exec = tostring(identifyexecutor())
            userlevel = plr.PlayerGui:FindFirstChild("spawn_units"):FindFirstChild("Lives"):FindFirstChild("Main"):FindFirstChild("Desc"):FindFirstChild("Level").Text
            totalgems = plr.PlayerGui:FindFirstChild("spawn_units"):FindFirstChild("Lives"):FindFirstChild("Frame"):FindFirstChild("Resource"):FindFirstChild("Gem"):FindFirstChild("Level").Text
            
            ResultHolder = plr.PlayerGui:FindFirstChild("ResultsUI"):FindFirstChild("Holder")
            if not workspace._MAP_CONFIG.IsLobby.Value then
            levelname = game:GetService("Workspace"):FindFirstChild("_MAP_CONFIG"):FindFirstChild("GetLevelData"):InvokeServer()["name"]
            result = ResultHolder.Title.Text else levelname, result = "nil","nil" end
            if result == "VICTORY" then result = "VICTORY" end
            if result == "DEFEAT" then result = "DEFEAT" end
            _map = game:GetService("Workspace")["_BASES"].player.base["fake_unit"]:WaitForChild("HumanoidRootPart")
            ---------------------------------
            local GetLevelData = game.workspace._MAP_CONFIG:WaitForChild("GetLevelData"):InvokeServer()
            Mapname = GetLevelData.name
            name = GetLevelData.id or GetLevelData.world or GetLevelData.map
            world = GetLevelData.name
            --New Mapname
            local Loader = require(game.ReplicatedStorage.src.Loader)
            local Maps = Loader.load_data(script, "Maps")
            local v100 = Maps[Loader.LevelData.map]
            MapsNameTEST = v100.name or GetLevelData.name
            local Gamemode = GetLevelData._gamemode

            if GetLevelData._event_contract ~= nil then
                Gamemode = GetLevelData._gamemode .. " - " .. GetLevelData._gamemode
            end
    
            -------------------------------
        
            cwaves = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.WavesCompleted.Text
            ctime = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.Timer.Text
            waves = cwaves:split(": ")
            if waves ~= nil and waves[2] == "999" then waves[2] = "Use [Auto Leave at Wave] or [Test Webhook]" end	
            ttime = ctime:split(": ")
            if waves ~= nil and ttime[2] == "22:55" then ttime[2] = "Use [Auto Leave at Wave] or [Test Webhook]" end	
            gold = ResultHolder:FindFirstChild("LevelRewards"):FindFirstChild("ScrollingFrame"):FindFirstChild("GoldReward"):FindFirstChild("Main"):FindFirstChild("Amount").Text
            if gold == "+99999" then gold = "+0" end	    
            gems = ResultHolder:FindFirstChild("LevelRewards"):FindFirstChild("ScrollingFrame"):FindFirstChild("GemReward"):FindFirstChild("Main"):FindFirstChild("Amount").Text
            if gems == "+99999" then gems = "+0" end	 
    
            xpx = ResultHolder:FindFirstChild("LevelRewards"):FindFirstChild("ScrollingFrame"):FindFirstChild("XPReward"):FindFirstChild("Main"):FindFirstChild("Amount").Text
            xp = xpx:split(" ")
            if xp[1] == "+99999" then xp[1] = "+0" end
            trophy = ResultHolder:FindFirstChild("LevelRewards"):FindFirstChild("ScrollingFrame"):FindFirstChild("TrophyReward"):FindFirstChild("Main"):FindFirstChild("Amount").Text
            if trophy == "+99999" then trophy = "+0" end	 
            
            totaltime =  ResultHolder:FindFirstChild("Middle"):FindFirstChild("Timer").Text
            totalwaves = ResultHolder:FindFirstChild("Middle"):FindFirstChild("WavesCompleted").Text
            
            --------------------------------------------------------------------
    
            local TextDropLabel = ""
            local CountAmount = 1
    
            --Gem_Gold_Trophies
            if (game.Players.LocalPlayer._stats.player_xp.Value - prlXPOld) > 0 then
                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". XP + " .. comma_value(string.format("%.2f",game.Players.LocalPlayer._stats.player_xp.Value - prlXPOld)) .. " [" .. tostring(game.Players.LocalPlayer.PlayerGui.spawn_units.Lives.Main.Desc.Level.Text) .."]\n"
                CountAmount = CountAmount + 1
            end
            if (game.Players.LocalPlayer._stats.gem_amount.Value - prlGemOld) > 0 then
                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Gems + " .. comma_value(game.Players.LocalPlayer._stats.gem_amount.Value - prlGemOld) .. " [Total : " .. tostring(comma_value(game.Players.LocalPlayer._stats.gem_amount.Value)) .."]\n"
                CountAmount = CountAmount + 1
            end
            if (game.Players.LocalPlayer._stats.gold_amount.Value - prlGoldOld) > 0 then
                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Golds + " .. comma_value(game.Players.LocalPlayer._stats.gold_amount.Value - prlGoldOld) .. " [Total : " .. tostring(comma_value(game.Players.LocalPlayer._stats.gold_amount.Value)) .."]\n"
                CountAmount = CountAmount + 1
            end
            if (game.Players.LocalPlayer._stats.trophies.Value - prlTrophiesOld) > 0 then
                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Trophies + " .. comma_value(game.Players.LocalPlayer._stats.trophies.Value - prlTrophiesOld) .. " [Total : " .. tostring(comma_value(game.Players.LocalPlayer._stats.trophies.Value)) .."]\n"
                CountAmount = CountAmount + 1
            end
    
            --Events
            --[[if (game.Players.LocalPlayer._stats._resourceCandies.Value - SummerPearlsOld) > 0 then
                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Candies + " .. comma_value(game.Players.LocalPlayer._stats._resourceCandies.Value - SummerPearlsOld) .. " [Total : " .. tostring(comma_value(game.Players.LocalPlayer._stats._resourceCandies.Value)) .."]\n"
                CountAmount = CountAmount + 1
            end]]
            if (game.Players.LocalPlayer._stats._resourceHolidayStars.Value - HolidayStarsOld) > 0 then
                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Holiday Stars + " .. comma_value(game.Players.LocalPlayer._stats._resourceHolidayStars.Value - HolidayStarsOld) .. " [Total : " .. tostring(comma_value(game.Players.LocalPlayer._stats._resourceHolidayStars.Value)) .."]\n"
                CountAmount = CountAmount + 1
            end
    
            for i,v in pairs(get_inventory_items()) do
            Table_All_Items_New_data[i]['Count'] = v
            end
            for i,v in pairs(get_inventory_items_unique_items()) do
                if string.find(v['item_id'],"portal") or string.find(v['item_id'],"disc") then
                    Table_All_Items_New_data[v['item_id']]['Count'] = Table_All_Items_New_data[v['item_id']]['Count'] + 1
                end
            end
            for i,v in pairs(get_Units_Owner()) do
                Table_All_Items_New_data[v["unit_id"]]['Count'] = Table_All_Items_New_data[v["unit_id"]]['Count'] + 1
                if v.shiny then
                    Table_All_Items_New_data[v["unit_id"]]['Count'] = Table_All_Items_New_data[v["unit_id"]]['Count'] - 1
                Table_All_Items_New_data[v["unit_id"]]['Count Shiny'] = Table_All_Items_New_data[v["unit_id"]]['Count Shiny'] + 1
                end
            end
            for i,v in pairs(Table_All_Items_New_data) do
                if v['Count'] > 0 and (v['Count'] - Table_All_Items_Old_data[i]['Count']) > 0 then
                    if v['Count Shiny'] and v['Count'] then
                        if v['Count'] > 0 or v['Count Shiny'] > 0 then
                            if v['Count'] > 0 and (v['Count'] - Table_All_Items_Old_data[i]['Count']) > 0 then
                                TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. tostring(v['Name']) .. " : x" .. tostring(v['Count'] - Table_All_Items_Old_data[i]['Count']) .. " [Total : " .. tostring(v['Count']) .. "]"
                                if v['Count Shiny'] > 0 and (v['Count Shiny'] - Table_All_Items_Old_data[i]['Count Shiny']) > 0 then
                                    TextDropLabel = TextDropLabel .. " | " .. tostring(v['Name']) .. " (Shiny) : x" .. tostring(v['Count Shiny'] - Table_All_Items_Old_data[i]['Count Shiny']) .. " [Total : " .. tostring(v['Count Shiny']) .. "]\n"
                                    CountAmount = CountAmount + 1
                                else
                                    TextDropLabel = TextDropLabel .. "\n"
                                    CountAmount = CountAmount + 1
                                end
                            end
                        end
                    end
                elseif v['Count Shiny'] and v['Count Shiny'] > 0 and (v['Count Shiny'] - Table_All_Items_Old_data[i]['Count Shiny']) > 0 then
                    TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. tostring(v['Name']) .. " (Shiny) : x" .. tostring(v['Count Shiny'] - Table_All_Items_Old_data[i]['Count Shiny']) .. " [Total : " .. tostring(v['Count Shiny']) .. "]\n"
                    CountAmount = CountAmount + 1
                end
            end
            for i,v in pairs(Table_All_Items_New_data) do
                if v['Count'] > 0 and (v['Count'] - Table_All_Items_Old_data[i]['Count']) > 0 then
                    if v['Count Shiny'] and v['Count'] then
                    elseif string.find(i,"portal") or string.find(i,"disc") then
                        Count_Portal_list = Count_Portal_list + 1
                    if string.gsub(i, "%D", "") == "" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. tostring(v['Name']) .. " : x" .. tostring(v['Count'] - Table_All_Items_Old_data[i]['Count']) .. " [Total : " .. tostring(v['Count']) .. "]\n"
                    else
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. tostring(v['Name']) .. " Tier " .. tostring(string.gsub(i, "%D", "")) .. " : x" .. tostring(v['Count'] - Table_All_Items_Old_data[i]['Count']) .. " [Total : " .. tostring(v['Count']) .. "]\n"
                        end
                        CountAmount = CountAmount + 1
                    else
                        TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. tostring(v['Name']) .. " : x" .. tostring(v['Count'] - Table_All_Items_Old_data[i]['Count']) .. " [Total : " .. tostring(v['Count']) .. "]\n"
                        CountAmount = CountAmount + 1
                    end
                end
            end
    
            if TextDropLabel == "" then
                TextDropLabel = "Not Have Items Drops"
            end
        
            local PlayerData = {
                ["content"] = "",
                ["username"] = "Anime Adventures",
                ["avatar_url"] = "https://tr.rbxcdn.com/180DAY-05038c93946bee1fd17d6245c7ecc07b/256/256/Image/png/noFilter",
                ["embeds"] = {
                    {
                        ["author"] = {
                            ["name"] = "Anime Adventures |  Results",
                            ["icon_url"] = "https://cdn.discordapp.com/emojis/997123585476927558.webp?size=96&quality=lossless"
                        },
                        ["thumbnail"] = {
                            ["url"] = "https://tr.rbxcdn.com/180DAY-05038c93946bee1fd17d6245c7ecc07b/256/256/Image/png/noFilter",
                        },
                        ["description"] = " Player Name : ||**"..game:GetService("Players").LocalPlayer.Name.."**|| ",
                        ["color"] = 110335,
                        ["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                        ['footer'] = {
                            ['text'] = "// Made by Negative & HOLYSHz", 
                            ['icon_url'] = "https://yt3.ggpht.com/mApbVVD8mT92f50OJuTObnBbc3j7nDCXMJFBk2SCDpSPcaoH9DB9rxVpJhsB5SxAQo1UN2GzyA=s48-c-k-c0x00ffffff-no-rj"
                        },
                        ["fields"] = {
                            {
                                ["name"] ="Current Level & Gems & Gold & Portals ",
                                ["value"] = "```ini\n"
                                            ..tostring(game.Players.LocalPlayer.PlayerGui.spawn_units.Lives.Main.Desc.Level.Text).. " \nCurrent Gold : "
                                            ..tostring(comma_value(game.Players.LocalPlayer._stats.gold_amount.Value)).. " \nCurrent Gems : "
                                            ..tostring(comma_value(game.Players.LocalPlayer._stats.gem_amount.Value)).. " \nCurrent Trophies : "
                                            ..tostring(comma_value(game.Players.LocalPlayer._stats.trophies.Value)).. " \nCurrent Portal : "
                                            ..tostring(Count_Portal_list) .." / 200 ```",
                            },
                            {
                                ["name"] ="Results :",
                                ["value"] = "```ini\nGame Mode : ".. GetLevelData._gamemode .. " \nMap Name : "..GetLevelData._location_name.. " \nMap Id : "..GetLevelData.id.. " \nDifficulty : "..GetLevelData._difficulty.. " \nResults : "..result.. " \nWave End : " ..tostring(waves[2]).." \nTime : " ..tostring(ttime[2]).."```",
                                ["inline"] = true
                            },
                            {
                                ["name"] ="Items Drop :",
                                ["value"] = "```ini\n" .. TextDropLabel .. "```",
                                ["inline"] = false 
                            }
                        }
                    }
                }
            }
            
            ApiServiceWebhook:Send(SaveSettings["Webhook"]["Webhook Url"],PlayerData)
            warn("Sending webhook notification...")
        end
    end
end

------------------------------------------------------ [[ TP ]] ------------------------------------------------------
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
        if tonumber(v.maxPlayers) > tonumber(4) then
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

function TeleportLobby()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
 end
 

------------------------------------------------------ [[ Data Unit ]] ------------------------------------------------------
local Module_Units = require(game:GetService("ReplicatedStorage").src.Data.Units);
local Table_Equipped_Slot = {}
for i, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "equipped_slot") then wait()
        Table_Equipped_Slot[v['unit_id']] = {
            UnitName = v['unit_id'],
            Unit_uuid = v['uuid'],
            Slot = v.equipped_slot,
            Base = v
        }
    end
end
------------------------------------------------------ [[ Ui ]] ------------------------------------------------------
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()

local UI = Venyx.new({
    title = "[UUPD 19.5 + EVENT] Anime Adventures",
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
local Page = {
    Join = UI:addPage({ title = "Join", icon = 10734943448 }),

    Summon = UI:addPage({ title = "Summon", icon = 10734943448 }),

    AutoPlay = UI:addPage({ title = "Auto Play", icon = 10734943448 }),

    Macro = UI:addPage({ title = "Macro", icon = 10734943448 }),
    MacroMap = UI:addPage({ title = "Map & Import", icon = 10734943448 }),

    Webhook = UI:addPage({ title = "Webhook", icon = 10734943448 }),

    Theme = UI:addPage({ title = "Theme", icon = 11413045091 }),
}
local Tab = {
    Join_Story = Page.Join:addSection({ title = "Join - Auto Story" }),
    Join_Challenges = Page.Join:addSection({ title = "Join - Auto Challenges" }),
    Join_Raids = Page.Join:addSection({ title = "Join - Auto Raids" }),
    Join_Events = Page.Join:addSection({ title = "Join - Auto Events" }),
    Join_Events_Ass = Page.Join:addSection({ title = "Join - Auto Events Assasin" }),
    Join_Portals = Page.Join:addSection({ title = "Join - Auto Portals" }),


    Join_Setting = Page.Join:addSection({ title = "Join - Setting Lobby" }),
    Join_SettingInGames = Page.Join:addSection({ title = "Join - Setting In Games" }),

    -- 
    Auto_Buff = Page.AutoPlay:addSection({ title = "Auto Buff" }),
    --AutoCards = Page.AutoPlay:addSection({ title = "Auto Cards." }),
    Auto_Abilite = Page.AutoPlay:addSection({ title = "Auto Abilite." }),
    Auto_Upgrade = Page.AutoPlay:addSection({ title = "Auto Upgrade." }),
    Auto_Sell = Page.AutoPlay:addSection({ title = "Auto Sell." }),
    ETC = Page.AutoPlay:addSection({ title = "ETC." }),

    -- 
    Auto_Claim = Page.Summon:addSection({ title = "Auto Claim" }),
    Auto_Summon = Page.Summon:addSection({ title = "Auto Summon" }),
    Auto_Capsule = Page.Summon:addSection({ title = "Auto Capsule" }),

    -- Macro
    Macro_Setting = Page.Macro:addSection({ title = "Macro - Setting" }),
    Macro_Record = Page.Macro:addSection({ title = "Macro - Record" }),
    Macro_Play = Page.Macro:addSection({ title = "Macro - Play" }),

    -- MacroMap
    MacroMap_Setting = Page.MacroMap:addSection({ title = "Macro Map - Setting" }),

    -- Webhook
    Webhook = Page.Webhook:addSection({ title = "Macro Map - Setting" }),


    -- Theme
    Theme_Colors = Page.Theme:addSection({ title = "Colors" }),
    Theme_Setting = Page.Theme:addSection({ title = "Setting" })
}
------------------------------------------------------ [[ Main Gui ]] ------------------------------------------------------
local StoryMacroMap,MapData,StoryDropdown,EventDropdown = {},{},{},{}
local MapDataID = {}
local WorldLevelOrder = require(game:GetService("ReplicatedStorage").src.Data.WorldLevelOrder)
local Worlds = require(game:GetService("ReplicatedStorage").src.Data.Worlds)
for i, v in pairs(WorldLevelOrder.WORLD_ORDER) do
    StoryDropdown[i] = Worlds[v].name
    StoryMacroMap[i] = Worlds[v].name
    EventDropdown[i] = Worlds[v].name
    MapDataID[v] = Worlds[v].name
end
--Assassin_Park
local WorldsAssassin = require(game:GetService("ReplicatedStorage").src.Data.Maps.Maps_New)
for i,v in pairs(WorldsAssassin) do
    table.insert(StoryDropdown,v['name'])
    table.insert(StoryMacroMap,v['name'])
    table.insert(EventDropdown,v['name'])
    MapDataID[v['name']] = v['id']
end
--Halloween
local HalloweenDropdown = {}
local WorldsHalloween = require(game:GetService("ReplicatedStorage").src.Data.Maps.Maps_Halloween2)
for i,v in pairs(WorldsHalloween) do
    table.insert(HalloweenDropdown,v['name'])
    MapDataID[i] = v['name']
end
--Raid
local RaidDropdown,LegendMacroMap,RaidMacroMap = {},{},{"Frozen Abyss",}
for i,v in pairs(WorldLevelOrder.RAID_WORLD_ORDER) do
    RaidDropdown[i] = Worlds[v].name
    table.insert(RaidMacroMap,Worlds[v].name)
    table.insert(EventDropdown,Worlds[v].name)
    MapData[Worlds[v].name] = v
end
--LegendStage
for i,v in pairs(WorldLevelOrder.LEGEND_WORLD_ORDER) do
    LegendMacroMap[i] = Worlds[v].name
    MapData[Worlds[v].name] = v
end
--Portals
local PortalDropdown,PortalMacromap = {},{"7ds_portal",}
local PortalData,PortalDataID = {},{}
for v2, v3 in pairs(game:GetService("ReplicatedStorage").src.Data.Items:GetDescendants()) do
	if v3:IsA("ModuleScript") then
		for v4, v5 in pairs(require(v3)) do
            if v5['item_group'] == "Portals" then
                table.insert(PortalMacromap,v5['id'])
                PortalDropdown[v2] = v5['name']
                PortalData[v5['id']] = v5['name']
                PortalDataID[v5['name']] = v5['id']
            end
		end
	end
end
--Challenge
local ChallengeDropdown,ChallengeID = {},{}
local ChallengeCC,ChallengeCCID = {},{}
local ChallengeData = require(game:GetService("ReplicatedStorage").src.Data.ChallengeAndRewards)
table.foreach(ChallengeData['challenges'],function(i,v)
    ChallengeDropdown[i] = v['name']
    ChallengeID[v['name']] = i

    ChallengeCC[v['name']] = i
    ChallengeCCID[i] = v['name']
end)


Tab.Join_Story:addDropdown({
    title = "Select World",
    list = StoryDropdown, 
    default = SaveSettings['Join']['Select World'],
    callback = function(v)
        SaveSettings['Join']['Select World'] = v
        Save()
    end;
})
Tab.Join_Story:addDropdown({
    title = "Select Act",
    list = {"Infinite","Act 1","Act 2","Act 3","Act 4","Act 5","Act 6"}, 
    default = SaveSettings['Join']['Select Act Story'],
    callback = function(v)
        SaveSettings['Join']['Select Act Story'] = v
        Save()
    end;
})
Tab.Join_Story:addDropdown({
    title = "Select Mode",
    list = {"Story","Legend Stage"}, 
    default = SaveSettings['Join']['Select Mode Story'],
    callback = function(v)
        SaveSettings['Join']['Select Mode Story'] = v
        Save()
    end;
})
Tab.Join_Story:addToggle({
    title = "Enable Farm Story&Legend",
    default  = SaveSettings['Join']['Enable Farm Story&Legend'] ,
    callback = function(v)
        SaveSettings['Join']['Enable Farm Story&Legend'] = v
        Save()
    end ,
})


--Join_Challenges
Tab.Join_Challenges:addMulitDropdown({
    title = "Select Challenges",
    list = ChallengeDropdown, 
    default = SaveSettings['Join']['Select Challenges'] ,
    callback = function(v)
        SaveSettings['Join']['Select Challenges']  = v
        Save()
    end;
})
Tab.Join_Challenges:addToggle({
    title = "Enable Farm Challenges",
    default  = SaveSettings['Join']['Enable Farm Challenges'] ,
    callback = function(v)
        SaveSettings['Join']['Enable Farm Challenges'] = v
        Save()
    end ,
})

--Raids
Tab.Join_Raids:addDropdown({
    title = "Select World Raids",
    list = RaidDropdown, 
    default = SaveSettings['Join']['Select World Raids'],
    callback = function(v)
        SaveSettings['Join']['Select World Raids'] = v
        Save()
    end;
})
Tab.Join_Raids:addDropdown({
    title = "Select Act Raids",
    list = {"Act 1","Act 2","Act 3","Act 4","Act 5","Act 6"}, 
    default = SaveSettings['Join']['Select Act Raids'],
    callback = function(v)
        SaveSettings['Join']['Select Act Raids'] = v
        Save()
    end;
})
Tab.Join_Raids:addToggle({
    title = "Enable Farm Raids",
    default  = SaveSettings['Join']['Enable Farm Raids'] ,
    callback = function(v)
        SaveSettings['Join']['Enable Farm Raids'] = v
        Save()
    end ,
})

--Join_Events
Tab.Join_Events:addDropdown({
    title = "Select Events",
    list = {"Christmas Event","Halloween Event"}, 
    default = SaveSettings['Join']['Select Events'],
    callback = function(v)
        SaveSettings['Join']['Select Events'] = v
        Save()
    end;
})
Tab.Join_Events:addToggle({
    title = "Enable Farm Events",
    default  = SaveSettings['Join']['Enable Farm Events'] ,
    callback = function(v)
        SaveSettings['Join']['Enable Farm Events'] = v
        Save()
    end ,
})


--Join_Events_Ass
Tab.Join_Events_Ass:addMulitDropdown({
    title = "Select Map",
    list = EventDropdown, 
    default = SaveSettings['Join']['Select Event Map'] ,
    callback = function(v)
        SaveSettings['Join']['Select Event Map']  = v
        Save()
    end;
})
Tab.Join_Events_Ass:addMulitDropdown({
    title = "Select Challenges",
    list = ChallengeDropdown, 
    default = SaveSettings['Join']['Select Event Challenges'] ,
    callback = function(v)
        SaveSettings['Join']['Select Event Challenges']  = v
        Save()
    end;
})
Event_Tier_Cap = {}
for i = 1,20 do
    table.insert(Event_Tier_Cap,i)
end
Tab.Join_Events_Ass:addMulitDropdown({
    title = "Select Tier",
    list = Event_Tier_Cap, 
    default = SaveSettings['Join']['Select Event Tier'] ,
    callback = function(v)
        SaveSettings['Join']['Select Event Tier']  = v
        Save()
    end;
})
Tab.Join_Events_Ass:addToggle({
    title = "Enable Farm Assasin Park",
    default  = SaveSettings['Join']['Enable Farm Events Assasin'] ,
    callback = function(v)
        SaveSettings['Join']['Enable Farm Events Assasin'] = v
        Save()
    end ,
})

--Join_Portals
Tab.Join_Portals:addDropdown({
    title = "Select Portals",
    list = PortalDropdown, 
    default = SaveSettings['Join']['Select Portals'],
    callback = function(v)
        SaveSettings['Join']['Select Portals'] = v
        Save()
    end;
})
Tab.Join_Portals:addMulitDropdown({
    title = "Select Portal Map",
    list = StoryDropdown, 
    default = SaveSettings['Join']['Select Portal Map'] ,
    callback = function(v)
        SaveSettings['Join']['Select Portal Map']  = v
        Save()
    end;
})
Tab.Join_Portals:addMulitDropdown({
    title = "Select Portal Challenge",
    list = ChallengeDropdown, 
    default = SaveSettings['Join']['Select Portal Challenge'] ,
    callback = function(v)
        SaveSettings['Join']['Select Portal Challenge']  = v
        Save()
    end;
})
Portal_Tier_Cap = {}
for i = 0,15 do
    table.insert(Portal_Tier_Cap,i)
end
Tab.Join_Portals:addMulitDropdown({
    title = "Select Portal Tier",
    list = Portal_Tier_Cap, 
    default = SaveSettings['Join']['Select Portal Tier2'] ,
    callback = function(v)
        SaveSettings['Join']['Select Portal Tier2']  = v
        Save()
    end;
})
Tab.Join_Portals:addToggle({
    title = "Enable Portals",
    default  = SaveSettings['Join']['Enable Farm Portals'] ,
    callback = function(v)
        SaveSettings['Join']['Enable Farm Portals'] = v
        Save()
    end ,
})

--AutoJoin_ETC
Tab.Join_Setting:addToggle({
    title = "Find Match [Match making]",
    default  = SaveSettings['Join']['Find Match [Matchmaking]'] ,
    callback = function(v)
        SaveSettings['Join']['Find Match [Matchmaking]'] = v
        Save()
    end ,
})
Tab.Join_Setting:addToggle({
    title = "Friends Only",
    default  = SaveSettings['Join']['Friends Only'] ,
    callback = function(v)
        SaveSettings['Join']['Friends Only'] = v
        Save()
    end ,
})
Tab.Join_Setting:addToggle({
    title = "Auto Join",
    default  = SaveSettings['Join']['Auto Join'] ,
    callback = function(v)
        SaveSettings['Join']['Auto Join'] = v
        Save()
    end ,
})
Tab.Join_Setting:addToggle({
    title = "Auto Start",
    default  = SaveSettings['Join']['Auto Start'] ,
    callback = function(v)
        SaveSettings['Join']['Auto Start'] = v
        Save()
    end ,
})

Tab.Join_SettingInGames:addToggle({
    title = "Auto Vote Start",
    default  = SaveSettings['Join']['Auto Start In Games']  ,
    callback = function(v)
        SaveSettings['Join']['Auto Start In Games']  = v
        Save()
    end ,
})
Tab.Join_SettingInGames:addToggle({
    title = "Auto Next",
    default  = SaveSettings['Join']['Auto Next In Games'] ,
    callback = function(v)
        SaveSettings['Join']['Auto Next In Games'] = v
        Save()
    end ,
})
Tab.Join_SettingInGames:addToggle({
    title = "Auto Retry [Stage,Portal,Events]",
    default  = SaveSettings['Join']['Auto Retry In Games'] ,
    callback = function(v)
        SaveSettings['Join']['Auto Retry In Games'] = v
        Save()
    end ,
})
Tab.Join_SettingInGames:addToggle({
    title = "Auto Back To Lobby",
    default  = SaveSettings['Join']['Auto Back To Lobby In Games'] ,
    callback = function(v)
        SaveSettings['Join']['Auto Back To Lobby In Games'] = v
        Save()
    end ,
})
local Lobby = {
    ["5844593548"] = 17046374415,
    ["6717025335"] = 87542414930759
}
Tab.Join_SettingInGames:addButton({
    title = "Back To Lobby",
    callback = function()
        game["Teleport Service"]:Teleport(Lobby[tostring(game.GameId)], game.Players.LocalPlayer, {})
    end,
})
------------------------------------------------------ [[ Summon ]] ------------------------------------------------------
local RequireBanner,BannerDropdown = require(game:GetService("ReplicatedStorage").src.Data.Banners),{}
table.foreach(RequireBanner,function(i,v)
    --warn(i,v)
    table.insert(BannerDropdown,tostring(i))
end)
Tab.Auto_Summon:addDropdown({
    title = "Select Banner",
    list = BannerDropdown, 
    default = SaveSettings['Summon']['Select Banner'],
    callback = function(v)
        SaveSettings['Summon']['Select Banner'] = v
        Save()
    end;
})
Tab.Auto_Summon:addDropdown({
    title = "Select Summon",
    list = {"x1","x10"}, 
    default = SaveSettings['Summon']['Select Method'],
    callback = function(v)
        SaveSettings['Summon']['Select Method'] = v
        Save()
    end;
})
Tab.Auto_Summon:addToggle({
    title = "Auto Summon",
    default  = SaveSettings['Summon']['Auto Summon'] ,
    callback = function(v)
        SaveSettings['Summon']['Auto Summon'] = v
        Save()
    end ,
})

--Auto_Capsule
--Capsule_Data
local CapsuleDropdown,CapsuleID = {},{} 
local WorldsHalloween = require(game:GetService("ReplicatedStorage").src.Data.Items)
for i,v in pairs(WorldsHalloween) do
    if v['item_group'] == "Stars" and v['rarity'] == "Mythic" then
        table.insert(CapsuleDropdown,v['name'])
        CapsuleID[v['name']] = v['id']
    end
end
Tab.Auto_Capsule:addDropdown({
    title = "Select Capsule",
    list = CapsuleDropdown, 
    default = SaveSettings['Summon']['Select Capsule'],
    callback = function(v)
        SaveSettings['Summon']['Select Capsule'] = v
        Save()
    end;
})
Tab.Auto_Summon:addDropdown({
    title = "Select Capsule Method",
    list = {"x1","x10"}, 
    default = SaveSettings['Summon']['Select Capsule Method'],
    callback = function(v)
        SaveSettings['Summon']['Select Capsule Method'] = v
        Save()
    end;
})
Tab.Auto_Capsule:addToggle({
    title = "Auto Open Capsule",
    default  = SaveSettings['Summon']['Auto Open Capsule'] ,
    callback = function(v)
        SaveSettings['Summon']['Auto Open Capsule'] = v
        Save()
    end ,
})

local Code = {
    "Release",
    "MozKing",
    "SubtoZillas",
    "SubtoRlxsage",
    "1MVisits",
    "200kMembers",
    "50KLikes",
    "2MVisits",
    "5mVisits",
    "100kLikes",
    "MegaZillas",
    "MegaMozKing",
    "MegaRlxSage",
    "10MVisits",
    "SorryForFoodBug!",
    "XMEGACODE",
    "20Mvisits",
}
Tab.Auto_Summon:addButton({
    title = "Redeem Code",
    callback = function()
        for i,v in pairs(Code) do
            local string_1 = "Codes/RedeemCode";
            local string_2 = v;
            local Target = game:GetService("ReplicatedStorage").Events.UiCommunication;
            Target:FireServer(string_1, string_2);
            task.wait(1)
        end
    end,
})

Tab.Auto_Claim:addToggle({
    title = "Auto Claim Daily",
    default  = SaveSettings['Summon']['Auto Claim Daily'] ,
    callback = function(v)
        SaveSettings['Summon']['Auto Claim Daily'] = v
        Save()
    end ,
})
------------------------------------------------------ [[ Summon ]] ------------------------------------------------------
Tab.Auto_Buff:addMulitDropdown({
    title = "Select Unit",
    list = {'erwin','wendy','leafa'}, 
    default = SaveSettings['AutoPlay']['Select Unit Buff'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Select Unit Buff']  = v
        Save()
    end;
})
Tab.Auto_Buff:addToggle({
    title = "Auto Buff",
    default  = SaveSettings['AutoPlay']['Auto Buff'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Auto Buff'] = v
        Save()
    end ,
})

local WAVE_CAP = {}
for i = 1,100 do
    table.insert(WAVE_CAP,i)
end
--[[local AllCards = {
    "+ Yen I",
    "+ Yen II",
    "+ Yen III",
    "+ Explosive Deaths I",
    "+ Explosive Deaths II",
    "+ Explosive Deaths III",
    "+ Gain 2 Random Curses Tier 3",
    "+ Gain 2 Random Curses Tier 2",
    "+ Gain 2 Random Curses Tier 1",
    "+ Enemy Speed III",
    "+ Enemy Speed II",
    "+ Enemy Speed I",
    "+ Boss Damage I",
    "+ Boss Damage II",
    "+ Boss Damage III",
    "+ Range I",
    "- Cooldown I",
    "+ Attack I",
    "+ Gain 2 Random Effects Tier 1",
    "- Cooldown II",
    "+ Attack II",
    "+ Gain 2 Random Effects Tier 2",
    "- Cooldown III",
    "+ Range II",
    "+ Range III",
    "+ Attack III",
    "+ Gain 2 Random Effects Tier 3",
    "+ Enemy Shield I",
    "+ Enemy Health I",
    "+ Enemy Regen I",
    "+ Enemy Health II",
    "+ Enemy Shield II",
    "+ Enemy Regen II",
    "+ Enemy Shield III",
    "+ Enemy Health III",
    "+ Enemy Regen III",
    "+ New Path",
}

Tab.AutoCards:addDropdown({
    title = "FocusWave [ Priority limit wave ]",
    list = WAVE_CAP, 
    default = SaveSettings['AutoPlay']["FocusWave [ Priority limit wave ]"] ,
    callback = function(v)
        SaveSettings['AutoPlay']["FocusWave [ Priority limit wave ]"] = v
        getgenv().FocusWave = v
        Save()
    end;
})
Tab.AutoCards:addMulitDropdown({
    title = "Priority Cards [ Priority tags when wave = FocusWave ]",
    list = AllCards, 
    default = SaveSettings['AutoPlay']['Priority Cards'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Priority Cards']  = v
        getgenv().PriorityCards = v
        Save()
    end;
})
Tab.AutoCards:addMulitDropdown({
    title = "Cards [ All cards select after FocusWave wave ends ]",
    list = AllCards, 
    default = SaveSettings['AutoPlay']['Select Cards Buff'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Select Cards Buff'] = v
        getgenv().Cards = v
    end;
})

local RunScriptCard = false
Tab.AutoCards:addToggle({
    title = "Auto Cards",
    default  = SaveSettings['AutoPlay']['Auto Cards'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Auto Cards'] = v
        Save()
    end ,
})
if not workspace._MAP_CONFIG.IsLobby.Value then
    workspace._DATA.GameStarted.Changed:Connect(function(NewValue)
        if not NewValue then return end
        if not RunScriptCard and SaveSettings['AutoPlay']['Auto Cards'] then
            RunScriptCard = true
            warn('////////////////////')
            print("TEST CHECK Card ")
            warn('////////////////////')
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Niga-Niga/scripts/refs/heads/main/pickcard.lua"))()
        end
    end)
end]]

Tab.ETC:addToggle({
    title = "Place Anywhere",
    default  = SaveSettings['AutoPlay']['Place Anywhere'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Place Anywhere'] = v
        Save()
    end ,
})
Tab.ETC:addToggle({
    title = "Delete Map",
    default  = SaveSettings['AutoPlay']['Delete Map'] ,
    callback = function(v)
        SaveSettings['AutoPlay']['Delete Map'] = v
        Save()
    end ,
})
Tab.ETC:addButton({
    title = "Delete Map [Click]",
    callback = function()
        DelMap()
    end,
})

Tab.Auto_Abilite:addDropdown({
    title = "Delay Use Abilite (sec)",
    list = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30},
    default = SaveSettings["Join"]['Delay Use Abilite (sec)'],
    callback = function(v)
        SaveSettings["Join"]['Delay Use Abilite (sec)'] = v
        Save()
    end;
})
Tab.Auto_Abilite:addDropdown({
    title = "Select Wave Use Abilite",
    list = WAVE_CAP,
    default = SaveSettings['Join']['Select Wave Use Abilite'],
    callback = function(v)
        SaveSettings['Join']['Select Wave Use Abilite'] = v
        Save()
    end;
})
Tab.Auto_Abilite:addToggle({
    title = "Auto Abilite at Wave",
    default  = SaveSettings['Join']['Auto Abilite at Wave']  ,
    callback = function(v)
        SaveSettings['Join']['Auto Abilite at Wave']  = v
        Save()
    end ,
})

Tab.Auto_Upgrade:addDropdown({
    title = "Select Wave to Upgrade",
    list = WAVE_CAP,
    default = SaveSettings['Join']['Select Wave to Upgrade'],
    callback = function(v)
        SaveSettings['Join']['Select Wave to Upgrade'] = v
        Save()
    end;
})
Tab.Auto_Upgrade:addToggle({
    title = "Auto Upgrade at Wave",
    default  = SaveSettings['Join']['Auto Upgrade All at Wave']  ,
    callback = function(v)
        SaveSettings['Join']['Auto Upgrade All at Wave']  = v
        Save()
    end ,
})

Tab.Auto_Sell:addDropdown({
    title = "Select Wave to SELL",
    list = WAVE_CAP,
    default = SaveSettings['Join']['Select Wave to SELL'],
    callback = function(v)
        SaveSettings['Join']['Select Wave to SELL'] = v
        Save()
    end;
})
Tab.Auto_Sell:addToggle({
    title = "Auto Sell All at Wave",
    default  = SaveSettings['Join']['Auto Sell All at Wave']  ,
    callback = function(v)
        SaveSettings['Join']['Auto Sell All at Wave']  = v
        Save()
    end ,
})
------------------------------------------------------ [[ Macro ]] ------------------------------------------------------
function CreateMarocList()
    Select_Macro_Profile = {}
    for i,v in pairs(listfiles("HolyShz/AnimeAdventures/Macro")) do
        if string.find(v,[[\]]) then
            table.insert(Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
        else
            table.insert(Select_Macro_Profile, tostring(v:split([[/]])[4]:gsub(".json", "")))
        end
    end
    return Select_Macro_Profile
end
local MacroStats = Tab.Macro_Setting:addLabel({title = 'Main : N/S'})
MacroSelect = Tab.Macro_Setting:addDropdown({
    title = "Select Macro",
    list = CreateMarocList(), 
    default = SaveSettings['Macro']['Macro Select'],
    callback = function(v)
        SaveSettings['Macro']['Macro Select'] = v
        Save()
    end;
})
Tab.Macro_Setting:addButton({
    title = "Refresh Macro",
    callback = function()
        MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
    end,
})
MacroName = nil
Tab.Macro_Setting:addTextbox({
    title = "Create Macro Profile",
    holderbox = "Macro Name ...",
    default = "",
    callback = function(starts)
        MacroName = starts
    end,
})
Tab.Macro_Setting:addButton({
    title = "Create Macro File",
    callback = function()
        if typeof(MacroName) ~= nil then
            if not isfile("HolyShz/AnimeAdventures/Macro/" .. tostring(MacroName)..".json") then
                writefile("HolyShz/AnimeAdventures/Macro/" .. tostring(MacroName)..".json", game:GetService("HttpService"):JSONEncode({}))
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
Tab.Macro_Setting:addButton({
    title = "Delete Macro",
    callback = function()
        if isfile("HolyShz/AnimeAdventures/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
            delfile("HolyShz/AnimeAdventures/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json")
        end
        MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
    end,
})
-- Record
NumberPlace,Index,TimeInGame = 1,1,0
getgenv().RecordMacro = {}
RecordMacroToggle = false
Tab.Macro_Record:addToggle({
    title = "Record Macro",
    default = false ,
    callback = function(v)
        RecordMacroToggle = v
        if game:GetService("Workspace"):FindFirstChild("_DATA") and game:GetService("Workspace"):FindFirstChild("_DATA"):FindFirstChild("GameStarted") then
            if RecordMacroToggle and type(SaveSettings['Macro']['Macro Select']) ~= "None" then
                if game:GetService("Workspace"):FindFirstChild("_DATA"):FindFirstChild("GameStarted") then
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Waiting Game Start"
                    })
                    repeat wait() until game:GetService("Workspace")._DATA.GameStarted.Value
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
                writefile("HolyShz/AnimeAdventures/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                UI:Notify({
                    title = "Notification",
                    text = "Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select']
                })
            end
        end
    end,
},"TabMacroRecord_Record")

function Replay()
    spawn(function()
        local e, s = pcall(function()
            if workspace:FindFirstChild("_UNITS") then
                local Loader = require(game.ReplicatedStorage.src.Loader)
                local Maps = Loader.load_data(script, "Maps")
                local v100 = Maps[Loader.LevelData.map]
                local map = v100.terrain_preset
                local map2 = v100.id
                local GetLevelData = game.workspace._MAP_CONFIG:WaitForChild("GetLevelData"):InvokeServer()

                local NameMap = GetLevelData._location_name
                local GameType = GetLevelData._gamemode

                local MacroMapSelect = tostring(SaveSettings['Macro']['Macro Map'][GameType][NameMap]) or tostring(SaveSettings['Macro']['Macro Select'])

                if GetLevelData._is_map_or_portal_level == true then
                    NameMap = GetLevelData.id
                    GameType = GetLevelData._gamemode
                    MacroMapSelect = tostring(SaveSettings['Macro']['Macro Map'][GameType][NameMap]) or tostring(PortalID[SaveSettings['Join']['Select Portals']])
                elseif GetLevelData._event_contract ~= nil then
                    NameMap = GetLevelData._location_name
                    GameType = GetLevelData._gamemode
                    MacroMapSelect = tostring(SaveSettings['Macro']['Macro Map'][GameType][NameMap]) or tostring(SaveSettings['Macro']['Macro Select'])
                else
                    NameMap = GetLevelData._location_name or v100.name or GetLevelData.name
                    GameType = GetLevelData._gamemode
                    MacroMapSelect = tostring(SaveSettings['Macro']['Macro Map'][GameType][NameMap]) or tostring(SaveSettings['Macro']['Macro Select'])
                end
                
                
                if SaveSettings['Macro']['Macro Select'] ~= MacroMapSelect then SaveSettings['Macro']['Macro Select'] = MacroMapSelect end

                warn("=====================================")
                warn("Play Macro Name : " .. MacroMapSelect)
                warn("MAP : " .. NameMap)
                warn("MODE : " .. GameType)
                warn("=====================================")

                Text_MacroMap.Options:ChangeText("MAP : \n " .. NameMap .." \nMODE : " .. GameType)

                if SaveSettings['Macro']['Play Macro'] and isfile("HolyShz/AnimeAdventures/Macro/" .. tostring(MacroMapSelect)..".json") then
                    local Macro = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeAdventures/Macro/" .. tostring(MacroMapSelect)..".json"))
                    table.sort(Macro, function(a,b)
                        return tonumber(a["Index"]) < tonumber(b["Index"])
                    end)
                    --TotalIndex
                    local TableIndex = {}
                    table.foreach(Macro,function(i,v)
                        table.insert(TableIndex,v['Index'])
                    end)
                    if game:GetService("Workspace"):FindFirstChild("_DATA"):FindFirstChild("GameStarted") then
                        UI:Notify({
                            title = "Notification",
                            text = "Macro Status : Waiting Game Start"
                        })
                        repeat wait() until game:GetService("Workspace")._DATA.GameStarted.Value
                    end
                    ReplayMacroEnd = false
                    StartRecordTime = Timelapse()
                    NumberPlace,Index,TimeInGame = 1,1,0
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Start Macro"
                    })
                    for i,v in pairs(Macro) do
                        local UNIT;

                        if v["Index"] == math.max(unpack(TableIndex)) then
                            ReplayMacroEnd = true
                            MacroStats.Options:ChangeText('Status: Play Ended.')
                        end
                        if v["Method_Data"]["Method"] == "Place" then
                            local MacroData = v["Method_Data"]["Data"]
                            repeat task.wait()
                                MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitPlace"] .. "\n Waiting For : $" .. comma_value(tonumber( Module_Units[MacroData['UnitPlace']]['cost'])) .. " , Time : " ..string.format("%.2f", Timelapse() - StartRecordTime) .. "/" .. string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))) )
                            until (game:GetService("Players").LocalPlayer._stats.resource.Value >= tonumber(Module_Units[MacroData['UnitPlace']]['cost']) )
                            --until (game:GetService("Players").LocalPlayer._stats.resource.Value >= tonumber(Module_Units[MacroData['UnitPlace']]['cost']) ) and workspace:FindFirstChild("_wave_num").Value >= tonumber(MacroData["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))
                            local args = {
                                [1] = Table_Equipped_Slot[MacroData["UnitPlace"]]['Unit_uuid'],
                                [2] = StringToCFrame(MacroData["CFrame"]) * CFrame.new(0, -0.25, 0) * CFrame.Angles(0, -0, -0)
                            }
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
                        elseif v["Method_Data"]["Method"] == "Upgrade" then
                            local MacroData = v["Method_Data"]["Data"]
                            for index, value in pairs(workspace._UNITS:GetChildren()) do
                                if value:FindFirstChild("NumberTower") and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                    local _stats = value:FindFirstChild("_stats")
                                    repeat task.wait()
                                        MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For : $" .. tonumber( Module_Units[_stats:WaitForChild("id").Value]['upgrade'][tonumber(MacroData['Upgrade'])]["cost"] ) .. " , Time : " ..string.format("%.2f", Timelapse() - StartRecordTime) .. "/" .. string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))) )
                                    until (game:GetService("Players").LocalPlayer._stats.resource.Value >= tonumber( Module_Units[_stats:WaitForChild("id").Value]['upgrade'][tonumber(MacroData['Upgrade'])]["cost"] ) )
                                    --until (game:GetService("Players").LocalPlayer._stats.resource.Value >= tonumber( Module_Units[_stats:WaitForChild("id").Value]['upgrade'][tonumber(MacroData['Upgrade'])]["cost"] ) ) and workspace:FindFirstChild("_wave_num").Value >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))
                                    local args = { [1] = value }
                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(args))
                                    break
                                end
                            end
                        elseif v["Method_Data"]["Method"] == "Priority" then
                            local MacroData = v["Method_Data"]["Data"]
                            for index, value in pairs(workspace._UNITS:GetChildren()) do
                                if value:FindFirstChild("NumberTower") and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                    local _stats = value:FindFirstChild("_stats")
                                    repeat task.wait()
                                        MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For : $" .. tonumber( Module_Units[_stats:WaitForChild("id").Value]['upgrade'][tonumber(MacroData['Upgrade'])]["cost"] ) .. " , Time : " ..string.format("%.2f", Timelapse() - StartRecordTime) .. "/" .. string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))) )
                                    until workspace:FindFirstChild("_wave_num").Value >= tonumber(MacroData["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))
                                    if _stats:FindFirstChild("priority").Value ~= MacroData["Priority"] then
                                        local args = { [1] = value }
                                        game:GetService("ReplicatedStorage").endpoints.client_to_server.cycle_priority:InvokeServer(unpack(args))
                                        --_stats:FindFirstChild("priority"):GetPropertyChangedSignal("Value"):Wait()
                                    end
                                    break
                                end
                            end
                        elseif v["Method_Data"]["Method"] == "Selling" then
                            for index, value in pairs(workspace._UNITS:GetChildren()) do
                                if value:FindFirstChild("NumberTower") and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                    repeat task.wait()
                                        MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Time : " ..string.format("%.2f", Timelapse() - StartRecordTime) .. "/" .. string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))) )
                                    until workspace:FindFirstChild("_wave_num").Value >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))
                                        local args = { [1] = value }
                                        game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(unpack(args))
                                    break
                                end
                            end
                        elseif v["Method_Data"]["Method"] == "Abilite" then
                            for index, value in pairs(workspace._UNITS:GetChildren()) do
                                if value:FindFirstChild("NumberTower") and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                    repeat task.wait() 
                                        MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Time : " ..string.format("%.2f", Timelapse() - StartRecordTime) .. "/" .. string.format("%.2f", tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))) )
                                    until workspace:FindFirstChild("_wave_num").Value >= tonumber(v["Method_Data"]["Data"]["Wave"]) and (Timelapse() - StartRecordTime) >= tonumber(v["Time"] + tonumber(SaveSettings["Macro"]['Delat Macro Play Time (sec)']))
                                    local args = { [1] = value }
                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(unpack(args))
                                    break
                                end
                            end
                        end
                        task.wait(.1)
                    end
                    task.wait(1)

                    ReplayMacroEnd = true
                    MacroStats.Options:ChangeText('Status: Play Ended.')
                    print(555)
                end
            end
        end)
        if not e and s then
            warn("Errors : \n\n",s,"\n\n")
        end
    end)
end
Tab.Macro_Play:addDropdown({
    title = "Delay Macro Play Time (sec)",
    list = {0,1,2,3,4,5,6,7,8,9,10},
    default = SaveSettings["Macro"]['Delat Macro Play Time (sec)'],
    callback = function(v)
        SaveSettings["Macro"]['Delat Macro Play Time (sec)'] = v
        Save()
    end;
})
Tab.Macro_Play:addToggle({
    title = "Play Macro",
    default  = SaveSettings['Macro']['Play Macro'] ,
    callback = function(v)
        SaveSettings['Macro']['Play Macro'] = v
        Save()
    end ,
})
Tab.Macro_Play:addButton({
    title = "Test Replay",
    callback = function()
        Replay()
    end,
})
Tab.Macro_Play:addLabel({title = "It's a BETA version has a Bug and Problem \n If you found a Bug please report in Discord"})
------------------------------------------------------ [[ Macro Map ]] ------------------------------------------------------
Text_MacroMap = Tab.MacroMap_Setting:addLabel({title = "Event = raid / Legend Stage = story"})

local GAME_MODE = {'story','infinite','raid'}
local RefreshMacroMap = {}
for i,GAME_MODE in pairs(GAME_MODE) do
    if not SaveSettings['Macro']['Macro Map'][GAME_MODE] then
        SaveSettings['Macro']['Macro Map'][GAME_MODE] = {}
    end
    local Macro_Setting_Page = Page.MacroMap:addSection({
        title = "Macro - " .. GAME_MODE
    })

    if GAME_MODE == "story" then
        for i,NameMap in pairs(StoryMacroMap) do
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
        for i,NameMap in pairs(LegendMacroMap) do
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
    elseif GAME_MODE == "infinite" then
        for i,NameMap in pairs(StoryMacroMap) do
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
    elseif GAME_MODE == "raid" then
        for i,NameMap in pairs(EventDropdown) do
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
        for i,NameMap in pairs(RaidMacroMap) do
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
        for i,NameMap in pairs(PortalMacromap) do
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
        for i,NameMap in pairs(PortalDropdown) do
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
        for i,NameMap in pairs(StoryDropdown) do
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

Tab.MacroMap_Setting:addButton({
    title = "Refressh Macro",
    callback = function()
        for i,v in pairs(RefreshMacroMap) do
            GAME_MODE = i:split("_")[1]
            NameMap = i:split("_")[2]
            v.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Map'][GAME_MODE][NameMap]) 
        end
    end,
})
------------------------------------------------------ [[ Webhhook ]] ------------------------------------------------------
Tab.Webhook:addTextbox({
    title = "Webhook Url",
    holderbox = "Link Webhook ...",
    default = SaveSettings["Webhook"]["Webhook Url"],
    callback = function(starts)
        SaveSettings["Webhook"]["Webhook Url"] = starts
        Save()
    end,
})
Tab.Webhook:addButton({
    title = "Test Webhook",
    callback = function(v)
        if SaveSettings["Webhook"]["Webhook Url"] ~= "" then
            local Time = os.date('!*t', OSTime);
            local TestData = {
                ["content"] = "",
                ["embeds"] = {{
                    ["title"] = "**Test Webhook**",
                        ["description"] = "Test Webhook",
                        ["color"] = tonumber(0xDEECFF),
                        ["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                    },
                }
            }
        
            ApiServiceWebhook:Send(SaveSettings["Webhook"]["Webhook Url"],TestData)
        end
    end
})
Tab.Webhook:addToggle({
    title = "Enable Webhook [Send After End Game]",
    default = SaveSettings["Webhook"]["Send After End Game"] ,
    callback = function(v)
        SaveSettings["Webhook"]["Send After End Game"] = v
        Save()
    end ,
})
------------------------------------------------------ [[ Color Theme ]] ------------------------------------------------------
-- // Adding a color picker for each type of theme customisable
for theme, color in pairs(Themes) do
    Tab.Theme_Colors:addColorPicker({
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
Tab.Theme_Setting:addButton({
    title = "Rejoin",
    callback = function()
        local tpservice= game:GetService("TeleportService")
        local plr = game.Players.LocalPlayer

        tpservice:Teleport(17017769292, plr)
    end
})
Tab.Theme_Setting:addButton({
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
Tab.Theme_Setting:addDropdown({
    title = "Select FPS Amount",
    list = FPS_CAP, 
    default = SaveSettings["SaveSetting"]['FPS Value'],
    callback = function(v)
        SaveSettings["SaveSetting"]['FPS Value'] = v
        Save()
    end;
})
Tab.Theme_Setting:addToggle({
    title = "Enable FPS Cap",
    default  = SaveSettings["SaveSetting"]['FPS Cap'] ,
    callback = function(v)
        SaveSettings["SaveSetting"]['FPS Cap'] = v
        Save()
    end ,
})
Tab.Theme_Setting:addToggle({
    title = "Enable Low CPU Mode",
    default  = SaveSettings["SaveSetting"]['Low CPU Mode'] ,
    callback = function(v)
        SaveSettings["SaveSetting"]['Low CPU Mode'] = v
        Save()
    end ,
})

Tab.Theme_Setting:addKeybind({
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
------------------------------------------------------ [[ Stage Function ]] ------------------------------------------------------
--Portals
function GetPortals(id)
    local v5 = require(game.ReplicatedStorage.src.Loader)
    local ItemInventoryServiceClient = v5.load_client_service(script, "ItemInventoryServiceClient")

    local portals = {}
    for i, v in pairs(ItemInventoryServiceClient["session"]["inventory"]['inventory_profile_data']['unique_items']) do
        if v["item_id"]:match(id) then
            table.insert(portals, v)
        end
    end
    return portals
end

------------------------------------------------------ [[ Function ]] ------------------------------------------------------

if workspace._MAP_CONFIG.IsLobby.Value then
    function getLobby()
        for i,v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetChildren()) do
            for i1,v1 in pairs(v.Players:GetChildren()) do
                if v1.Value and v1.Value == plr then
                    return v
                end
            end
        end
        for i,v in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetChildren()) do
            if not v.Players:FindFirstChild("Value") then
                return v
            end
        end
        return false
    end
    function getRaidsLobby()
        for i,v in pairs(game:GetService("Workspace")["_RAID"].Raid:GetChildren()) do
            for i1,v1 in pairs(v.Players:GetChildren()) do
                if v1.Value and v1.Value == plr then
                    return v
                end
            end
        end
        for i,v in pairs(game:GetService("Workspace")["_RAID"].Raid:GetChildren()) do
            if not v.Players:FindFirstChild("Value") then
                return v
            end
        end
        return false
    end
    function getDungeonLobby()
        for i,v in pairs(game:GetService("Workspace")["_DUNGEONS"].Lobbies:GetChildren()) do
            for i1,v1 in pairs(v.Players:GetChildren()) do
                if v1.Value and v1.Value == plr then
                    return v
                end
            end
        end
        for i,v in pairs(game:GetService("Workspace")["_DUNGEONS"].Lobbies:GetChildren()) do
            if not v.Players:FindFirstChild("Value") then
                return v
            end
        end
        return false
    end
    --Portals
    task.spawn(function()
        while task.wait() do
            if getLobby() and SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Portals'] then
                local v5 = require(game.ReplicatedStorage.src.Loader)
                local ItemInventoryServiceClient = v5.load_client_service(script, "ItemInventoryServiceClient")
                PortalsData = ItemInventoryServiceClient["session"]['inventory']['inventory_profile_data']['unique_items']
                for i,v in pairs(PortalsData) do
                    if string.find(v['item_id'],"portal") or string.find(v['item_id'],"disc") then
                        if v['item_id'] == PortalID[SaveSettings['Join']['Select Portals']] then
                            if v["_unique_item_data"]["_unique_portal_data"]["challenge"] == nil then

                                local string_1 = GetPortals(PortalID[SaveSettings['Join']['Select Portals']])[1]["uuid"];
                                    local table_1 = {
                                        ["friends_only"] = SaveSettings['Join']['Friends Only'] 
                                    };
                                    local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["use_portal"];
                                    Target:InvokeServer(string_1, table_1);

                                    warn("Open 1 : " ..tostring(v['item_id']) .. " | Tier : "  ..tostring(v["_unique_item_data"]["_unique_portal_data"]["portal_depth"]).. " | Challenge : "  ..tostring(v["_unique_item_data"]["_unique_portal_data"]["challenge"]))
                                    task.wait(1)
                            else
                                if table.find(SaveSettings['Join']['Select Portal Tier2'],v["_unique_item_data"]["_unique_portal_data"]["portal_depth"]) then
                                    if table.find(SaveSettings['Join']['Select Portal Challenge'],v["_unique_item_data"]["_unique_portal_data"]["challenge"]) then
    
                                        local string_1 = GetPortals(PortalID[SaveSettings['Join']['Select Portals']])[1]["uuid"];
                                        local table_1 = {
                                            ["friends_only"] = SaveSettings['Join']['Friends Only'] 
                                        };
                                        local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["use_portal"];
                                        Target:InvokeServer(string_1, table_1);
    
                                        warn("Open 2 : " ..tostring(v['item_id']) .. " | Tier : "  ..tostring(v["_unique_item_data"]["_unique_portal_data"]["portal_depth"]).. " | Challenge : "  ..tostring(v["_unique_item_data"]["_unique_portal_data"]["challenge"]))
                                        task.wait(1)
                                    end
                                end
                            end
                            for i,v in pairs(game:GetService("Workspace")["_PORTALS"].Lobbies:GetDescendants()) do
                                if v.Name == "Owner" and tostring(v.value) == game.Players.LocalPlayer.Name then
                                    local args = { [1] = tostring(v.Parent.Name) }
                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
                                    task.wait(1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    --Summon
    task.spawn(function()
        while task.wait() do
            if SaveSettings['Summon']['Auto Summon'] then
                local string_1 = SaveSettings['Summon']['Select Banner'];
                local string_2 = SaveSettings['Summon']['Select Method'] == "x1" and "gems" or "gems10" 
                local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["buy_from_banner"];
                Target:InvokeServer(string_1, string_2);
                if game:GetService("Players").LocalPlayer.PlayerGui.UnitInfo.Enabled then
                    local button = game:GetService("Players").LocalPlayer.PlayerGui.UnitInfo.SmallInfo
                    local pos = button.AbsolutePosition
                    local size = button.AbsoluteSize
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, LocalPlayer, 0)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, LocalPlayer, 0)
                end
            end
        end
    end)
    --capsule
    task.spawn(function()
        while task.wait() do
            if SaveSettings['Summon']['Auto Open Capsule'] then
                local args = {
                    [1] = CapsuleID[SaveSettings['Summon']['Select Capsule']],
                    [2] = {
                        ["use10"] = SaveSettings['Summon']['Select Capsule Method'] == "x1" and false or true
                    }
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.use_item:InvokeServer(unpack(args))
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if SaveSettings['Summon']['Auto Claim Daily'] then
                game:GetService("ReplicatedStorage").endpoints.client_to_server.claim_daily_reward:InvokeServer()
                wait(.5)
                game:GetService("ReplicatedStorage").endpoints.client_to_server.claim_christmas_calendar_reward:InvokeServer()
            end
        end
    end)

    local Levels = require(game:GetService("ReplicatedStorage").src.Data.Levels)
    task.spawn(function()
        while task.wait() do

            --Challenges
            if SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Challenges'] then
                task.wait(2)
                repeat wait()
                for i,v in pairs(game:GetService("Workspace"):FindFirstChild("_CHALLENGES"):FindFirstChild("Challenges"):GetChildren()) do
                    local Room = v
                    local CheckActive = v:FindFirstChild('Active')
                    local ChallengeNow = v:FindFirstChild('Challenge')

                    if table.find(SaveSettings['Join']['Select Challenges'],ChallengeCCID[ChallengeNow.Value]) and CheckActive.Value == false then
                        local args = {  [1] = tostring(Room) }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))
                    end
                end
            until SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Enable Farm Challenges']
            end
            --Story
            if SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Story&Legend'] and SaveSettings['Join']['Select Mode Story'] == "Story" then
                local Lobby = getLobby()
                task.wait(2)
                repeat wait()
                    local process = MapData[SaveSettings['Join']['Select World']].."_"..(SaveSettings['Join']['Select Act Story']:lower():gsub("act ","level_"))
                    local Type = table.find({"Infinite"},SaveSettings['Join']['Select Act Story']) and "Hard" or "Normal"
                    -- print(process)
                    -- print(Levels[process]["id"])

                    if SaveSettings['Join']['Find Match [Matchmaking]'] then
                        local string_1 = Levels[process]["id"];
                        local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_matchmaking"];
                        Target:InvokeServer(string_1);
                    else
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(Lobby.Name)
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(Lobby.Name, Levels[process]["id"], SaveSettings['Join']['Friends Only'], Type)
                    end
                    
                    if SaveSettings['Join']['Auto Start'] then
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(Lobby.Name)
                    end
                    wait(5)
                until SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Enable Farm Story&Legend']
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_leave_lobby:InvokeServer(Lobby.Name)
            end
            --LegendStage
            if SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Story&Legend'] and SaveSettings['Join']['Select Mode Story'] == "Legend Stage" then
                local Lobby = getLobby()
                task.wait(2)
                repeat wait()
                    local process = MapData[SaveSettings['Join']['Select World']].."_"..(SaveSettings['Join']['Select Act Story']:lower():gsub("act ","legend_"))
                    local Type = table.find({"Infinite"},SaveSettings['Join']['Select Act Story']) and "Hard" or "Normal"
                    -- print(process)
                    -- print(Levels[process]["id"])

                    if SaveSettings['Join']['Find Match [Matchmaking]'] then
                        local string_1 = Levels[process]["id"];
                        local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_matchmaking"];
                        Target:InvokeServer(string_1);
                    else
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(Lobby.Name)
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(Lobby.Name, Levels[process]["id"], SaveSettings['Join']['Friends Only'], Type)
                    end
                    
                    if SaveSettings['Join']['Auto Start'] then
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(Lobby.Name)
                    end
                    wait(5)
                until SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Enable Farm Story&Legend']
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_leave_lobby:InvokeServer(Lobby.Name)
            end
            --Raids
            if SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Raids'] then
                local Lobby = getRaidsLobby()
                task.wait(2)
                repeat wait()
                    local process = MapData[SaveSettings['Join']['Select World Raids']].."_"..(SaveSettings['Join']['Select Act Raids']:lower():gsub("act ","level_"))
                    local Type = "Hard"
                    --print(process)
                    --print(Levels[process]["id"])

                    if SaveSettings['Join']['Find Match [Matchmaking]'] then
                        local string_1 = Levels[process]["id"];
                        local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_matchmaking"];
                        Target:InvokeServer(string_1);
                    else
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(Lobby.Name)
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(Lobby.Name, Levels[process]["id"], SaveSettings['Join']['Friends Only'], "Hard")
                    end

                    if SaveSettings['Join']['Auto Start'] then
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(Lobby.Name)
                    end
                    wait(5)
                until SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Enable Farm Raids']
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_leave_lobby:InvokeServer(Lobby.Name)
            end
            --Events
            if SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Events'] then
                --local Lobby = getDungeonLobby()
                local Lobby = SaveSettings["Join"]['Select Events'] == 'Christmas Event' and "_lobbytemplate_event3" or SaveSettings["Join"]['Select Events'] == 'Halloween Event' and "_lobbytemplate_event4"
                task.wait(2)
                repeat wait()
                    local process = SaveSettings["Join"]['Select Events'] == 'Christmas Event' and "_lobbytemplate_event3" or SaveSettings["Join"]['Select Events'] == 'Halloween Event' and "_lobbytemplate_event4"
                    local Type = "Hard"

                    if SaveSettings['Join']['Find Match [Matchmaking]'] then
                        local string_1 = SaveSettings["Join"]['Select Events'] == 'Christmas Event' and "christmas_event" or SaveSettings["Join"]['Select Events'] == 'Halloween Event' and "halloween2_event";
                        local Target = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_matchmaking"];
                        Target:InvokeServer(string_1);
                    else
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(Lobby)
                    end
                    wait(120)
                until SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Enable Farm Events']
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_leave_lobby:InvokeServer(Lobby)
            end
            --Assasin Park
            if SaveSettings['Join']['Auto Join'] and SaveSettings['Join']['Enable Farm Events Assasin'] then
                task.wait(2)
                repeat wait()
                    for i,v in pairs(GetAssasinData()) do
                        if table.find(SaveSettings['Join']['Select Event Challenges'],v['_challengename']) and table.find(SaveSettings['Join']['Select Event Map'],v['_location_name']) and table.find(SaveSettings['Join']['Select Event Tier'],tostring(v['_portal_depth'])) then
                            if SaveSettings['Join']['Find Match [Matchmaking]'] then
                                local args = {
                                    [1] = v['id']
                                }
                                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_matchmaking:InvokeServer(unpack(args))
                            else
                                local args = {
                                    [1] = i,
                                    [2] = {
                                        ["friends_only"] = SaveSettings['Join']['Friends Only']
                                    }
                                }
                                game:GetService("ReplicatedStorage").endpoints.client_to_server.open_event_contract_portal:InvokeServer(unpack(args))
                            end
                            if SaveSettings['Join']['Auto Start'] then
                                for i,v in pairs(game:GetService("Workspace")["_PORTALS"].Lobbies:GetDescendants()) do
                                    if v.Name == "Owner" and tostring(v.value) == game.Players.LocalPlayer.Name then
                                        local args = { [1] = tostring(v.Parent.Name) }
                                        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
                                        task.wait(1)
                                    end
                                end
                            end
                        end
                    end
                until SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Auto Join'] or not SaveSettings['Join']['Enable Farm Events Assasin']
            end
            
        end
    end)
end

if not workspace._MAP_CONFIG.IsLobby.Value then
    local Table_Units_Buff = {
        ['erwin'] = {
            ['Delay'] = 16.4,
            ['Units'] = {},
        },
        ['wendy'] = {
            ['Delay'] = 16.4,
            ['Units'] = {},
        },
        ['leafa'] = {
            ['Delay'] = 16.4,
            ['Units'] = {},
        },
    }
    function CheckUnitsBuff()
        Table_Units_Buff = {
            ['erwin'] = {
                ['Delay'] = 16.4,
                ['Units'] = {},
            },
            ['wendy'] = {
                ['Delay'] = 16.4,
                ['Units'] = {},
            },
            ['leafa'] = {
                ['Delay'] = 16.4,
                ['Units'] = {},
            },
        }
        for _,v in pairs(game:GetService("Workspace")._UNITS:GetChildren()) do
            if string.find(v.Name,'erwin') and Table_Units_Buff['erwin']['Units'] ~= 4 and v._stats.player.Value == game.Players.LocalPlayer then
                table.insert(Table_Units_Buff['erwin']['Units'], v)
            end
            if string.find(v.Name,'wendy') and Table_Units_Buff['wendy']['Units'] ~= 4 and v._stats.player.Value == game.Players.LocalPlayer then
                table.insert(Table_Units_Buff['wendy']['Units'], v)
            end
            if string.find(v.Name,'leafa') and Table_Units_Buff['leafa']['Units'] ~= 4 and v._stats.player.Value == game.Players.LocalPlayer then
                table.insert(Table_Units_Buff['leafa']['Units'], v)
            end
        end
    end
    
    -- Auto Buff
    spawn(function()
        while wait() do
            pcall(function()
                if SaveSettings['AutoPlay']['Auto Buff'] and table.find(SaveSettings['AutoPlay']['Select Unit Buff'],'erwin') and #Table_Units_Buff['erwin']['Units'] == 4 then
                    for i,v in pairs(Table_Units_Buff['erwin']['Units']) do
                        if #Table_Units_Buff['erwin']['Units'] == 4 and v.Parent then
                            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(v)
                            wait(Table_Units_Buff['erwin']['Delay'])
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if SaveSettings['AutoPlay']['Auto Buff'] and table.find(SaveSettings['AutoPlay']['Select Unit Buff'],'wendy') and #Table_Units_Buff['wendy']['Units'] == 4 then
                    for i,v in pairs(Table_Units_Buff['wendy']['Units']) do
                        if #Table_Units_Buff['wendy']['Units'] == 4 and v.Parent then
                            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(v)
                            wait(Table_Units_Buff['wendy']['Delay'])
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if SaveSettings['AutoPlay']['Auto Buff'] and table.find(SaveSettings['AutoPlay']['Select Unit Buff'],'leafa') and #Table_Units_Buff['leafa']['Units'] == 4 then
                    for i,v in pairs(Table_Units_Buff['leafa']['Units']) do
                        if #Table_Units_Buff['leafa']['Units'] == 4 and v.Parent then
                            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(v)
                            wait(Table_Units_Buff['leafa']['Delay'])
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                CheckUnitsBuff()
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if SaveSettings['Join']['Auto Abilite at Wave'] then
                    if SaveSettings['Join']['Auto Abilite at Wave'] and tonumber(SaveSettings['Join']['Select Wave Use Abilite']) <= _wave.Value then
                        for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                            repeat task.wait() until v:WaitForChild("_stats")
                            if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                                if v._stats.id.Value ~= "erwin" and v._stats.id.Value ~= "wendy" and v._stats.id.Value ~= "leafa" and v._stats.id.Value ~= "aot_generic" then
                                    if v._stats:FindFirstChild("active_attack") and v._stats.active_attack.Value ~= "nil" and tonumber(SaveSettings['Join']['Select Wave Use Abilite']) <= _wave.Value then
                                        wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    end
                                end
                            elseif tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name and v._stats.id.Value == "pucci_heaven" or v._stats.id.Value == "dio_heaven" or v._stats.id.Value == "eren_final" then
                                if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                                    if v._stats.state.Value ~= "attack" then
                                        -- Check Infinite
                                        if GLD()._gamemode == "infinite" then
                                            if GetWaveNumber() % 10 == 0 then
                                                wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                                game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                                warn("Use Skill : " ..tostring(v._stats.id.Value) .. " | Wave : " ..tostring(_wave.Value))
                                            end
                                        -- Check Raid
                                        elseif GLD()._gamemode == "raid" then
                                            if GetWaveNumber() % 15 == 0 or GetWaveNumber() % 20 == 0 or GetWaveNumber() == 15 or GetWaveNumber() == 20 then
                                                wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                                game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                                warn("Use Skill : " ..tostring(v._stats.id.Value) .. " | Wave : " ..tostring(_wave.Value))
                                            end
                                        -- Check Story or Infinite Tower
                                        elseif GLD()._gamemode == "story" or "infinite_tower" then
                                            if GetWaveNumber() == 15 then
                                                wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                                game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                                warn("Use Skill : " ..tostring(v._stats.id.Value) .. " | Wave : " ..tostring(_wave.Value))                                                                  
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    task.spawn(function()
        local services = require(game.ReplicatedStorage.src.Loader)
        local placement_service = services.load_client_service(script, "PlacementServiceClient")
        while task.wait() do
            if not SaveSettings['AutoPlay']['Place Anywhere'] then return end
            placement_service.can_place = true
        end
    end)
    task.spawn(function()
        while task.wait() do
            if not SaveSettings['AutoPlay']['Delete Map'] then return end
            if SaveSettings['AutoPlay']['Delete Map'] then
                pcall(function()
                    DelMap()
                end)
            end
        end
    end)


    function MacroRecord(Type,Data)
        local DataTable = {
            ['Time'] = Timelapse() - StartRecordTime or 0,
            ['Index'] = Index or 0,
            ["Method_Data"] = {
                ["Method"] = tostring(Type),
                ["Data"] = Data
            }
        }
        table.insert(getgenv().RecordMacro, DataTable)
        table.sort(getgenv().RecordMacro , function(a,b)
            return tonumber(a['Index']) < tonumber(b['Index'])
        end)
        writefile("HolyShz/AnimeAdventures/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
        Index = Index + 1
    end

    workspace._UNITS.ChildAdded:Connect(function(v)
        local stats = v:WaitForChild("_stats", 5)
        if stats and stats:WaitForChild("player", 5) and stats:WaitForChild("player").Value == plr then
            if v:WaitForChild("_stats") and v._stats:FindFirstChild("id").Value == "vegito" then
                if RecordMacroToggle then
                    MacroStats.Options:ChangeText("Status: Record Marcro [ Fusion ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        local Number = Instance.new("IntValue")
                        Number.Name = 'NumberTower'
                        Number.Parent = v
                        Number.Value = NumberPlace
                        NumberPlace = NumberPlace + 1
                    -- Upgrade
                    stats:FindFirstChild("upgrade").Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        MacroRecord("Upgrade", {
                            ['Wave'] = workspace:FindFirstChild("_wave_num").Value or 0,
                            ["UnitPlace"] = v.NumberTower.Value,
                            ['Upgrade'] = NewValue
                        })
                    end)
                    -- Priority
                    stats:FindFirstChild("priority").Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Priority ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        MacroRecord("Priority", {
                            ['Wave'] = workspace:FindFirstChild("_wave_num").Value or 0,
                            ["UnitPlace"] = v.NumberTower.Value,
                            ['Priority'] = NewValue
                        })
                    end)
                    -- Fusion
                    stats:FindFirstChild("id").Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Fusion ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        local Number = Instance.new("IntValue")
                        Number.Name = 'NumberTower'
                        Number.Parent = v
                        Number.Value = NumberPlace
                        NumberPlace = NumberPlace + 1
                    end)
                end
            end

            if Table_Equipped_Slot[stats:WaitForChild("id").Value] then
                if RecordMacroToggle then
                    MacroStats.Options:ChangeText("Status: Record Marcro [ Place ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                    MacroRecord("Place", {
                        ['Wave'] = workspace:FindFirstChild("_wave_num").Value or 0,
                        ["UnitPlace"] = tostring(stats:WaitForChild("id").Value),
                        ["CFrame"] = tostring(v:WaitForChild("_shadow").CFrame)
                    })
                    -- Upgrade
                    stats:FindFirstChild("upgrade").Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        MacroRecord("Upgrade", {
                            ['Wave'] = workspace:FindFirstChild("_wave_num").Value or 0,
                            ["UnitPlace"] = v.NumberTower.Value,
                            ['Upgrade'] = NewValue
                        })
                    end)
                    -- Priority
                    stats:FindFirstChild("priority").Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Priority ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        MacroRecord("Priority", {
                            ['Wave'] = workspace:FindFirstChild("_wave_num").Value or 0,
                            ["UnitPlace"] = v.NumberTower.Value,
                            ['Priority'] = NewValue
                        })
                    end)
                    -- Fusion
                    stats:FindFirstChild("id").Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Fusion ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                        local Number = Instance.new("IntValue")
                        Number.Name = 'NumberTower'
                        Number.Parent = v
                        Number.Value = NumberPlace
                        NumberPlace = NumberPlace + 1
                    end)
                end

                local Number = Instance.new("IntValue")
                Number.Name = 'NumberTower'
                Number.Parent = v
                Number.Value = NumberPlace
                NumberPlace = NumberPlace + 1
            end
        end
    end)
    workspace._UNITS.ChildRemoved:Connect(function(v)
        local configuration = v:FindFirstChild("NumberTower")
        if configuration and RecordMacroToggle and v:FindFirstChild("_shadow") then
            MacroStats.Options:ChangeText("Status: Record Marcro [ Selling ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )

            if v:FindFirstChild("_stats") and ((v.Name == "vegeta_majin" or v.Name == "vegeta_majin_evolved") and v._stats.upgrade.Value >= 7) or ((v.Name == "goku_ssj3" or v.Name == "goku_ssj3_evolved") and v._stats.upgrade.Value >= 7) then
                if v._stats:FindFirstChild("active_attack") and v._stats.active_attack.Value ~= "nil" then
                    MacroStats.Options:ChangeText("Status: Record Marcro [ Fusion ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                    warn('Fusion Vegito')
                end
            else
                MacroStats.Options:ChangeText("Status: Record Marcro [ Selling ]\nTower : " .. tostring(v.Name) .. "\n Wave : " .. workspace:FindFirstChild("_wave_num").Value or 0 )
                MacroRecord("Selling", {
                    ['Wave'] = workspace:FindFirstChild("_wave_num").Value or 0,
                    ["UnitPlace"] = v.NumberTower.Value,
                }) 
            end

        end
    end)
    workspace._DATA.GameFinished.Changed:Connect(function(NewValue)
        if not NewValue then return end
        if RecordMacroToggle then
            RecordMacroToggle = false
            Toggles.TabMacroRecord_Record:ChangeToggle(false)
        end
        repeat task.wait() until  game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Enabled == true
        --ClickButton(game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Buttons.Next)
    end)
    workspace._DATA.GameStarted.Changed:Connect(function(NewValue)
        if not NewValue then return end
        if SaveSettings['Macro']['Play Macro'] then
            Replay()
        end
    end)
    repeat task.wait()
        if not workspace._DATA.GameStarted.Value and SaveSettings['Join']['Auto Start In Games'] then
            game:GetService("ReplicatedStorage").endpoints["client_to_server"]["vote_start"]:InvokeServer();            
        end
    until workspace._DATA.GameStarted.Value

    local NumberAssasinRoom = {}
    spawn(function()
        while wait() do
            local DataContract = game:GetService("ReplicatedStorage").endpoints.client_to_server.get_current_event_contracts:InvokeServer()
            for i,v in pairs(DataContract) do
                if table.find(SaveSettings['Join']['Select Event Challenges'],v['_challengename']) and table.find(SaveSettings['Join']['Select Event Map'],v['_location_name']) and table.find(SaveSettings['Join']['Select Event Tier'],v['_portal_depth']) then
                    NumberAssasinRoom[i] = v['_event_contract']['slot']
                end
            end
            wait(5)
        end
    end)

    -- Webhook
    task.spawn(function()
        while task.wait() do
            --Auto Replay TEST
            local GameFinished = game:GetService("Workspace"):WaitForChild("_DATA"):WaitForChild("GameFinished")
            GameFinished:GetPropertyChangedSignal("Value"):Connect(function()
                if GameFinished.Value == true then
                    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Enabled == true
                    pcall(function() 
                        WebhookMain()
                    end)
                    task.wait(1.5)
                    
                    repeat task.wait() 
                        if SaveSettings['Join']['Auto Next In Games'] then
                            local a={[1]="next_story"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                            local a={[1]="NextLevel"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                            wait(.25)
                            local a={[1]="NextRetry"} game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_infinite_tower_from_game:InvokeServer(unpack(a))
                            local a={[1]="NextRetry"} game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_infinite_tower_from_game:InvokeServer(unpack(a)) 
                            wait(.25)
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer("next_story")
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer("NextLevel")
                        end
                        local GetLevelData = game.workspace._MAP_CONFIG:WaitForChild("GetLevelData"):InvokeServer()
                        --Replay_Assasin
                        if SaveSettings['Join']['Auto Retry In Games'] then
                            if GetLevelData._event_contract ~= nil then
                                table.foreach(NumberAssasinRoom,function(i,v)
                                    warn(i,v)
                                    wait(3)
                                    local args = {
                                        [1] = "eventcontract",
                                        [2] = {
                                            ["_eventcontractslot"] = v
                                        }
                                    }
                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
                                    warn('Retry Event Sakamoto')
                                end)
                            end
                            if GetLevelData._is_map_or_portal_level == true then
                                local args = { [1] = "replay", [2] = { ["item_uuid"] = GetPortals(PortalID[SaveSettings['Join']['Select Portals']])[1]["uuid"] }}
                                game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
                                wait(.25)
                            else
                                local a={[1]="replay"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                                local a={[1]="replay"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                                wait(.25)
                                game:GetService("ReplicatedStorage").endpoints:FindFirstChild("client_to_server"):FindFirstChild("set_game_finished_vote"):InvokeServer("replay");
                            end
                        end
                        if SaveSettings['Join']['Auto Back To Lobby In Games'] then
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
                        end
                    until not game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Buttons.Next.Visible == true

                    wait(3)
                    ClickButton(game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Buttons.Next)

                    repeat task.wait()
                        local camera = workspace.CurrentCamera
                        local Center = Vector2.new(camera.ViewportSize.X / -7, camera.ViewportSize.Y / 7)
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, true, game, 1)
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, false, game, 1)
                        wait(.5)
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, true, game, 0)
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, false, game, 0)
                    until not GameFinished.Value == true or game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Finished.Next.Visible == true

                    repeat task.wait()
                            local camera = workspace.CurrentCamera
                            local Center = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 6)

                            game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, true, game, 1)
                            game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, false, game, 1)
                            wait(.5)
                            game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, true, game, 0)
                            game:GetService("VirtualInputManager"):SendMouseButtonEvent(Center.X, Center.Y, 0, false, game, 0)
                    until game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Finished.Visible == true or game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Finished.Next.Visible == true

                    repeat task.wait()
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game.Workspace, 1)
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game.Workspace, 1)
                        wait(0.6)
                    until not GameFinished.Value == true

                    if SaveSettings['Join']['Auto Next In Games'] then
                        local a={[1]="next_story"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                        local a={[1]="NextLevel"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                        wait(.25)
                        local a={[1]="NextRetry"} game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_infinite_tower_from_game:InvokeServer(unpack(a))
                        local a={[1]="NextRetry"} game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_infinite_tower_from_game:InvokeServer(unpack(a)) 
                        wait(.25)
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer("next_story")
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer("NextLevel")
                    end
                    local GetLevelData = game.workspace._MAP_CONFIG:WaitForChild("GetLevelData"):InvokeServer()
                    --Replay_Assasin
                    if SaveSettings['Join']['Auto Retry In Games'] then
                        if GetLevelData._event_contract ~= nil then
                            table.foreach(NumberAssasinRoom,function(i,v)
                                warn(i,v)
                                wait(3)
                                local args = {
                                    [1] = "eventcontract",
                                    [2] = {
                                        ["_eventcontractslot"] = v
                                    }
                                }
                                game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
                                warn('Retry Event Sakamoto')
                            end)
                        end
                        if GetLevelData._is_map_or_portal_level == true then
                            local args = { [1] = "replay", [2] = { ["item_uuid"] = GetPortals(PortalID[SaveSettings['Join']['Select Portals']])[1]["uuid"] }}
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
                            wait(.25)
                        else
                            local a={[1]="replay"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                            local a={[1]="replay"} game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(a))
                            wait(.25)
                            game:GetService("ReplicatedStorage").endpoints:FindFirstChild("client_to_server"):FindFirstChild("set_game_finished_vote"):InvokeServer("replay");
                        end
                    end
                    if SaveSettings['Join']['Auto Back To Lobby In Games'] then
                        TeleportLobby()
                        wait(.5)
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
                    end
                end
            end)

            if not workspace._MAP_CONFIG.IsLobby.Value then
                --Place Anywhere
                repeat task.wait()
                    if SaveSettings['Join']['Place Anywhere'] then
                        local services = require(game.ReplicatedStorage.src.Loader)
                        local placement_service = services.load_client_service(script, "PlacementServiceClient")
                        
                        task.spawn(function()
                            while task.wait() do
                                placement_service.can_place = true
                            end
                        end)
                        wait(.1)
                        
                        if game.Workspace:WaitForChild("_UNITS") then
                            for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                                repeat task.wait() until v:WaitForChild("_stats")
                                if v.Name == name and tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name and v.Name:FindFirstChild("_hitbox") then
                                    v:Destroy() end
                            end
                        end        
                    end
                until not SaveSettings['Join']['Place Anywhere']

                --Delete Map
                repeat task.wait()
                    if SaveSettings['AutoPlay']['Delete Map'] then
                        if not SaveSettings['AutoPlay']['Delete Map'] then return end
                        if game.Workspace._terrain:FindFirstChild("terrain") then
                            for i,v in pairs(game:GetService("Workspace")["_terrain"].terrain:GetChildren()) do
                                if v.ClassName == "Model" then v:Remove() end
                                if v.ClassName == "Folder" then v:Remove() end
                                if v.ClassName == "Part" then v:Remove() end
                            end
                        end  
                        wait(.1)
                        if game.Workspace:FindFirstChild("_map") then
                            for i,v in pairs(game:GetService("Workspace")["_map"]:GetChildren()) do
                                if v.ClassName == "Model" then v:Remove() end
                                if v.ClassName == "Part" then v:Remove() end
                                if v.ClassName == "Folder" then v:Remove() end
                            end
                        end 
                    end
                until not SaveSettings['AutoPlay']['Delete Map']

                --Sell_All_At_Wave
                local _wave = game:GetService("Workspace"):WaitForChild("_wave_num")
                if SaveSettings['Join']['Auto Sell All at Wave'] then
                    repeat task.wait()
                        if SaveSettings['Join']['Auto Sell All at Wave'] and tonumber(SaveSettings['Join']['Select Wave to SELL']) <= _wave.Value then
                            for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                                repeat task.wait() until v:WaitForChild("_stats")
                                if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                                    repeat
                                        task.wait()
                                    until v:WaitForChild("_stats"):WaitForChild("upgrade")

                                    local args = { [1] = v }
                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(unpack(args))
                    
                                end
                            end
                        end
                    until not SaveSettings['Join']['Auto Sell All at Wave']
                end
                --Abilite at Wave
                if SaveSettings['Join']['Auto Abilite at Wave'] then
                    repeat task.wait()
                        if SaveSettings['Join']['Auto Abilite at Wave'] and tonumber(SaveSettings['Join']['Select Wave Use Abilite']) <= _wave.Value then
                            for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                                repeat task.wait() until v:WaitForChild("_stats")
                                if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                                    if v._stats.id.Value ~= "erwin" and v._stats.id.Value ~= "wendy" and v._stats.id.Value ~= "leafa" and v._stats.id.Value ~= "aot_generic" then
                                        if v._stats:FindFirstChild("active_attack") and v._stats.active_attack.Value ~= "nil" and tonumber(SaveSettings['Join']['Select Wave Use Abilite']) <= _wave.Value then
                                            wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                            game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                        end
                                    end
                                elseif tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name and v._stats.id.Value == "pucci_heaven" or v._stats.id.Value == "dio_heaven" or v._stats.id.Value == "eren_final" then
                                    if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                                        if v._stats.state.Value ~= "attack" then
                                            -- Check Infinite
                                            if GLD()._gamemode == "infinite" then
                                                if GetWaveNumber() % 10 == 0 then
                                                    wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                                    warn("Use Skill : " ..tostring(v._stats.id.Value) .. " | Wave : " ..tostring(_wave.Value))
                                                end
                                            -- Check Raid
                                            elseif GLD()._gamemode == "raid" then
                                                if GetWaveNumber() % 15 == 0 or GetWaveNumber() % 20 == 0 or GetWaveNumber() == 15 or GetWaveNumber() == 20 then
                                                    wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                                    warn("Use Skill : " ..tostring(v._stats.id.Value) .. " | Wave : " ..tostring(_wave.Value))
                                                end
                                            -- Check Story or Infinite Tower
                                            elseif GLD()._gamemode == "story" or "infinite_tower" then
                                                if GetWaveNumber() == 15 then
                                                    wait(tonumber(SaveSettings["Join"]['Delay Use Abilite (sec)']))
                                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                                    warn("Use Skill : " ..tostring(v._stats.id.Value) .. " | Wave : " ..tostring(_wave.Value))                                                                  
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    until not SaveSettings['Join']['Auto Abilite at Wave']
                end
                --Upgrade_All_At_Wave
                if SaveSettings['Join']['Auto Upgrade All at Wave'] then
                    repeat task.wait()
                        if SaveSettings['Join']['Auto Upgrade All at Wave'] and tonumber(SaveSettings['Join']['Select Wave to Upgrade']) <= _wave.Value then
                            local success, err = pcall(function() --///
                                repeat task.wait() until game:GetService("Workspace"):WaitForChild("_UNITS")
                                for i, v in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                                if v:FindFirstChild("_stats") then
                                        if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name and v["_stats"].xp.Value >= 0 then
                                            game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(v)
                                        end
                                    end
                                end
                            end)
                            if err then
                                warn("//////////////////////////////////////////////////")
                                error(err)
                                warn("//////////////////////////////////////////////////")
                            end
                        end
                    until not SaveSettings['Join']['Auto Upgrade All at Wave']
                end
            end
        end
    end)
end

--error
pcall(function()
    game:GetService("ReplicatedStorage").packages.assets["ui_sfx"].error.Volume = 0
    game:GetService("ReplicatedStorage").packages.assets["ui_sfx"].error_old.Volume = 0
    game.Players.LocalPlayer.PlayerGui.MessageGui.Enabled = false
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

print("Load")

local bb = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
end)
