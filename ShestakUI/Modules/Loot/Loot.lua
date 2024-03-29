local T, C, L = unpack(select(2, ...))
if C.loot.lootframe ~= true then return end

----------------------------------------------------------------------------------------
--	Loot frame(Butsu by Haste)
----------------------------------------------------------------------------------------
local _NAME, _NS = ...
local Butsu = CreateFrame("Button", _NAME)
local lb = CreateFrame("Button", "ButsuAdv", Butsu, "UIPanelScrollDownButtonTemplate")
local LDD = CreateFrame("Frame", "ButsuLDD", Butsu, "UIDropDownMenuTemplate")
Butsu:Hide()

Butsu:SetScript("OnEvent", function(self, event, ...)
	self[event](self, event, ...)
end)

function Butsu:LOOT_OPENED(event, autoloot)
	self:Show()
	lb:Show()

	if not self:IsShown() then
		CloseLoot(not autoLoot)
	end

	if IsFishingLoot() then
		self.title:SetText(L_LOOT_FISH)
	elseif not UnitIsFriend("player", "target") and UnitIsDead("target") then
		self.title:SetText(UnitName("target"))
	else
		self.title:SetText(LOOT)
	end

	-- Blizzard uses strings here
	if GetCVar("lootUnderMouse") == "1" then
		local x, y = GetCursorPosition()
		x = x / self:GetEffectiveScale()
		y = y / self:GetEffectiveScale()

		self:ClearAllPoints()
		self:Point("TOPLEFT", nil, "BOTTOMLEFT", x - 40, y + 20)
		self:GetCenter()
		self:Raise()
	end

	local m = 0
	local items = GetNumLootItems()
	if items > 0 then
		for i = 1, items do
			local slot = _NS.slots[i] or _NS.CreateSlot(i)
			local texture, item, quantity, quality, locked, isQuestItem, questId, isActive = GetLootSlotInfo(i)
			if texture then
				local color = ITEM_QUALITY_COLORS[quality]
				local r, g, b = color.r, color.g, color.b

				if GetLootSlotType(i) == LOOT_SLOT_MONEY then
					item = item:gsub("\n", ", ")
				end

				if quantity and quantity > 1 then
					slot.count:SetText(quantity)
					slot.count:Show()
				else
					slot.count:Hide()
				end

				if questId and not isActive then
					slot.quest:Show()
				else
					slot.quest:Hide()
				end

				if color or questId or isQuestItem then
					if questId or isQuestItem then
						r, g, b = 1, 1, 0.2
					end

					slot.iconFrame:SetBackdropBorderColor(r, g, b)
					slot.backdrop:SetBackdropBorderColor(r, g, b)
					slot.drop:SetVertexColor(r, g, b)
				end
				slot.drop:Show()

				slot.isQuestItem = isQuestItem
				slot.quality = quality

				slot.name:SetText(item)
				if color then
					slot.name:SetTextColor(r, g, b)
				end
				slot.icon:SetTexture(texture)

				if quality then
					m = math.max(m, quality)
				end

				slot:Enable()
				slot:Show()
			end
		end
	else
		local slot = _NS.slots[1] or _NS.CreateSlot(1)
		local color = ITEM_QUALITY_COLORS[0]

		slot.name:SetText(EMPTY)
		slot.name:SetTextColor(color.r, color.g, color.b)
		slot.icon:SetTexture("Interface\\Icons\\INV_Misc_Herb_AncientLichen")

		slot.count:Hide()
		slot.drop:Hide()
		slot:Disable()
		slot:Show()
	end
	self:AnchorSlots()

	local color = ITEM_QUALITY_COLORS[m]
	self:SetBackdropBorderColor(color.r, color.g, color.b, 0.8)

	self:Width(C.loot.width)
	self.title:Width(C.loot.width - 45)
	self.title:Height(C.font.loot_font_size)
end
Butsu:RegisterEvent("LOOT_OPENED")

function Butsu:LOOT_SLOT_CLEARED(event, slot)
	if not self:IsShown() then return end

	_NS.slots[slot]:Hide()
	self:AnchorSlots()
end
Butsu:RegisterEvent("LOOT_SLOT_CLEARED")

