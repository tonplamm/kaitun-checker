--find old ui
if game.CoreGui:FindFirstChild("hehe") then game.CoreGui:FindFirstChild("hehe"):Destroy() end

--create ScreenGui
local className = "ScreenGui"
local parent = game.CoreGui
local part = Instance.new(className, parent)
part.Name = "hehe"

wait(.2)

--var
Mastery_FULL = false
MONEY_FULL = false

Have_Buddy = false
Have_Yama = false
Have_Hallow_Scythe = false
Have_Dark_Coat = false
Have_Dark_Dagger = false
Have_Tushita = false

GREEN = Color3.fromHex("#64ff64")
RED = Color3.fromHex("#ff6464")

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local Textname = Instance.new(className, parent)

--setting TextLabel
Textname.Name = "Textname"
Textname.Text = game:GetService("Players").LocalPlayer.Name
Textname.Position = UDim2.new(0, 10, 0, 20)
Textname.TextSize = 25
Textname.TextColor3 = Color3.new(255,255,255)
Textname.TextStrokeTransparency = 0
Textname.TextXAlignment = Enum.TextXAlignment.Left

    --check mastery
    OWN_DF = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
    MAS_DF = game:GetService("Players").LocalPlayer.Backpack[OWN_DF].Level.Value

    if OWN_DF == 'Kilo-Kilo' then
        MAS_DF_CHECK = 15
    elseif OWN_DF == 'Spin-Spin' then
        MAS_DF_CHECK = 15
    elseif OWN_DF == 'Chop-Chop' then
        MAS_DF_CHECK = 50
    elseif OWN_DF == 'Spring-Spring' then
        MAS_DF_CHECK = 80
    elseif OWN_DF == 'Bomb-Bomb' then
        MAS_DF_CHECK = 125
    elseif OWN_DF == 'Smoke-Smoke' then
        MAS_DF_CHECK = 50
    elseif OWN_DF == 'Spike-Spike' then
        MAS_DF_CHECK = 90
    elseif OWN_DF == 'Flame-Flame' then
        MAS_DF_CHECK = 100
    elseif OWN_DF == 'Bird-Bird: Falcon' then
        MAS_DF_CHECK = 120
    elseif OWN_DF == 'Ice-Ice' then
        MAS_DF_CHECK = 100
    elseif OWN_DF == 'Sand-Sand' then
        MAS_DF_CHECK = 120
    elseif OWN_DF == 'Dark-Dark' then
        MAS_DF_CHECK = 110
    elseif OWN_DF == 'Revive-Revive' then
        MAS_DF_CHECK = 110
    elseif OWN_DF == 'Diamond-Diamond' then
        MAS_DF_CHECK = 110
    elseif OWN_DF == 'Light-Light' then
        MAS_DF_CHECK = 110
    elseif OWN_DF == 'Love-Love' then
        MAS_DF_CHECK = 100
    elseif OWN_DF == 'Rubber-Rubber' then
        MAS_DF_CHECK = 150
    elseif OWN_DF == 'Barrier-Barrier' then
        MAS_DF_CHECK = 130
    elseif OWN_DF == 'Magma-Magma' then
        MAS_DF_CHECK = 140
    elseif OWN_DF == 'Door-Door' then
        MAS_DF_CHECK = 200
    elseif OWN_DF == 'Quake-Quake' then
        MAS_DF_CHECK = 150
    elseif OWN_DF == 'Human-Human: Buddha' then
        MAS_DF_CHECK = 150
    elseif OWN_DF == 'String-String' then
        MAS_DF_CHECK = 225
    elseif OWN_DF == 'Bird-Bird: Phoenix' then
        MAS_DF_CHECK = 250
    elseif OWN_DF == 'Rumble-Rumble' then
        MAS_DF_CHECK = 250
    elseif OWN_DF == 'Paw-Paw' then
        MAS_DF_CHECK = 300
    elseif OWN_DF == 'Gravity-Gravity' then
        MAS_DF_CHECK = 300
    elseif OWN_DF == 'Dough-Dough' then
        MAS_DF_CHECK = 300
    elseif OWN_DF == 'Shadow-Shadow' then
        MAS_DF_CHECK = 300
    elseif OWN_DF == 'Venom-Venom' then
        MAS_DF_CHECK = 300
    elseif OWN_DF == 'Control-Control' then
        MAS_DF_CHECK = 350
    elseif OWN_DF == 'Soul-Soul' then
        MAS_DF_CHECK = 350
    elseif OWN_DF == 'Dragon-Dragon' then
        MAS_DF_CHECK = 350
    elseif OWN_DF == 'Leopard-Leopard' then
        MAS_DF_CHECK = 300
    end
       
    --create TextLabel
    local className = "TextLabel"
    local parent = game.CoreGui.hehe
    local TextMasDF = Instance.new(className, parent)

    --setting TextLabel
    TextMasDF.Name = "TextMasDF"
    TextMasDF.Text = ''
    TextMasDF.Position = UDim2.new(0, 10, 0, 50)
    TextMasDF.TextSize = 20
    TextMasDF.TextColor3 = Color3.new(255,255,255)
    TextMasDF.TextStrokeTransparency = 0
    TextMasDF.TextXAlignment = Enum.TextXAlignment.Left

    if MAS_DF >= MAS_DF_CHECK then
        Mastery_FULL = true
        TextMasDF.Text = 'Full Mas'
        TextMasDF.TextColor3 = GREEN
    else
        TextMasDF.Text = 'Mas not enough'
        TextMasDF.TextColor3 = RED
    end

    -- acc manager --
    local RAMAccount = loadstring(game:HttpGet'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua')()

    local MyAccount = RAMAccount.new(game:GetService'Players'.LocalPlayer.Name)

    local LeveltoShow = game:GetService("Players").LocalPlayer.Data.Level.Value

    local Money = game:GetService("Players").LocalPlayer.Data.Beli.Value

    local longtei = ''

    if Money >= 1 and Money <= 999 then
        longtei = 'Beli'
    elseif Money >= 1000 and Money <= 999999 then
        longtei = 'K'
        Money = Money / 1000
    elseif Money >= 1000000 then
        longtei = 'M'
        Money = Money / 1000000
    end

    --Money = math.round(Money)

    --fps
    --local script = Instance.new('LocalScript', Fps)
    game:GetService("RunService").RenderStepped:Connect(function(frame) -- This will fire every time a frame is rendered
        MyAccount:SetDescription('Lv: ' ..LeveltoShow ..' Money: ' ..math.round(Money) ..longtei .." FPS: "..math.round(1/frame)) 
    end)

    --MyAccount:SetDescription('Lv : ' ..LeveltoShow ..' Money : ' ..Money ..' ' ..longtei)

    -- check Money --
    if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 15000000 then
        MONEY_FULL = true
    end

    function Check_Item(FIND,Can_Found)
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
            if v:FindFirstChild('ItemName') then
                if v.ItemName.Text == FIND then
                    Can_Found = 'Found'
                    return Can_Found
                else
                    Can_Found = 'Not Found'
                end
            end
        end
    end 

    function Create_Textlabol(NAME,another_name,typeclass,parent,pos_down)
        local NAME = Instance.new(typeclass, parent)
        NAME.Name = another_name
        NAME.Text = ''
        NAME.Position = UDim2.new(0, 10, 0, pos_down)
        NAME.TextSize = 20
        NAME.TextColor3 = Color3.new(255,255,255)
        NAME.TextStrokeTransparency = 0
        NAME.TextXAlignment = Enum.TextXAlignment.Left
    end

    --check buddy
    Create_Textlabol("Textbuddy","Textbuddy","TextLabel",game.CoreGui.hehe,80)

    if Check_Item('Buddy Sword',Can_Found) == 'Found' then
        Have_Buddy = true
        game:GetService("CoreGui").hehe.Textbuddy.Text = 'Have Buddy'
        game:GetService("CoreGui").hehe.Textbuddy.TextColor3 = GREEN
    else
        Have_Buddy = false
        game:GetService("CoreGui").hehe.Textbuddy.Text = 'Dont have Buddy'
        game:GetService("CoreGui").hehe.Textbuddy.TextColor3 = RED
    end

    --check yama
    Create_Textlabol("TextYama","TextYama","TextLabel",game.CoreGui.hehe,110)

    if Check_Item('Yama',Can_Found) == 'Found' then
        Have_Yama = true
        game:GetService("CoreGui").hehe.TextYama.Text = 'Have Yama'
        game:GetService("CoreGui").hehe.TextYama.TextColor3 = GREEN
    else
        Have_Yama = false
        game:GetService("CoreGui").hehe.TextYama.Text = 'Dont have Yama'
        game:GetService("CoreGui").hehe.TextYama.TextColor3 = RED
    end

    --cheeck Hallow Scythe
    Create_Textlabol("TextHallowScythe","TextHallowScythe","TextLabel",game.CoreGui.hehe,140)

    if Check_Item('Hallow Scythe',Can_Found) == 'Found' then
        Have_Hallow_Scythe = true
        game:GetService("CoreGui").hehe.TextHallowScythe.Text = 'Have Hallow Scythe'
        game:GetService("CoreGui").hehe.TextHallowScythe.TextColor3 = GREEN
    else
        Have_Hallow_Scythe = false
        game:GetService("CoreGui").hehe.TextHallowScythe.Text = 'Dont have Hallow Scythe'
        game:GetService("CoreGui").hehe.TextHallowScythe.TextColor3 = RED
    end

    --cheeck Dark Coat
    Create_Textlabol("TextDarkCoat","TextDarkCoat","TextLabel",game.CoreGui.hehe,170)

    if Check_Item('Dark Coat',Can_Found) == 'Found' then
        Have_Dark_Coat = true
        game:GetService("CoreGui").hehe.TextDarkCoat.Text = 'Have Dark Coat'
        game:GetService("CoreGui").hehe.TextDarkCoat.TextColor3 = GREEN
    else
        Have_Dark_Coat = false
        game:GetService("CoreGui").hehe.TextDarkCoat.Text = 'Dont have Dark Coat'
        game:GetService("CoreGui").hehe.TextDarkCoat.TextColor3 = RED
    end

    --cheeck Dark Dagger
    Create_Textlabol("TextDarkDagger","TextDarkDagger","TextLabel",game.CoreGui.hehe,200)

    if Check_Item('Dark Dagger',Can_Found) == 'Found' then
        Have_Dark_Dagger = true
        game:GetService("CoreGui").hehe.TextDarkDagger.Text = 'Have Dark Dagger'
        game:GetService("CoreGui").hehe.TextDarkDagger.TextColor3 = GREEN
    else
        Have_Dark_Dagger = false
        game:GetService("CoreGui").hehe.TextDarkDagger.Text = 'Dont have Dark Dagger'
        game:GetService("CoreGui").hehe.TextDarkDagger.TextColor3 = RED
    end

    --cheeck Tushita
    Create_Textlabol("TextTushita","TextTushita","TextLabel",game.CoreGui.hehe,230)

    if Check_Item('Tushita',Can_Found) == 'Found' then
        Have_Tushita = true
        game:GetService("CoreGui").hehe.TextTushita.Text = 'Have Tushita'
        game:GetService("CoreGui").hehe.TextTushita.TextColor3 = GREEN
    else
        Have_Tushita = false
        game:GetService("CoreGui").hehe.TextTushita.Text = 'Dont have Tushita'
        game:GetService("CoreGui").hehe.TextTushita.TextColor3 = RED
    end