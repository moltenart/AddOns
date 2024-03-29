local T, C, L = unpack(select(2, ...))
if C.reminder.raid_buffs_enable ~= true then return end

----------------------------------------------------------------------------------------
--	Raid buffs on player(by Elv22)
----------------------------------------------------------------------------------------
-- Locals
local flaskbuffs = T.ReminderBuffs["Flask"]
local battleelixirbuffs = T.ReminderBuffs["BattleElixir"]
local guardianelixirbuffs = T.ReminderBuffs["GuardianElixir"]
local foodbuffs = T.ReminderBuffs["Food"]
local statbuffs = T.ReminderBuffs["Stat"]
local staminabuffs = T.ReminderBuffs["Stamina"]
local visible, flask, battleelixir, guardianelixir, food, stat, stamina, spell5, spell6

-- We need to check if you have two differant elixirs if your not flasked, before we say your not flasked
local function CheckElixir(unit)
	if battleelixirbuffs and battleelixirbuffs[1] then
		for i, battleelixirbuffs in pairs(battleelixirbuffs) do
			local spellname = select(1, GetSpellInfo(battleelixirbuffs))
			if UnitAura("player", spellname) then
				FlaskFrame.t:SetTexture(select(3, GetSpellInfo(battleelixirbuffs)))
				battleelixir = true
				break
			else
				battleelixir = false
			end
		end
	end

	if guardianelixirbuffs and guardianelixirbuffs[1] then
		for i, guardianelixirbuffs in pairs(guardianelixirbuffs) do
			local spellname = select(1, GetSpellInfo(guardianelixirbuffs))
			if UnitAura("player", spellname) then
				guardianelixir = true
				if not battleelixir then
					FlaskFrame.t:SetTexture(select(3, GetSpellInfo(guardianelixirbuffs)))
				end
				break
			else
				guardianelixir = false
			end
		end
	end

	if guardianelixir == true and battleelixir == true then
		FlaskFrame:SetAlpha(C.reminder.raid_buffs_alpha)
		flask = true
		return
	else
		FlaskFrame:SetAlpha(1)
		flask = false
	end
end

-- Main Script
local function OnAuraChange(self, event, arg1, unit)
	if event == "UNIT_AURA" and arg1 ~= "player" then return end

	-- If We're a caster we may want to see differant buffs
	if T.Role == "Caster" or T.Role == "Healer" then
		T.ReminderCasterBuffs()
	else
		T.ReminderPhysicalBuffs()
	end

	-- Start checking buffs to see if we can find a match from the list
	if flaskbuffs and flaskbuffs[1] then
		FlaskFrame.t:SetTexture(select(3, GetSpellInfo(flaskbuffs[1])))
		for i, flaskbuffs in pairs(flaskbuffs) do
			local spellname = select(1, GetSpellInfo(flaskbuffs))
			if UnitAura("player", spellname) then
				FlaskFrame.t:SetTexture(select(3, GetSpellInfo(flaskbuffs)))
				FlaskFrame:SetAlpha(C.reminder.raid_buffs_alpha)
				flask = true
				break
			else
				CheckElixir()
			end
		end
	end

	if foodbuffs and foodbuffs[1] then
		FoodFrame.t:SetTexture(select(3, GetSpellInfo(foodbuffs[1])))
		for i, foodbuffs in pairs(foodbuffs) do
			local spellname = select(1, GetSpellInfo(foodbuffs))
			if UnitAura("player", spellname) then
				FoodFrame:SetAlpha(C.reminder.raid_buffs_alpha)
				FoodFrame.t:SetTexture(select(3, GetSpellInfo(foodbuffs)))
				food = true
				break
			else
				FoodFrame:SetAlpha(1)
				food = false
			end
		end
	end

	for i, statbuffs in pairs(statbuffs) do
		local spellname = select(1, GetSpellInfo(statbuffs))
		if UnitAura("player", spellname) then
			StatFrame:SetAlpha(C.reminder.raid_buffs_alpha)
			StatFrame.t:SetTexture(select(3, GetSpellInfo(statbuffs)))
			stat = true
			break
		else
			StatFrame:SetAlpha(1)
			StatFrame.t:SetTexture(select(3, GetSpellInfo(statbuffs)))
			stat = false
		end
	end

	for i, staminabuffs in pairs(staminabuffs) do
		local spellname = select(1, GetSpellInfo(staminabuffs))
		if UnitAura("player", spellname) then
			StaminaFrame:SetAlpha(C.reminder.raid_buffs_alpha)
			StaminaFrame.t:SetTexture(select(3, GetSpellInfo(staminabuffs)))
			stamina = true
			break
		else
			StaminaFrame:SetAlpha(1)
			StaminaFrame.t:SetTexture(select(3, GetSpellInfo(staminabuffs)))
			stamina = false
		end
	end

	for i, Spell5Buff in pairs(Spell5Buff) do
		local spellname = select(1, GetSpellInfo(Spell5Buff))
		if UnitAura("player", spellname) then
			Spell5Frame:SetAlpha(C.reminder.raid_buffs_alpha)
			Spell5Frame.t:SetTexture(select(3, GetSpellInfo(Spell5Buff)))
			spell5 = true
			break
		else
			Spell5Frame:SetAlpha(1)
			Spell5Frame.t:SetTexture(select(3, GetSpellInfo(Spell5Buff)))
			spell5 = false
		end
	end

	for i, Spell6Buff in pairs(Spell6Buff) do
		local spellname = select(1, GetSpellInfo(Spell6Buff))
		if UnitAura("player", spellname) then
			Spell6Frame:SetAlpha(C.reminder.raid_buffs_alpha)
			Spell6Frame.t:SetTexture(select(3, GetSpellInfo(Spell6Buff)))
			spell6 = true
			break
		else
			Spell6Frame:SetAlpha(1)
			Spell6Frame.t:SetTexture(select(3, GetSpellInfo(Spell6Buff)))
			spell6 = false
		end
	end

	local inInstance, instanceType = IsInInstance()
	if not (inInstance and (instanceType == "raid")) and C.reminder.raid_buffs_always == false then
		RaidBuffReminder:SetAlpha(0)
		visible = false
	elseif flask == true and food == true and stat == true and stamina == true and spell5 == true and spell6 == true then
		if not visible then
			RaidBuffReminder:SetAlpha(0)
			visible = false
		end
		if visible then
			UIFrameFadeOut(RaidBuffReminder, 0.5)
			visible = false
		end
	else
		if not visible then
			UIFrameFadeIn(RaidBuffReminder, 0.5)
			visible = true
		end
	end