function Butsu:LOOT_CLOSED()
	StaticPopup_Hide("LOOT_BIND")
	self:Hide()
	lb:Hide()

	for _, v in pairs(_NS.slots) do
		v:Hide()
	end
end
Butsu:RegisterEvent("LOOT_CLOSED")

function Butsu:OPEN_MASTER_LOOT_LIST()
	ToggleDropDownMenu(1, nil, GroupLootDropDown, LootFrame.selectedLootButton, 0, 0)
end
Butsu:RegisterEvent("OPEN_MASTER_LOOT_LIST")

function Butsu:UPDATE_MASTER_LOOT_LIST()
	UIDropDownMenu_Refresh(GroupLootDropDown)
end
Butsu:RegisterEvent("UPDATE_MASTER_LOOT_LIST")

do
	local title = Butsu:CreateFontString(nil, "OVERLAY")
	title:SetFont(C.font.loot_font, C.font.loot_font_size, C.font.loot_font_style)
	title:SetShadowOffset(C.font.loot_font_shadow and 1 or 0, C.font.loot_font_shadow and -1 or 0)
	title:SetJustifyH("LEFT")
	title:Point("TOPLEFT", Butsu, "TOPLEFT", 8, -7)
	Butsu.title = title
end

Butsu:SetScript("OnMouseDown", function(self)
	if IsAltKeyDown() then
		self:StartMoving()
	end
end)

Butsu:SetScript("OnMouseUp", function(self)
	self:StopMovingOrSizing()
end)

Butsu:SetScript("OnHide", function(self)
	StaticPopup_Hide("CONFIRM_LOOT_DISTRIBUTION")
	CloseLoot()
end)

Butsu:SetMovable(true)
Butsu:RegisterForClicks("anyup")
Butsu:SetParent(UIParent)
Butsu:SetUserPlaced(true)
Butsu:Point(unpack(C.position.loot))
Butsu:SetTemplate("Transparent")
Butsu:SetClampedToScreen(true)
Butsu:SetFrameStrata("DIALOG")
Butsu:SetToplevel(true)
Butsu:SetFrameLevel(10)

local close = CreateFrame("Button", "LootCloseButton", Butsu, "UIPanelCloseButton")
if C.skins.blizzard_frames == true then
	T.SkinCloseButton(close, nil, nil, true)
	close:Width(14)
	close:Height(14)
else
	close:Width(25)
	close:Height(25)
	close:Point("TOPRIGHT", 0, 1)
end
close:SetScript("OnClick", function() CloseLoot() end)

----------------------------------------------------------------------------------------
--	Announce loot(lcLoot by RustamIrzaev)
----------------------------------------------------------------------------------------
local function OnLinkClick(self)
	ToggleDropDownMenu(1, nil, LDD, lb, 0, 0)
end

local function LDD_OnClick(self)
	local val = self.value
	Announce(val)
end

function Announce(chn)
	local nums = GetNumLootItems()
	if nums == 0 then return end
	if UnitIsPlayer("target") or not UnitExists("target") then
		SendChatMessage(L_LOOT_CHEST..":", chn)
	else
		SendChatMessage(L_LOOT_MONSTER.."'"..UnitName("target").."':", chn)
	end
	for i = 1, GetNumLootItems() do
		if LootSlotHasItem(i) then
			local link = GetLootSlotLink(i)
			local messlink = "- %s"
			if GetLootSlotType(i) ~= LOOT_SLOT_MONEY then
				SendChatMessage(format(messlink, link), chn)
			end
		end
	end
end

local function LDD_Initialize()
	local info = {}

	info.text = L_LOOT_ANNOUNCE
	info.notCheckable = true
	info.isTitle = true
	UIDropDownMenu_AddButton(info)

	info = {}
	info.text = L_LOOT_TO_RAID
	info.value = "raid"
	info.notCheckable = 1
	info.func = LDD_OnClick
	UIDropDownMenu_AddButton(info)

	info = {}
	info.text = L_LOOT_TO_GUILD
	info.value = "guild"
	info.notCheckable = 1
	info.func = LDD_OnClick
	UIDropDownMenu_AddButton(info)

	info = {}
	info.text = L_LOOT_TO_PARTY
	info.value = "party"
	info.notCheckable = 1
	info.func = LDD_OnClick
	UIDropDownMenu_AddButton(info)

	info = {}
	info.text = L_LOOT_TO_SAY
	info.value = "say"
	info.notCheckable = 1
	info.func = LDD_OnClick
	UIDropDownMenu_AddButton(info)

	info = nil
