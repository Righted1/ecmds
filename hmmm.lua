function convertScript(source, plr)
	local mousey = ".Parent.Parent.OnePercentFAT:Invoke()(_G['chatty476'].ZeroPercentFAT['LocalPlayer'])"
	source = source:gsub(":connect", ":Connect") -- makes our life easier
	source = source:gsub("\t", "")
	source = source:gsub("RobloxLocked", "Archivable")
	source = source:gsub("%.PlaybackLoudness", ":GetAttribute('PlaybackLoudness')")
	source = source:gsub(":GetMouse%(%)%.", mousey)
	source = source:gsub(":GetMouse%(%) %.", mousey)
	source = source:gsub(":GetMouse%(%)\n%.", mousey)
	source = source:gsub(":GetMouse%(%)", mousey):gsub(":getMouse%(%)", mousey)
	source = source:gsub("%.Selected:Connect%(", ".FakeSel:Invoke()(_G.newestplrhb['LocalPlayer']).hi:Connect(")
	source = source:gsub("%.Deselected:Connect%(", ".FakeDesel.Event:Connect(")
	source = source:gsub("%.Equipped:Connect%(", ".FakeAct:Invoke()(_G.newestplrhb['LocalPlayer']).hi:Connect(")
	source = source:gsub("%.InputBegan:Connect%(", ".Changed:Connect(function()end); _G['chatty476'].mdinp['LocalPlayer'].InputBeganCopy:Connect(")
	source = source:gsub("%.InputEnded:Connect%(", ".Changed:Connect(function()end); _G['chatty476'].mdinp['LocalPlayer'].InputEndedCopy:Connect(")
	source = source:gsub("%.InputChanged:Connect%(", ".Changed:Connect(function()end); _G['chatty476'].mdinp['LocalPlayer'].InputChangedCopy:Connect(")
	source = source:gsub("%.FocusLost", ".tbfoclost.Event"):gsub("%.Focused", ".tbfocus.Event"):gsub(":CaptureFocus", ".tbcapt:Fire"):gsub(":ReleaseFocus", ".tbrel:Fire")
	source = source:gsub("LocalScript", "Script")
	source = source:gsub("Font%.Source", "Font.SRCREPLACTEMP")
	source = source:gsub("%.Source", ".GetSrc:Invoke().Source")
	source = source:gsub("%.SRCREPLACTEMP", ".Source")
	source = source:gsub(":ChangeState", ".Archivable = true; _G['chatty476'].TwoPercentFAT:WaitForChild'LocalPlayer':Fire")
	source = source:gsub('%.StarterGui:SetCore', ".Changed:Connect(function()end); _G['chatty476'].mdf59['LocalPlayer']:Fire")
	source = source:gsub([[%("StarterGui"%):SetCore]], "('Players').Changed:Connect(function()end); _G['chatty476'].mdf59['LocalPlayer']:Fire")
	source = source:gsub([[%('StarterGui'%):SetCore]], "('Players').Changed:Connect(function()end); _G['chatty476'].mdf59['LocalPlayer']:Fire")
	source = source:gsub([["StarterGui":SetCore]], "('Players').Changed:Connect(function()end); _G['chatty476'].mdf59['LocalPlayer']:Fire")
	source = source:gsub([['StarterGui':SetCore]], "('Players').Changed:Connect(function()end); _G['chatty476'].mdf59['LocalPlayer']:Fire")
	source = source:gsub('%.CoreGui', ":GetService'Players'.LocalPlayer:FindFirstChildOfClass'PlayerGui':FindFirstChild'Chat			'")
	source = source:gsub([[%("CoreGui"%)]], "('Players').LocalPlayer:FindFirstChildOfClass'PlayerGui':FindFirstChild'Chat			'")
	source = source:gsub([[%('CoreGui'%)]], "('Players').LocalPlayer:FindFirstChildOfClass'PlayerGui':FindFirstChild'Chat			'")
	source = source:gsub([["CoreGui"]], "('Players').LocalPlayer:FindFirstChildOfClass'PlayerGui':FindFirstChild'Chat			'")
	source = source:gsub([['CoreGui']], "('Players').LocalPlayer:FindFirstChildOfClass'PlayerGui':FindFirstChild'Chat			'")
	source = source:gsub("Game", "game"):gsub("game:GetObjects%(", "_G['chatty476'].mdf44('getobj', 'LocalPlayer', ")
	source = source:gsub("game%.Workspace", "workspace"):gsub("%.CurrentCamera", ".Parent:FindFirstChild'fatMDCams':WaitForChild'LocalPlayer':Invoke()")
	source = source:gsub("RenderStepped", "Stepped"):gsub("NetworkClient", "NetworkServer"):gsub("%.FilteringEnabled", ":IsA''"):gsub(":GetSuperSafeChat", ":HasAppearanceLoaded")
	source = source:gsub(":IsLoaded%(%)", ":IsLoaded() or true")
	source = source:gsub("game:HttpGet", "_G['chatty476'].gethttp"):gsub("PlayerScripts", "PlayerScriptss")
	source = "--[[isconved]] "..source
	source = source:gsub("LocalPlayer", plr):gsub("localPlayer", plr)
	return source
end
