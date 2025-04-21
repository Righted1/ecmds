function convertScript(source, plr)
	local selected = ".FakeSel:Invoke()(shared.newestplrhb['LocalPlayer']).hi:Connect("
	local deselected = ".FakeDesel.Event:Connect("
	local toolactivated = ".FakeAct:Invoke()(shared.newestplrhb['LocalPlayer']).hi:Connect("
	local inpbegan = ".Changed:Connect(function()end); _G['chatty476'].mdinp['LocalPlayer'].InputBeganCopy:Connect("
	local inpended = ".Changed:Connect(function()end); _G['chatty476'].mdinp['LocalPlayer'].InputEndedCopy:Connect("
	local inpchanged = ".Changed:Connect(function()end); _G['chatty476'].mdinp['LocalPlayer'].InputChangedCopy:Connect("
	local mousey = ".Parent.Parent.OnePercentFAT:Invoke()(shared['ZeroPercentFAT']['LocalPlayer'])"
	
	source = source:gsub(":connect", ":Connect") -- makes our life easier
	source = source:gsub("\t", "")
	source = source:gsub(":GetMouse%(%)%.", mousey)
	source = source:gsub(":GetMouse%(%) %.", mousey)
	source = source:gsub(":GetMouse%(%)\n%.", mousey)
	source = source:gsub(":GetMouse%(%)", mousey):gsub(":getMouse%(%)", mousey)
	source = source:gsub("%.Selected:connect%(", selected):gsub("%.Selected:Connect%(", selected)
	source = source:gsub("%.Deselected:connect%(", deselected):gsub("%.Deselected:Connect%(", deselected)
	source = source:gsub("%.Equipped:Connect%(", toolactivated)
	source = source:gsub("%.InputBegan:Connect%(", inpbegan)
	source = source:gsub("%.InputEnded:Connect%(", inpended)
	source = source:gsub("%.InputChanged:Connect%(", inpchanged)
	source = source:gsub("%.FocusLost", ".tbfoclost.Event"):gsub("%.Focused", ".tbfocus.Event"):gsub(":CaptureFocus", ".tbcapt:Fire"):gsub(":ReleaseFocus", ".tbrel:Fire")
	source = source:gsub("LocalScript", "Script")
	source = source:gsub("Font%.Source", "Font.SRCREPLACTEMP")
	source = source:gsub("%.Source", ".GetSrc:Invoke().Source")
	source = source:gsub("%.SRCREPLACTEMP", ".Source")
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