end

if C.skins.blizzard_frames == true then
	T.SkinCloseButton(lb, LootCloseButton, "-", true)
	lb:Width(14)
	lb:Height(14)
else
	lb:Width(15)
	lb:Height(13)
end
lb:ClearAllPoints()
lb:Point("BOTTOMRIGHT", Butsu, "TOPRIGHT", -21, -18)
lb:SetFrameStrata("DIALOG")
lb:RegisterForClicks("RightButtonUp", "LeftButtonUp")
lb:SetScript("OnClick", function(self, button)
	if button == "RightButton" then
		OnLinkClick()
	else
		if GetNumSubgroupMembers() > 0 and not UnitInRaid("player") then
			Announce("PARTY")
		elseif GetNumGroupMembers() > 0 then
			Announce("RAID")
		else
			Announce("SAY")
		end
	end
end)
lb:Hide()
UIDropDownMenu_Initialize(LDD, LDD_Initialize, "MENU")

do
	local slots = {}
	_NS.slots = slots

	local OnEnter = function(self)
		local slot = self:GetID()
		if LootSlotHasItem(slot) then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:SetLootItem(slot)
			CursorUpdate(self)
		end

		self.drop:Show()
		self.drop:SetVertexColor(1, 1, 0)
	end

	local OnLeave = function(self)
		local color = ITEM_QUALITY_COLORS[self.quality]
		if color then
			self.drop:SetVertexColor(color.r, color.g, color.b)
		end

		GameTooltip:Hide()
		ResetCursor()
	end

	local OnClick = function(self)
		if IsModifiedClick() then
			HandleModifiedItemClick(GetLootSlotLink(self:GetID()))
		else
			StaticPopup_Hide("CONFIRM_LOOT_DISTRIBUTION")

			LootFrame.selectedLootButton = self
			LootFrame.selectedSlot = self:GetID()
			LootFrame.selectedQuality = self.quality
			LootFrame.selectedItemName = self.name:GetText()

			LootSlot(self:GetID())
		end
	end

	local OnUpdate = function(self)
		if GameTooltip:IsOwned(self) then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:SetLootItem(self:GetID())
			CursorOnUpdate(self)
		end
	end

	function _NS.CreateSlot(id)
		local frame = CreateFrame("Button", "ButsuSlot"..id, Butsu)
		frame:Height(math.max(C.font.loot_font_size, C.loot.icon_size))
		frame:SetID(id)

		frame:RegisterForClicks("LeftButtonUp", "RightButtonUp")

		frame:SetScript("OnEnter", OnEnter)
		frame:SetScript("OnLeave", OnLeave)
		frame:SetScript("OnClick", OnClick)
		frame:SetScript("OnUpdate", OnUpdate)

		local iconFrame = CreateFrame("Frame", nil, frame)
		iconFrame:Size(C.loot.icon_size)
		iconFrame:SetTemplate("Default")
		iconFrame:Point("LEFT", frame)
		frame.iconFrame = iconFrame

		local icon = iconFrame:CreateTexture(nil, "ARTWORK")
		icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		icon:Point("TOPLEFT", 2, -2)
		icon:Point("BOTTOMRIGHT", -2, 2)
		frame.icon = icon

		local quest = iconFrame:CreateTexture(nil, "OVERLAY")
		quest:SetTexture("Interface\\Minimap\\ObjectIcons")
		quest:SetTexCoord(1/8, 2/8, 1/8, 2/8)
		quest:Size(C.loot.icon_size * 0.8)
		quest:SetPoint("BOTTOMLEFT", -C.loot.icon_size * 0.15, 0)
		frame.quest = quest

		local count = iconFrame:CreateFontString(nil, "OVERLAY")
		count:SetJustifyH("RIGHT")
		count:Point("BOTTOMRIGHT", iconFrame, "BOTTOMRIGHT", 1, 1)
		count:SetFont(C.font.loot_font, C.font.loot_font_size, C.font.loot_font_style)
		count:SetShadowOffset(C.font.loot_font_shadow and 1 or 0, C.font.loot_font_shadow and -1 or 0)
		count:SetText(1)
		frame.count = count

		local name = frame:CreateFontString(nil, "OVERLAY")
		name:SetJustifyH("LEFT")
		name:Point("LEFT", icon, "RIGHT", 10, 0)
		name:SetNonSpaceWrap(true)
		name:SetFont(C.font.loot_font, C.font.loot_font_size, C.font.loot_font_style)
		name:SetShadowOffset(C.font.loot_font_shadow and 1 or 0, C.font.loot_font_shadow and -1 or 0)
		name:Width(C.loot.width - C.loot.icon_size - 20)
		name:Height(C.font.loot_font_size)
		frame.name = name

		local drop = frame:CreateTexture(nil, "ARTWORK")
		drop:SetTexture(C.media.blank)
		drop:Point("TOPLEFT", C.loot.icon_size + 5, -2)
		drop:Point("BOTTOMRIGHT", -2, 2)
		drop:SetAlpha(0.5)
		frame.drop = drop

		frame:CreateBackdrop("Default")
		frame.backdrop:Point("TOPLEFT", C.loot.icon_size + 3, 0)
		frame.backdrop:SetPoint("BOTTOMRIGHT")

		slots[id] = frame
		return frame
	end

	function Butsu:AnchorSlots()
		local frameSize = math.max(C.loot.icon_size, C.loot.icon_size)
		local shownSlots = 0

		local prevShown
		for i = 1, #slots do
			local frame = slots[i]
			if frame:IsShown() then
				frame:ClearAllPoints()
				frame:Point("LEFT", 8, 0)
				frame:Point("RIGHT", -8, 0)
				if not prevShown then
					frame:Point("TOPLEFT", self, 8, -25)
				else
					frame:Point("TOP", prevShown, "BOTTOM", 0, -3)
				end

				frame:Height(frameSize)
				shownSlots = shownSlots + 1
				prevShown = frame
			end
		end

		self:Height((shownSlots * (frameSize + 3)) + 30)
	end
