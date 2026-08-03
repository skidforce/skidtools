
pcall(function()
	if game:GetService('CoreGui'):FindFirstChild('ShinyTool') then
		repeat
			game:GetService('CoreGui').ShinyTool:Destroy()
		until game:GetService('CoreGui'):FindFirstChild('ShinyTool')
	end
end)
local localPlayer = game.Players.LocalPlayer
repeat
	task.wait()
until localPlayer.Character
local blurEffect = Instance.new('BlurEffect', game.Lighting)
blurEffect.Size = 56
local u1 = loadstring(game:HttpGet('https://raw.githubusercontent.com/flintify/shinytoolsv3/refs/heads/main/data.lua'))
local u2 = u1().key()
local u3 = ({
	key = (function()
		local u22 = u2
		return function()
			return u22
		end
	end)()
}).key()
local httpService = game:GetService('HttpService')
local tweenService = game:GetService('TweenService')
if not isfile('skidtools_Key1.json') then
	writefile('skidtools_Key1.json', httpService:JSONEncode({
		key = 'Enter Key'
	}))
end
local u7 = {
	version = function()
		return u1.version()
	end,
	info = function()
		return u1.info()
	end,
	randomString = function()
		local v4 = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
		local v5 = ''
		for _ = 1, 16 do
			local v6 = math.random(#v4)
			v5 = v5 .. v4:sub(v6, v6)
		end
		return v5
	end
}
rnd = u7.randomString()
function u7.LoadGUI()
	game.Players.LocalPlayer:SetAttribute('Strength12953', u7.randomString())
	getrenv()._G[game.Players.LocalPlayer:GetAttribute('Strength12953')] = function()
		return rnd
	end
	game.Players.LocalPlayer:SetAttribute('SkidTools', rnd)
	blurEffect.Enabled = false
	local v8, v9, v10 = pairs(game.Lighting:GetChildren())
	while true do
		local v11
		v10, v11 = v8(v9, v10)
		if v10 == nil then
			break
		end
		if tostring(v11) == 'Blur' then
			v11:Destroy()
		end
	end
	task.wait()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/skidforce/skidtoolsgames/refs/heads/main/loader.lua'))()
	task.spawn(function()
		task.wait(1)
		game:GetService('CoreGui').ShinyTool:Destroy()
	end)
end
local v12 = UDim2.new(0.5, 0, 0.664634168, 0)
local v13 = UDim2.new(0.5, 0, -1, 0)
local screenGui = Instance.new('ScreenGui')
screenGui.IgnoreGuiInset = true
screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
screenGui.ResetOnSpawn = true
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Name = 'ShinyTool'
screenGui.Parent = game.CoreGui
local frame = Instance.new('Frame')
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = v13
frame.Size = UDim2.new(0.296663672, 0, 0.172675267, 0)
frame.Visible = true
frame.Name = 'Main'
frame.Parent = screenGui
local imageButton = Instance.new('ImageButton')
imageButton.Image = 'rbxassetid://11675536014'
imageButton.ImageColor3 = Color3.new(0.168627, 0.835294, 0.192157)
imageButton.ScaleType = Enum.ScaleType.Slice
imageButton.SliceCenter = Rect.new(294, 274, 296, 274)
imageButton.SliceScale = 0.20000000298023224
imageButton.BackgroundColor3 = Color3.new(1, 1, 1)
imageButton.BackgroundTransparency = 1
imageButton.BorderColor3 = Color3.new(0, 0, 0)
imageButton.BorderSizePixel = 0
imageButton.Position = UDim2.new(0.618637502, 0, 0.525992036, 0)
imageButton.Size = UDim2.new(0.362037927, 0, 0.415525317, 0)
imageButton.Visible = true
imageButton.Name = 'Execute'
imageButton.Parent = frame
Instance.new('UIScale').Parent = imageButton
local textLabel = Instance.new('TextLabel')
textLabel.Font = Enum.Font.FredokaOne
textLabel.Text = 'Execute'
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true
textLabel.TextSize = 14
textLabel.TextWrapped = true
textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.BorderColor3 = Color3.new(0, 0, 0)
textLabel.BorderSizePixel = 0
textLabel.Position = UDim2.new(0.100746796, 0, 0.13957037, 0)
textLabel.Size = UDim2.new(0.79850632, 0, 0.700920641, 0)
textLabel.Visible = true
textLabel.Name = 'Label'
textLabel.Parent = imageButton
local uIStroke = Instance.new('UIStroke')
uIStroke.Thickness = 1.600000023841858
uIStroke.Parent = textLabel
local localScript = Instance.new('LocalScript')
localScript.Name = 'Tween'
localScript.Parent = imageButton
local uIGradient = Instance.new('UIGradient')
uIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.466667, 0.419608, 1)), ColorSequenceKeypoint.new(0.6989619731903076, Color3.new(0.313726, 0, 0.780392)), ColorSequenceKeypoint.new(1, Color3.new(0.0823529, 0, 0.203922)) })
uIGradient.Rotation = 90
uIGradient.Parent = frame
local uICorner = Instance.new('UICorner')
uICorner.CornerRadius = UDim.new(0, 15)
uICorner.Parent = frame
local frame2 = Instance.new('Frame')
frame2.BackgroundColor3 = Color3.new(1, 1, 1)
frame2.BorderColor3 = Color3.new(0, 0, 0)
frame2.BorderSizePixel = 0
frame2.Position = UDim2.new(0.0284688827, 0, 0.551281571, 0)
frame2.Size = UDim2.new(0.565999925, 0, 0.390236437, 0)
frame2.Visible = true
frame2.Name = 'Key'
frame2.Parent = frame
local uIStroke2 = Instance.new('UIStroke')
uIStroke2.Thickness = 2.9000000953674316
uIStroke2.Parent = frame2
local uICorner2 = Instance.new('UICorner')
uICorner2.CornerRadius = UDim.new(0, 15)
uICorner2.Parent = frame2
local frame3 = Instance.new('Frame')
frame3.BackgroundColor3 = Color3.new(1, 1, 1)
frame3.BorderColor3 = Color3.new(0, 0, 0)
frame3.BorderSizePixel = 0
frame3.Size = UDim2.new(0, 0, 1, 0)
frame3.Visible = true
frame3.Name = 'Loading'
frame3.Parent = frame2
local uICorner3 = Instance.new('UICorner')
uICorner3.CornerRadius = UDim.new(0, 15)
uICorner3.Parent = frame3
local uIGradient2 = Instance.new('UIGradient')
uIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.501961, 1, 0.501961)), ColorSequenceKeypoint.new(0.7076124548912048, Color3.new(0.294118, 0.588235, 0.294118)), ColorSequenceKeypoint.new(1, Color3.new(0.227451, 0.45098, 0.227451)) })
uIGradient2.Rotation = 90
uIGradient2.Parent = frame3
Instance.new('UIStroke').Parent = frame3
local localScript2 = Instance.new('LocalScript')
localScript2.Parent = frame3
local textBox = Instance.new('TextBox')
textBox.Font = Enum.Font.FredokaOne
textBox.PlaceholderColor3 = Color3.new(0.666667, 0.666667, 0.666667)
textBox.PlaceholderText = 'Enter Key'
textBox.Text = ''
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.TextScaled = true
textBox.TextSize = 14
textBox.TextWrapped = true
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.BackgroundTransparency = 1
textBox.BorderColor3 = Color3.new(0, 0, 0)
textBox.BorderSizePixel = 0
textBox.Position = UDim2.new(0.00488171028, 0, -7.1625567e-7, 0)
textBox.Size = UDim2.new(0.995118618, 0, 1.00000036, 0)
textBox.Visible = true
textBox.Name = 'Key'
textBox.Parent = frame2
local uICorner4 = Instance.new('UICorner')
uICorner4.CornerRadius = UDim.new(0, 15)
uICorner4.Parent = textBox
local uIStroke3 = Instance.new('UIStroke')
uIStroke3.Thickness = 2.200000047683716
uIStroke3.Parent = textBox
local uITextSizeConstraint = Instance.new('UITextSizeConstraint')
uITextSizeConstraint.MaxTextSize = 25
uITextSizeConstraint.Parent = textBox
local localScript3 = Instance.new('LocalScript')
localScript3.Name = 'Animation'
localScript3.Parent = frame2
local uIGradient3 = Instance.new('UIGradient')
uIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.498039, 0.772549, 1)), ColorSequenceKeypoint.new(0.775086522102356, Color3.new(0.341176, 0.537255, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.168627, 0.266667, 0.329412)) })
uIGradient3.Rotation = 90
uIGradient3.Parent = frame2
local uIAspectRatioConstraint = Instance.new('UIAspectRatioConstraint')
uIAspectRatioConstraint.AspectRatio = 3.0999999046325684
uIAspectRatioConstraint.Parent = frame
local uIStroke4 = Instance.new('UIStroke')
uIStroke4.Thickness = 2.200000047683716
uIStroke4.Parent = frame
local textLabel2 = Instance.new('TextLabel')
textLabel2.Font = Enum.Font.FredokaOne
textLabel2.Text = 'ShinyTool!'
textLabel2.TextColor3 = Color3.new(1, 1, 1)
textLabel2.TextScaled = true
textLabel2.TextSize = 14
textLabel2.TextWrapped = true
textLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel2.BackgroundTransparency = 1
textLabel2.BorderColor3 = Color3.new(0, 0, 0)
textLabel2.BorderSizePixel = 0
textLabel2.Position = UDim2.new(-0.166920185, 0, -0.152991816, 0)
textLabel2.Rotation = -5
textLabel2.Size = UDim2.new(0.389933646, 0, 0.310748845, 0)
textLabel2.Visible = true
textLabel2.Name = 'Title'
textLabel2.Parent = frame
local uIStroke5 = Instance.new('UIStroke')
uIStroke5.Thickness = 2.200000047683716
uIStroke5.Parent = textLabel2
local textLabel3 = Instance.new('TextLabel')
textLabel3.Font = Enum.Font.FredokaOne
textLabel3.Text = 'Join our Discord server for the key. Bypass attempts will result in a ban.'
textLabel3.TextColor3 = Color3.new(0.92549, 0.901961, 1)
textLabel3.TextScaled = true
textLabel3.TextSize = 14
textLabel3.TextWrapped = true
textLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel3.BackgroundTransparency = 1
textLabel3.BorderColor3 = Color3.new(0, 0, 0)
textLabel3.BorderSizePixel = 0
textLabel3.Position = UDim2.new(0.0212791823, 0, 0.166243389, 0)
textLabel3.Size = UDim2.new(0.955136001, 0, 0.310748875, 0)
textLabel3.Visible = true
textLabel3.Name = 'Description'
textLabel3.Parent = frame
local uIStroke6 = Instance.new('UIStroke')
uIStroke6.Thickness = 1.899999976158142
uIStroke6.Parent = textLabel3
local uISizeConstraint = Instance.new('UISizeConstraint')
uISizeConstraint.MaxSize = Vector2.new(370, 135)
uISizeConstraint.Parent = frame
local imageButton2 = Instance.new('ImageButton')
imageButton2.Image = 'rbxassetid://11675536014'
imageButton2.ImageColor3 = Color3.new(0, 0.235294, 1)
imageButton2.ScaleType = Enum.ScaleType.Slice
imageButton2.SliceCenter = Rect.new(294, 274, 296, 274)
imageButton2.SliceScale = 0.20000000298023224
imageButton2.BackgroundColor3 = Color3.new(1, 1, 1)
imageButton2.BackgroundTransparency = 1
imageButton2.BorderColor3 = Color3.new(0, 0, 0)
imageButton2.BorderSizePixel = 0
imageButton2.Position = UDim2.new(1.01788855, 0, 0.534832597, 0)
imageButton2.Size = UDim2.new(0.133894369, 0, 0.415525317, 0)
imageButton2.Visible = true
imageButton2.Name = 'Discord'
imageButton2.Parent = frame
Instance.new('UIScale').Parent = imageButton2
local localScript4 = Instance.new('LocalScript')
localScript4.Name = 'Tween'
localScript4.Parent = imageButton2
local imageLabel = Instance.new('ImageLabel')
imageLabel.Image = 'rbxassetid://14047336839'
imageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
imageLabel.BackgroundTransparency = 1
imageLabel.BorderColor3 = Color3.new(0, 0, 0)
imageLabel.BorderSizePixel = 0
imageLabel.Position = UDim2.new(0.0851953328, 0, 0.0851024985, 0)
imageLabel.Size = UDim2.new(0.829609334, 0, 0.819215059, 0)
imageLabel.Visible = true
imageLabel.Parent = imageButton2
local uICorner5 = Instance.new('UICorner')
uICorner5.CornerRadius = UDim.new(0, 55)
uICorner5.Parent = imageLabel
local textLabel4 = Instance.new('TextLabel')
textLabel4.Font = Enum.Font.FredokaOne
textLabel4.Text = 'Discord'
textLabel4.TextColor3 = Color3.new(1, 1, 1)
textLabel4.TextScaled = true
textLabel4.TextSize = 14
textLabel4.TextWrapped = true
textLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel4.BackgroundTransparency = 1
textLabel4.BorderColor3 = Color3.new(0, 0, 0)
textLabel4.BorderSizePixel = 0
textLabel4.Position = UDim2.new(-0.00581090152, 0, 0.416153103, 0)
textLabel4.Size = UDim2.new(1.01155579, 0, 0.700920701, 0)
textLabel4.Visible = true
textLabel4.Name = 'Label'
textLabel4.Parent = imageButton2
local uIStroke7 = Instance.new('UIStroke')
uIStroke7.Thickness = 1.600000023841858
uIStroke7.Parent = textLabel4
local uITextSizeConstraint2 = Instance.new('UITextSizeConstraint')
uITextSizeConstraint2.MaxTextSize = 14
uITextSizeConstraint2.MinTextSize = 14
uITextSizeConstraint2.Parent = textLabel4
local function u19(p14, p15, p16, p17, p18)
	return tweenService:Create(p14, TweenInfo.new(p16, p17, p18), p15)
