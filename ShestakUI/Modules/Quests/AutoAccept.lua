local T, C, L = unpack(select(2, ...))
if C.automation.accept_quest ~= true then return end

----------------------------------------------------------------------------------------
--	Quest automation(Monomyth by p3lim)
----------------------------------------------------------------------------------------
local Monomyth = CreateFrame("Frame")
Monomyth:SetScript("OnEvent", function(self, event, ...) self[event](...) end)

local atBank, atMail

function Monomyth:Register(event, func)
	self:RegisterEvent(event)
	self[event] = function(...)
		if not IsShiftKeyDown() then
			func(...)
		end
	end
end

local function IsTrackingTrivial()
	for index = 1, GetNumTrackingTypes() do
		local name, _, active = GetTrackingInfo(index)
		if name == MINIMAP_TRACKING_TRIVIAL_QUESTS then
			return active
		end
	end
end

Monomyth:Register("QUEST_GREETING", function()
	local active = GetNumActiveQuests()
	if active > 0 then
		for index = 1, active do
			local _, complete = GetActiveTitle(index)
			if complete then
				SelectActiveQuest(index)
			end
		end
	end

	local available = GetNumAvailableQuests()
	if available > 0 then
		for index = 1, available do
			if not IsAvailableQuestTrivial(index) or IsTrackingTrivial() then
				SelectAvailableQuest(index)
			end
		end
	end
end)

local function IsGossipQuestCompleted(index)
	return not not select(((index * 5) - 5) + 4, GetGossipActiveQuests())
end

local function IsGossipQuestTrivial(index)
	return not not select(((index * 6) - 6) + 3, GetGossipAvailableQuests())
end

local function GetNumGossipCompletedQuests()
	local completed = 0
	local active = GetNumGossipActiveQuests()
	if active > 0 then
		for index = 1, active do
			if select(index + 3, (GetGossipActiveQuests())) then
				completed = completed + 1
			end
		end
	end

	return completed
end

Monomyth:Register("GOSSIP_SHOW", function()
	local active = GetNumGossipActiveQuests()
	if active > 0 then
		for index = 1, active do
			if IsGossipQuestCompleted(index) then
				SelectGossipActiveQuest(index)
			end
		end
	end

	local available = GetNumGossipAvailableQuests()
	if available > 0 then
		for index = 1, available do
			if not IsGossipQuestTrivial(index) or IsTrackingTrivial() then
				SelectGossipAvailableQuest(index)
			end
		end
	end

	local _, instance = GetInstanceInfo()
	if available == 0 and active == 0 and GetNumGossipOptions() == 1 and instance ~= "raid" then
		local _, type = GetGossipOptions()
		if type == "gossip" then
			SelectGossipOption(1)
			return
		end
	end
end)

local darkmoonNPC = {
	[57850] = true,	-- Teleportologist Fozlebub
	[55382] = true,	-- Darkmoon Faire Mystic Mage (Horde)
	[54334] = true,	-- Darkmoon Faire Mystic Mage (Alliance)
}

Monomyth:Register("GOSSIP_CONFIRM", function(index)
	local GUID = UnitGUID("target") or ""
	local creatureID = tonumber(string.sub(GUID, -12, -9), 16)

	if creatureID and darkmoonNPC[creatureID] then
		SelectGossipOption(index, "", true)
		StaticPopup_Hide("GOSSIP_CONFIRM")
	end
end)

Monomyth:Register("QUEST_DETAIL", function()
	if not QuestGetAutoAccept() then
		AcceptQuest()
	end
end)

Monomyth:Register("QUEST_ACCEPT_CONFIRM", AcceptQuest)

Monomyth:Register("QUEST_PROGRESS", function()
	if IsQuestCompletable() then
		CompleteQuest()
	end
end)

local choiceQueue, choiceFinished
Monomyth:Register("QUEST_ITEM_UPDATE", function(...)
	if choiceQueue then
		Monomyth.QUEST_COMPLETE()
	end
end)

Monomyth:Register("QUEST_COMPLETE", function()
	local choices = GetNumQuestChoices()
	if choices < 1 then
		GetQuestReward(QuestFrameRewardPanel.itemChoice)
	elseif choices == 1 then
		GetQuestReward(1)
	elseif choices > 1 then
		local bestValue, bestIndex = 0

		for index = 1, choices do
			local link = GetQuestItemLink("choice", index)
			if link then
				local _, _, _, _, _, _, _, _, _, _, value = GetItemInfo(link)

				if string.match(link, "item:45724:") then
					-- Champion's Purse, contains 10 gold
					value = 1e5
				end

				if value > bestValue then
					bestValue, bestIndex = value, index
				end
			else
				choiceQueue = true
				return GetQuestItemInfo("choice", index)
			end
		end

		if bestIndex then
			choiceFinished = true
			_G["QuestInfoItem" .. bestIndex]:Click()
		end
	end
end)

Monomyth:Register("QUEST_FINISHED", function()
	if choiceFinished then
		choiceQueue = false
	end
end)

Monomyth:Register("QUEST_AUTOCOMPLETE", function(id)
	local index = GetQuestLogIndexByID(id)
	if GetQuestLogIsAutoComplete(index) then
		-- The quest might not be considered complete, investigate later
		ShowQuestComplete(index)
	end
end)

Monomyth:Register("BANKFRAME_OPENED", function()
	atBank = true
end)

Monomyth:Register("BANKFRAME_CLOSED", function()
	atBank = false
end)

Monomyth:Register("GUILDBANKFRAME_OPENED", function()
	atBank = true
end)

Monomyth:Register("GUILDBANKFRAME_CLOSED", function()
	atBank = false
end)

Monomyth:Register("MAIL_SHOW", function()
	atMail = true
end)

Monomyth:Register("MAIL_CLOSED", function()
	atMail = false
end)

Monomyth:Register("BAG_UPDATE", function(bag)
	if atBank or atMail then return end

	for slot = 1, GetContainerNumSlots(bag) do
		local _, id, active = GetContainerItemQuestInfo(bag, slot)
		if id and not active and not IsQuestFlaggedCompleted(id) then
			UseContainerItem(bag, slot)
		end
	end
end)

ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", function(self, event, message)
	if message == ERR_QUEST_ALREADY_DONE then
		return true
	end
end)

QuestInfoDescriptionText.SetAlphaGradient = function() end