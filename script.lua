-- LARS HUB v1.0
local p=game.Players.LocalPlayer
local uis=game:GetService("UserInputService")
local ts=game:GetService("TweenService")
local cg=game:GetService("CoreGui")

-- Уведомление
local nf=Instance.new("ScreenGui",cg)
local n=Instance.new("Frame",nf)n.Size=UDim2.new(0,250,0,40)n.Position=UDim2.new(1,10,.85,0)n.BackgroundColor3=Color3.fromRGB(20,20,30)Instance.new("UICorner",n).CornerRadius=UDim.new(0,8)Instance.new("UIStroke",n).Color=Color3.fromRGB(100,100,255)
local nl=Instance.new("TextLabel",n)nl.Size=UDim2.new(1,-10,1,0)nl.Position=UDim2.new(0,5,0,0)nl.BackgroundTransparency=1;nl.Text="Script by Lars | @keyscripts3"nl.TextColor3=Color3.new(1,1,1)nl.Font=Enum.Font.GothamBold;nl.TextSize=14
n:TweenPosition(UDim2.new(1,-260,.85,0),"Out","Quad",.5)task.wait(3)n:TweenPosition(UDim2.new(1,10,.85,0),"In","Quad",.5)task.wait(.5)nf:Destroy()

-- Хаб
local hub=Instance.new("ScreenGui",cg)hub.Name="LarsHub"
local m=Instance.new("Frame",hub)m.Size=UDim2.new(0,550,0,380)m.Position=UDim2.new(.5,-275,.5,-190)m.BackgroundColor3=Color3.fromRGB(18,18,25)m.Draggable=true;m.Active=true;Instance.new("UICorner",m).CornerRadius=UDim.new(0,12)Instance.new("UIStroke",m).Color=Color3.fromRGB(80,80,200)
local hd=Instance.new("Frame",m)hd.Size=UDim2.new(1,0,0,45)hd.BackgroundColor3=Color3.fromRGB(25,25,35)Instance.new("UICorner",hd).CornerRadius=UDim.new(0,12)
local ht=Instance.new("TextLabel",hd)ht.Size=UDim2.new(1,0,1,0)ht.BackgroundTransparency=1;ht.Text="LARS HUB v1.0"ht.TextColor3=Color3.new(1,1,1)ht.Font=Enum.Font.GothamBold;ht.TextSize=20
local cb=Instance.new("TextButton",hd)cb.Size=UDim2.new(0,40,0,40)cb.Position=UDim2.new(1,-45,0,3)cb.BackgroundColor3=Color3.fromRGB(255,60,60)cb.Text="X"cb.TextColor3=Color3.new(1,1,1)cb.Font=Enum.Font.GothamBold;cb.TextSize=18;Instance.new("UICorner",cb).CornerRadius=UDim.new(0,8)cb.MouseButton1Click:Connect(function()hub:Destroy()end)
local nv=Instance.new("Frame",m)nv.Size=UDim2.new(0,130,1,-45)nv.Position=UDim2.new(0,0,0,45)nv.BackgroundColor3=Color3.fromRGB(22,22,32)
local ct=Instance.new("Frame",m)ct.Size=UDim2.new(1,-130,1,-45)ct.Position=UDim2.new(0,130,0,45)ct.BackgroundTransparency=1

local pgs={}local btns={}
local names={"🏠 Main","⚔️ Combat","🎯 Aimbot","👁 ESP","🏃 Move","🌟 Misc","⚙️ Settings"}
for i,nm in ipairs(names)do
 local bn=Instance.new("TextButton",nv)bn.Size=UDim2.new(1,-10,0,35)bn.Position=UDim2.new(0,5,0,5+(i-1)*40)bn.BackgroundColor3=Color3.fromRGB(30,30,42)bn.Text=nm;bn.TextColor3=Color3.new(1,1,1)bn.Font=Enum.Font.Gotham;bn.TextSize=13;bn.AutoButtonColor=false;Instance.new("UICorner",bn).CornerRadius=UDim.new(0,6)
 local pg=Instance.new("ScrollingFrame",ct)pg.Size=UDim2.new(1,0,1,0)pg.BackgroundTransparency=1;pg.ScrollBarThickness=4;pg.Visible=false;pg.CanvasSize=UDim2.new(0,0,0,900)
 pgs[i]=pg;btns[i]=bn
 bn.MouseButton1Click:Connect(function()for _,v in ipairs(pgs)do v.Visible=false end;for _,v in ipairs(btns)do v.BackgroundColor3=Color3.fromRGB(30,30,42)end;pg.Visible=true;bn.BackgroundColor3=Color3.fromRGB(80,80,200)end)
