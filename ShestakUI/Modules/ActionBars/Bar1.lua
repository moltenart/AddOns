local T, C, L = unpack(select(2, ...))
if C.actionbar.enable ~= true then return end

----------------------------------------------------------------------------------------
--	Setup Main Action Bar by Tukz
----------------------------------------------------------------------------------------
local bar = CreateFrame("Frame", "Bar1Holder", ActionBarAnchor, "SecureHandlerStateTemplate")
bar:SetAllPoints(ActionBarAnchor)
bar:SetFrameStrata("BACKGROUND")

local Page = {
	["DRUID"] = "[bonusbar:1,nostealth] 7; [bonusbar:1,stealth] 8; [bonusbar:2] 8; [bonusbar:3] 9; [bonusbar:4] 10;",
	["WARRIOR"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;",
	["PRIEST"] = "[bonusbar:1] 7;",
	["MONK"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;",
	["ROGUE"] = "[bonusbar:1] 7; [form:3] 7;",
	["WARLOCK"] = "[form:2] 10;",
	["DEFAULT"] = "[vehicleui:12] 12; [possessbar] 12; [overridebar] 14; [bar:2] 2; [bar:3] 3; [bar:4] 4; [bar:5] 5; [bar:6] 6;",
}

local function GetBar()
	local condition = Page["DEFAULT"]
	local class = T.class
	local page = Page[class]
	if page then
		condition = condition.." "..page
	end
	condition = condition.." 1"
	return condition
end

bar:RegisterEvent("PLAYER_LOGIN")
bar:RegisterEvent("PLAYER_ENTERING_WORLD")
bar:RegisterEvent("KNOWN_CURRENCY_TYPES_UPDATE")
bar:RegisterEvent("CURRENCY_DISPLAY_UPDATE")
bar:RegisterEvent("BAG_UPDATE")
bar:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
bar:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" or event == "ACTIVE_TALENT_GROUP_CHANGED" then
		for i = 1, NUM_ACTIONBAR_BUTTONS do
			local button = _G["ActionButton"..i]
			self:SetFrameRef("ActionButton"..i, button)
		end

		self:Execute([[
			buttons = table.new()
			for i = 1, 12 do
				table.insert(buttons, self:GetFrameRef("ActionButton"..i))
			end
		]])

		self:SetAttribute("_onstate-page", [[
			for i, button in ipairs(buttons) do
				button:SetAttribute("actionpage", tonumber(newstate))
			end
		]])

		RegisterStateDriver(self, "page", GetBar())
	elseif event == "PLAYER_ENTERING_WORLD" then
		for i = 1, 12 do
			local button = _G["ActionButton"..i]
			button:Size(C.actionbar.button_size)
			button:ClearAllPoints()
			button:SetParent(Bar1Holder)
			if i == 1 then
				button:Point("BOTTOMLEFT", Bar1Holder, 0, 0)
			else
				local previous = _G["ActionButton"..i-1]
				button:Point("LEFT", previous, "RIGHT", C.actionbar.button_space, 0)
			end
		end
	else
		MainMenuBar_OnEvent(self, event, ...)
	end
end)