end

-- Kill the default loot frame
LootFrame:UnregisterAllEvents()

-- Escape the dungeon
table.insert(UISpecialFrames, "Butsu")

----------------------------------------------------------------------------------------
--	MasterLoot by Ammo
----------------------------------------------------------------------------------------
local hexColors = {}
for k, v in pairs(RAID_CLASS_COLORS) do
	hexColors[k] = string.format("|cff%02x%02x%02x", v.r * 255, v.g * 255, v.b * 255)
end
hexColors["UNKNOWN"] = string.format("|cff%02x%02x%02x", 0.6 * 255, 0.6 * 255, 0.6 * 255)

if CUSTOM_CLASS_COLORS then
	local function update()
		for k, v in pairs(CUSTOM_CLASS_COLORS) do
			hexColors[k] = string.format("|cff%02x%02x%02x", v.r * 255, v.g * 255, v.b * 255)
		end
	end
	CUSTOM_CLASS_COLORS:RegisterCallback(update)
	update()
end

local playerName = UnitName("player")
local classesInRaid = {}
local players, player_indices = {}, {}
local randoms = {}
local wipe = table.wipe

local function MasterLoot_RequestRoll(frame)
	DoMasterLootRoll(frame.value)
end

local function MasterLoot_GiveLoot(frame)
	if LootFrame.selectedQuality >= MASTER_LOOT_THREHOLD then
		StaticPopup_Show("CONFIRM_LOOT_DISTRIBUTION", ITEM_QUALITY_COLORS[LootFrame.selectedQuality].hex..LootFrame.selectedItemName..FONT_COLOR_CODE_CLOSE, frame.text, "LootWindow")
	else
		GiveMasterLoot(LootFrame.selectedSlot, frame.value)
	end
	CloseDropDownMenus()
end