end
pgs[1].Visible=true;btns[1].BackgroundColor3=Color3.fromRGB(80,80,200)

-- Функции
local y=0
local function toggl(pr,tt,cb)local f=Instance.new("Frame",pr)f.Size=UDim2.new(1,-20,0,40)f.Position=UDim2.new(0,10,0,y)f.BackgroundColor3=Color3.fromRGB(28,28,40)Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
local l=Instance.new("TextLabel",f)l.Size=UDim2.new(1,-60,1,0)l.Position=UDim2.new(0,12,0,0)l.BackgroundTransparency=1;l.Text=tt;l.TextColor3=Color3.new(1,1,1)l.Font=Enum.Font.Gotham;l.TextSize=14;l.TextXAlignment=Enum.TextXAlignment.Left
local tg=Instance.new("TextButton",f)tg.Size=UDim2.new(0,44,0,24)tg.Position=UDim2.new(1,-56,0,8)tg.BackgroundColor3=Color3.fromRGB(60,60,80)tg.Text="";tg.AutoButtonColor=false;Instance.new("UICorner",tg).CornerRadius=UDim.new(0,12)
local dt=Instance.new("Frame",tg)dt.Size=UDim2.new(0,18,0,18)dt.Position=UDim2.new(0,3,0,3)dt.BackgroundColor3=Color3.new(1,1,1)Instance.new("UICorner",dt).CornerRadius=UDim.new(0,9)
local en=false;tg.MouseButton1Click:Connect(function()en=not en;if en then tg.BackgroundColor3=Color3.fromRGB(80,180,80)dt:TweenPosition(UDim2.new(0,23,0,3),"Out","Quad",.2)else tg.BackgroundColor3=Color3.fromRGB(60,60,80)dt:TweenPosition(UDim2.new(0,3,0,3),"Out","Quad",.2)end;cb(en)end)y=y+45;return f end

local function btn(pr,tt,cb)local b=Instance.new("TextButton",pr)b.Size=UDim2.new(1,-20,0,38)b.Position=UDim2.new(0,10,0,y)b.BackgroundColor3=Color3.fromRGB(28,28,40)b.Text=tt;b.TextColor3=Color3.new(1,1,1)b.Font=Enum.Font.Gotham;b.TextSize=14;Instance.new("UICorner",b).CornerRadius=UDim.new(0,8)b.MouseButton1Click:Connect(cb)y=y+43;return b end

local function sld(pr,tt,min,max,def,cb)local f=Instance.new("Frame",pr)f.Size=UDim2.new(1,-20,0,65)f.Position=UDim2.new(0,10,0,y)f.BackgroundColor3=Color3.fromRGB(28,28,40)Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
local l=Instance.new("TextLabel",f)l.Size=UDim2.new(1,-20,0,20)l.Position=UDim2.new(0,10,0,8)l.BackgroundTransparency=1;l.Text=tt..": "..def;l.TextColor3=Color3.new(1,1,1)l.Font=Enum.Font.Gotham;l.TextSize=13;l.TextXAlignment=Enum.TextXAlignment.Left
local sf=Instance.new("Frame",f)sf.Size=UDim2.new(1,-20,0,6)sf.Position=UDim2.new(0,10,0,35)sf.BackgroundColor3=Color3.fromRGB(50,50,70)Instance.new("UICorner",sf).CornerRadius=UDim.new(0,3)
local fl=Instance.new("Frame",sf)fl.Size=UDim2.new((def-min)/(max-min),0,1,0)fl.BackgroundColor3=Color3.fromRGB(100,100,255)Instance.new("UICorner",fl).CornerRadius=UDim.new(0,3)
local kn=Instance.new("TextButton",sf)kn.Size=UDim2.new(0,16,0,16)kn.Position=UDim2.new((def-min)/(max-min),-8,0,-5)kn.BackgroundColor3=Color3.new(1,1,1)kn.Text="";Instance.new("UICorner",kn).CornerRadius=UDim.new(0,8)
local dr=false;kn.MouseButton1Down:Connect(function()dr=true end)uis.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dr=false end end)
uis.InputChanged:Connect(function(i)if dr and i.UserInputType==Enum.UserInputType.MouseMovement then local pos=math.clamp((game.Players.LocalPlayer:GetMouse().X-sf.AbsolutePosition.X)/sf.AbsoluteSize.X,0,1)local val=math.floor(min+pos*(max-min))fl.Size=UDim2.new(pos,0,1,0)kn.Position=UDim2.new(pos,-8,0,-5)l.Text=tt..": "..val;cb(val)end end)y=y+68;return f end