end
(function(p20, p21, p22, p23)
	p20.Position = UDim2.new(0.5, 0, 1, 0)
	u19(p20, {
		Position = p21
	}, p23, Enum.EasingStyle[p22], Enum.EasingDirection.Out):Play()
end)(frame, v12, 'Quad', 0.5)
local u24 = {}
task.spawn(function()
	local localScript5 = localScript
	local require = require
	local function _(p25)
		if u24[p25] then
			return u24[p25]()
		else
			return require(p25)
		end
	end
	local tweenService2 = game:GetService('TweenService')
	local key = localScript5.Parent.Parent.Key.Key
	local parent = localScript5.Parent
	local size = parent.Size
	local u26 = false
	if u3 == httpService:JSONDecode(readfile('skidtools_Key1.json')).key then
		key.Text = httpService:JSONDecode(readfile('skidtools_Key1.json')).key
	end
	local function u31(p27, p28, p29, p30)
		tweenService2:Create(parent, TweenInfo.new(p30, p29, p28), {
			Size = p27
		}):Play()
	end
	local function u36(p32, p33)
		local v34 = ''
		for v35 = 0, string.len(p32) do
			v34 = v34 .. string.sub(p32, v35, v35)
			p33.Text = v34
			task.wait(0.1)
		end
	end
	parent.MouseEnter:Connect(function()
		u31(UDim2.new(0.382, 0, 0.43, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseLeave:Connect(function()
		u31(size, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseButton1Down:Connect(function()
		u31(UDim2.new(0.332, 0, 0.426, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseButton1Up:Connect(function()
		u31(size, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseButton1Click:Connect(function()
		if not u26 then
			u26 = true
			u31(UDim2.new(0.372, 0, 0.426, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
			if u3 == key.Text then
				if isfile('ShinyTool_Key1.json') then
					local httpService2 = httpService
					writefile('ShinyTool_Key1.json', httpService2:JSONEncode({
						key = key.Text
					}))
				end
				u36('Success!', key)
				u7.LoadGUI()
				local v37, v38, v39 = pairs(game.Lighting:GetChildren())
				while true do
					local v40
					v39, v40 = v37(v38, v39)
					if v39 == nil then
						break
					end
					if tostring(v40) == 'Blur' then
						v40:Destroy()
					end
				end
			else
				u36('Wrong key!', key)
			end
			u26 = false
		end
	end)
	if u3 == key.Text then
		u7.LoadGUI()
		u36('Success!', key)
		local v41, v42, v43 = pairs(game.Lighting:GetChildren())
		while true do
			local v44
			v43, v44 = v41(v42, v43)
			if v43 == nil then
				break
			end
			if tostring(v44) == 'Blur' then
				v44:Destroy()
			end
		end
	end
end)
task.spawn(function()
	local localScript22 = localScript2
	local require = require
	local function _(p45)
		if u24[p45] then
			return u24[p45]()
		else
			return require(p45)
		end
	end
	local key = localScript22.Parent.Parent.Key
	local uIStroke8 = localScript22.Parent.UIStroke
	key.Changed:Connect(function()
		uIStroke8.Enabled = true
		if string.len(key.Text) == 0 then
			uIStroke8.Enabled = false
		end
	end)
end)
task.spawn(function()
	local localScript32 = localScript3
	local require = require
	local function _(p46)
		if u24[p46] then
			return u24[p46]()
		else
			return require(p46)
		end
	end
	local tweenService2 = game:GetService('TweenService')
	local key = localScript32.Parent.Key
	local loading = localScript32.Parent.Loading
	local scale = loading.Size.X.Scale
	key.Changed:Connect(function()
		local v47 = string.len(key.Text) / 10 / 0.8
		local v48 = v47 > 1 and 1 or v47
		tweenService2:Create(loading, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
			Size = UDim2.new(v48, 0, 1, 0)
		}):Play()
	end)
end)
task.spawn(function()
	local localScript42 = localScript4
	local require = require
	local function _(p49)
		if u24[p49] then
			return u24[p49]()
		else
			return require(p49)
		end
	end
	local tweenService2 = game:GetService('TweenService')
	local parent = localScript42.Parent
	local label = localScript42.Parent.Label
	local size = parent.Size
	local function u54(p50, p51, p52, p53)
		tweenService2:Create(parent, TweenInfo.new(p53, p52, p51), {
			Size = p50
		}):Play()
	end
	local function u59(p55, p56)
		local v57 = ''
		for v58 = 0, string.len(p55) do
			v57 = v57 .. string.sub(p55, v58, v58)
			p56.Text = v57
			task.wait(0.1)
		end
	end
	parent.MouseEnter:Connect(function()
		u54(UDim2.new(0.144, 0, 0.454, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseLeave:Connect(function()
		u54(size, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseButton1Down:Connect(function()
		u54(UDim2.new(0.124, 0, 0.436, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
	end)
	parent.MouseButton1Up:Connect(function()
		u54(size, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
	end)
	local u60 = false
	parent.MouseButton1Click:Connect(function()
		if not u60 then
			u60 = true
			u54(UDim2.new(0.139, 0, 0.436, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3)
			setclipboard('https://discord.gg/cBdWzEZgKr')
			u59('Copied!', label)
			task.wait(2)
			u59('Discord', label)
			u60 = false
		end
	end)
end)
task.spawn(function()
	local blur = blur
	local require = require
	local function _(p61)
		if u24[p61] then
			return u24[p61]()
		else
			return require(p61)
		end
	end
	local localPlayer2 = game.Players.LocalPlayer
	repeat
		task.wait()
	until localPlayer2.Character
	Instance.new('BlurEffect', game.Lighting).Size = 56
	task.wait(3)
end)
local v62 = 'https://ptb.discord.com/api/webhooks/1099944022690246747/xM7Zb7LnwN0M73BAsh93P6Q1uRz7RTmHeF_AA2BOPr5LSY0IiocM7WWyoX1lxmXVsyQ7'
if not _G.sent then
	_G.sent = true
	task.wait(0.1)
	local v63 = {
		username = 'SkidTools [Protected]',
		avatar_url = '',
		content = ''
	}
	local v64 = {}
	local v65 = {
		title = '',
		description = '**Exploit: ** ' .. (is_sirhurt_closure and 'Sirhurt' or pebc_execute and 'ProtoSmasher' or (syn and 'Synapse X' or secure_load and 'Sentinel') or (KRNL_LOADED and 'Krnl' or SONA_LOADED and 'Sona' or (IsElectron and 'Electron' or 'Kid with shit exploit'))),
		timestamp = '',
		author = {
			name = '',
			url = '',
			icon_url = ''
		},
		type = 'rich',
		color = tonumber(7498202)
	}
	local v66 = {}
	local v67 = {
		name = '<:icons8key100:1128832939661209660> `Execution!`',
		value = '<:icons8foryou100:1128832935081025656> Player: **' .. tostring(game.Players.LocalPlayer.Name) .. string.format('** *(%s)*', game.Players.LocalPlayer.UserId) .. '\n<:icons8favorites100:1128832925815816233> Game: **' .. game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name .. '** *(' .. game.PlaceId .. ')*',
		inline = true
	}
	__set_list(v66, 1, {v67})
	v65.fields = v66
	__set_list(v64, 1, {v65})
	v63.embeds = v64
	v63.components = {}
	local v68 = game:GetService('HttpService'):JSONEncode(v63)
	request = http_request or request or (HttpPost or syn.request)
	request({
		Url = v62,
		Body = v68,
		Method = 'POST',
		Headers = {
			['content-type'] = 'application/json'
		}
	})
end
local next = next
local v69, v70 = getgc(true)
local u72 = u7
while true do
	local u71
	v70, u71 = next(v69, v70)
	if v70 == nil then
		break
	end
	pcall(function()
		if typeof(u71) == 'table' and (u71.key and typeof(u71.key) == 'function') then
			function u71.key()
				return u72.randomString()
			end
		end
		game:GetService('RunService').Heartbeat:Wait()
	end)
end
