﻿local T, C, L = unpack(select(2, ...))
if C.announcements.flask_food ~= true then return end

----------------------------------------------------------------------------------------
--	Checks the usage of flasks and food of your party/raid members(ffCheck by Silverwind)
----------------------------------------------------------------------------------------
local noFood, noFlask, unitBuffs = {}, {}, {}

local foods = {
	104277,	-- Mogu Fish Stew
	104272,	-- Black Pepper Ribs and Shrimp
	104283,	-- Chun Tian Spring Rolls
	104275,	-- Sea Mist Rice Noodles
}

local flasks = {
	105689,	-- Flask of Spring Blossoms
	105694,	-- Flask of the Earth
	105691,	-- Flask of the Warm Sun
	105696,	-- Flask of Winter's Bite
	105693,	-- Flask of Falling Leaves
}

local function scan(unit)
	table.wipe(unitBuffs)
	local i = 1
	while true do
		local name = UnitAura(unit, i, "HELPFUL")
		if not name then return end
		unitBuffs[name] = true
		i = i + 1
	end
end

local function checkFood(unit)
	scan(unit)
	for _, id in pairs(foods) do
		if unitBuffs[GetSpellInfo(id)] then
			return true
		end
	end
end

local function checkFlask(unit)
	scan(unit)
	for _, id in pairs(flasks) do
		if unitBuffs[GetSpellInfo(id)] then
			return true
		end
	end
end

local function checkUnit(unit)
	local name = UnitName(unit)
	if not checkFood(unit) then
		noFood[#noFood + 1] = name
	end
	if not checkFlask(unit) then
		noFlask[#noFlask + 1] = name
	end
end

local function print(text)
	_G.print("|cffffff00"..text.."|r")
end

-- Workaround the "bug" of GetInstanceDifficulty returning 1 when outside the instance
local function getDiff()
	if IsInInstance() then
		return GetInstanceDifficulty()
	else
		return select(1, GetRaidDifficulty())
	end
end

-- The Main function to run a check
local function run(autoreport)
	local num = GetNumGroupMembers()
	local diff = getDiff()
	local checkType = "raid"

	if C.announcements.flask_food_auto == true then C.announcements.flask_food_raid = true end

	table.wipe(noFood)
	table.wipe(noFlask)
	if not UnitInRaid("player") then
		num = GetNumSubgroupMembers()
		if num > 0 and num <= 4 then
			checkType = "party"
		end
		checkUnit("player")
	end
	for i = 1, num do
		if checkType == "raid" then
			local _, _, subGroup, _, _, _, _, online = GetRaidRosterInfo(i)
			if (((diff == 1) or (diff == 3)) and subGroup < 3) or (((diff == 2) or (diff == 4)) and subGroup < 6) and online then
				local unit = checkType..i
				checkUnit(unit)
			end
		else
			local unit = checkType..i
			if UnitIsConnected(unit) then
				checkUnit(unit)
			end
		end
	end
	local output
	if #noFlask > 0 then
		table.sort(noFlask)
		output = L_ANNOUNCE_FF_NOFLASK..table.concat(noFlask, ", ")
		if C.announcements.flask_food_raid then
			SendChatMessage(output, checkType)
		else
			print(output)
		end
	end
	if #noFood > 0 then
		table.sort(noFood)
		output = L_ANNOUNCE_FF_NOFOOD..table.concat(noFood, ", ")
		if C.announcements.flask_food_raid then
			SendChatMessage(output, checkType)
		else
			print(output)
		end
	end
	if #noFood == 0 and #noFlask == 0 then
		if C.announcements.flask_food_raid then
			SendChatMessage(L_ANNOUNCE_FF_ALLBUFFED, checkType)
		else
			print(L_ANNOUNCE_FF_ALLBUFFED)
		end
	end
end

-- Create the slash command
SlashCmdList.FFCHECK = run
SLASH_FFCHECK1 = "/ffcheck"
SLASH_FFCHECK2 = "/аасрусл"

-- Event Handler
local f = CreateFrame("Frame")
f:RegisterEvent("READY_CHECK")
f:SetScript("OnEvent", function(self, event, ...)
	if C.announcements.flask_food_auto then
		run(true)
	end
end)

-- Check button
if C.misc.raid_tools == true then
	RaidUtilityPanel:Height(168)

	local b = CreateFrame("Button", "FoodFlaskCheckButton", RaidUtilityPanel, "UIPanelButtonTemplate")
	b:Width(RaidUtilityRoleButton:GetWidth())
	b:Height(18)
	b:Point("TOP", RaidUtilityRaidControlButton, "BOTTOM", 0, -5)
	if IsAddOnLoaded("Aurora") then
		local F = unpack(Aurora)
		F.Reskin(b)
	else
		b:SkinButton()
	end
	b:EnableMouse(true)
	b:SetScript("OnMouseUp", function(self) run() end)

	local t = b:CreateFontString(nil, "OVERLAY", b)
	t:SetFont(C.media.pixel_font, C.media.pixel_font_size, C.media.pixel_font_style)
	t:SetPoint("CENTER")
	t:SetJustifyH("CENTER")
	t:SetText(L_ANNOUNCE_FF_CHECK_BUTTON)
end