-- MAIN
y=10
local antiafk=false
toggl(pgs[1],"Anti-AFK",function(v)antiafk=v;if v then spawn(function()while antiafk do pcall(function()game.VirtualUser:CaptureController()game.VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)task.wait(60)end end)end end)
btn(pgs[1],"Rejoin Server",function()game:GetService("TeleportService"):Teleport(game.PlaceId,p)end)
btn(pgs[1],"Server Hop",function()local s=game:GetService("TeleportService")local id=game.PlaceId;s:Teleport(id,p)end)

-- COMBAT
y=10
toggl(pgs[2],"Kill Aura",function(v)end)
sld(pgs[2],"Hit Range",5,30,10,function(v)end)
toggl(pgs[2],"Auto Kill",function(v)end)
toggl(pgs[2],"Wall Hit",function(v)end)

-- AIMBOT
y=10
toggl(pgs[3],"Aimbot",function(v)end)
toggl(pgs[3],"Silent Aim",function(v)end)
sld(pgs[3],"FOV",30,360,120,function(v)end)
toggl(pgs[3],"Auto Shoot",function(v)end)
toggl(pgs[3],"Trigger Bot",function(v)end)

-- ESP
y=10
toggl(pgs[4],"Player ESP",function(v)end)
toggl(pgs[4],"Box ESP",function(v)end)
toggl(pgs[4],"Name ESP",function(v)end)
toggl(pgs[4],"Distance ESP",function(v)end)
toggl(pgs[4],"Health Bar",function(v)end)
toggl(pgs[4],"Tracers",function(v)end)

-- MOVE
y=10
sld(pgs[5],"Walk Speed",16,200,16,function(v)if p.Character and p.Character:FindFirstChild("Humanoid")then p.Character.Humanoid.WalkSpeed=v end end)
sld(pgs[5],"Jump Power",50,300,50,function(v)if p.Character and p.Character:FindFirstChild("Humanoid")then p.Character.Humanoid.JumpPower=v end end)
toggl(pgs[5],"Fly",function(v)end)
toggl(pgs[5],"No Clip",function(v)end)
toggl(pgs[5],"Infinite Jump",function(v)end)
toggl(pgs[5],"Bunny Hop",function(v)end)

-- MISC
y=10
toggl(pgs[6],"Auto Clicker",function(v)end)
sld(pgs[6],"CPS",1,60,10,function(v)end)
btn(pgs[6],"FPS Booster",function()for _,v in ipairs(workspace:GetDescendants())do if v:IsA("Part")or v:IsA("MeshPart")then v.Material="SmoothPlastic"end end end)
toggl(pgs[6],"Fullbright",function(v)if v then game.Lighting.Brightness=3;game.Lighting.ClockTime=12 else game.Lighting.Brightness=1 end end)
toggl(pgs[6],"No Fog",function(v)game.Lighting.FogEnd=v and 1000000 or 1000 end)
btn(pgs[6],"Reset Character",function()if p.Character then p.Character:BreakJoints()end end)

-- SETTINGS
y=10
btn(pgs[7],"Discord / Telegram",function()pcall(function()setclipboard("https://t.me/keyscripts3")end)end)
btn(pgs[7],"Get Scripts",function()pcall(function()setclipboard("https://t.me/larskeys_bot")end)end)

uis.InputBegan:Connect(function(i,gpe)if gpe then return end;if i.KeyCode==Enum.KeyCode.RightShift then m.Visible=not m.Visible end end)
