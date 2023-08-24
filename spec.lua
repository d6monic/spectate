---credits---okk#6236/Awaken#6969
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Awaken#6969",
	LoadingTitle = "Imgay",
	LoadingSubtitle = "by Awaken#6969",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "GuraHub"
	},
})
local Misc = Window:CreateTab("Misc")

local Section = Misc:CreateSection("Misc")

local players = game.Players:GetChildren()
local PlayerList = {}

for i,v in pairs(players) do
    table.insert(PlayerList,v.Name)
end

Misc:CreateDropdown({
	Name = "Spectate Player",
	Options = PlayerList,
	CurrentOption = "Select Player",
    Callback = function(pl)
	 workspace.Camera.CameraSubject = game:GetService("Players")[pl].Character.Humanoid
     Rayfield:Notify({
        Title = "Spectating :",
        Content = pl,
        Duration = 6.5,
        Image = 4483362458,
    })
	end,
})


Misc:CreateButton({
	Name = "Remove Spectate",
	CurrentValue = false,
	Callback = function()
		workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end,
})