end

-- Create Anchor
local RaidBuffsAnchor = CreateFrame("Button", "RaidBuffsAnchor", UIParent)
RaidBuffsAnchor:Width((C.reminder.raid_buffs_size * 6) + 15)
RaidBuffsAnchor:Height(C.reminder.raid_buffs_size)
RaidBuffsAnchor:Point(unpack(C.position.raid_buffs))

-- Create Main bar
local raidbuff_reminder = CreateFrame("Frame", "RaidBuffReminder", UIParent)
raidbuff_reminder:CreatePanel("Invisible", (C.reminder.raid_buffs_size * 6) + 15, C.reminder.raid_buffs_size + 4, "TOPLEFT", RaidBuffsAnchor, "TOPLEFT", 0, 4)
raidbuff_reminder:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
raidbuff_reminder:RegisterEvent("UNIT_INVENTORY_CHANGED")
raidbuff_reminder:RegisterEvent("UNIT_AURA")
raidbuff_reminder:RegisterEvent("PLAYER_ENTERING_WORLD")
raidbuff_reminder:RegisterEvent("UPDATE_BONUS_ACTIONBAR")
raidbuff_reminder:RegisterEvent("CHARACTER_POINTS_CHANGED")
raidbuff_reminder:RegisterEvent("ZONE_CHANGED_NEW_AREA")
raidbuff_reminder:SetScript("OnEvent", OnAuraChange)

-- Function to create buttons
local function CreateButton(name, relativeTo, firstbutton)
	local button = CreateFrame("Frame", name, RaidBuffReminder)
	if firstbutton == true then
		button:CreatePanel("Default", C.reminder.raid_buffs_size, C.reminder.raid_buffs_size, "BOTTOMLEFT", relativeTo, "BOTTOMLEFT", 0, 0)
	else
		button:CreatePanel("Default", C.reminder.raid_buffs_size, C.reminder.raid_buffs_size, "LEFT", relativeTo, "RIGHT", 3, 0)
	end
	button:SetFrameLevel(RaidBuffReminder:GetFrameLevel() + 2)

	button.t = button:CreateTexture(name..".t", "OVERLAY")
	button.t:SetTexCoord(0.1, 0.9, 0.1, 0.9)
	button.t:Point("TOPLEFT", 2, -2)
	button.t:Point("BOTTOMRIGHT", -2, 2)
end

-- Create Buttons
do
	CreateButton("FlaskFrame", RaidBuffReminder, true)
	CreateButton("FoodFrame", FlaskFrame, false)
	CreateButton("StatFrame", FoodFrame, false)
	CreateButton("StaminaFrame", StatFrame, false)
	CreateButton("Spell5Frame", StaminaFrame, false)
	CreateButton("Spell6Frame", Spell5Frame, false)
end