local function init()
	local candidate, color, lclass, className
	local slot = LootFrame.selectedSlot or 0
	local info = UIDropDownMenu_CreateInfo()

	if UIDROPDOWNMENU_MENU_LEVEL == 2 then
		-- Raid class menu
		wipe(players)
		wipe(player_indices)
		local this_class = UIDROPDOWNMENU_MENU_VALUE
		for i = 1, MAX_RAID_MEMBERS do
			candidate, lclass, className = GetMasterLootCandidate(slot, i)
			if candidate and this_class == className then
				table.insert(players,candidate)
				player_indices[candidate] = i
			end
		end
		if #players > 0 then
			table.sort(players)
			for _, cand in ipairs(players) do
				-- Add candidate button
				info.text = cand
				info.colorCode = hexColors[this_class] or hexColors["UNKOWN"]
				info.textHeight = 12
				info.value = player_indices[cand]
				info.notCheckable = 1
				info.disabled = nil
				info.func = MasterLoot_GiveLoot
				UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL)
			end
		end
		return
	end

	info.isTitle = 1
	info.text = GIVE_LOOT
	info.textHeight = 12
	info.notCheckable = 1
	info.disabled = nil
	info.notClickable = nil
	UIDropDownMenu_AddButton(info)

	if IsInRaid() then
		-- In a raid
		wipe(classesInRaid)
		for i = 1, MAX_RAID_MEMBERS do
			candidate, lclass, className = GetMasterLootCandidate(slot, i)
			if candidate then
				classesInRaid[className] = lclass
			end
		end

		for i, class in ipairs(CLASS_SORT_ORDER) do
			local cname = classesInRaid[class]
			if cname then
				info.isTitle = nil
				info.text = cname
				info.colorCode = hexColors[class] or hexColors["UNKOWN"]
				info.textHeight = 12
				info.hasArrow = 1
				info.notCheckable = 1
				info.value = class
				info.func = nil
				info.disabled = nil
				UIDropDownMenu_AddButton(info)
			end
		end
	else
		-- In a party
		for i = 1, MAX_PARTY_MEMBERS + 1, 1 do
			candidate, lclass, className = GetMasterLootCandidate(slot, i)
			if candidate then
				-- Add candidate button
				info.text = candidate -- coloredNames[candidate]
				info.colorCode = hexColors[className] or hexColors["UNKOWN"]
				info.textHeight = 12
				info.value = i
				info.notCheckable = 1
				info.hasArrow = nil
				info.isTitle = nil
				info.disabled = nil
				info.func = MasterLoot_GiveLoot
				UIDropDownMenu_AddButton(info)
			end
		end
	end

	info.colorCode = "|cffffffff"
	info.isTitle = nil
	info.textHeight = 12
	info.value = slot
	info.notCheckable = 1
	info.hasArrow = nil
	info.text = REQUEST_ROLL
	info.func = MasterLoot_RequestRoll
	info.icon = nil
	UIDropDownMenu_AddButton(info)

	wipe(randoms)
	for i = 1, MAX_RAID_MEMBERS do
		candidate,lclass,className = GetMasterLootCandidate(slot,i)
		if candidate then
			table.insert(randoms, i)
		end
	end
	if #randoms > 0 then
		info.colorCode = "|cffffffff"
		info.isTitle = nil
		info.textHeight = 12
		info.value = randoms[math.random(1, #randoms)]
		info.notCheckable = 1
		info.text = L_LOOT_RANDOM
		info.func = MasterLoot_GiveLoot
		info.icon = "Interface\\Buttons\\UI-GroupLoot-Coin-Up"
		UIDropDownMenu_AddButton(info)
	end
	for i = 1, MAX_RAID_MEMBERS do
		candidate, lclass, className = GetMasterLootCandidate(slot, i)
		if candidate and candidate == playerName then
			info.colorCode = hexColors[className] or hexColors["UNKOWN"]
			info.isTitle = nil
			info.textHeight = 12
			info.value = i
			info.notCheckable = 1
			info.text = L_LOOT_SELF
			info.func = MasterLoot_GiveLoot
			info.icon = nil
			UIDropDownMenu_AddButton(info)
		end
	end
end

UIDropDownMenu_Initialize(GroupLootDropDown, init, "MENU")