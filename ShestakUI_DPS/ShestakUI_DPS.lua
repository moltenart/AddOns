local T, C, L = unpack(ShestakUI)
if C.unitframe.enable ~= true or IsAddOnLoaded("ShestakUI_Heal") then return end

----------------------------------------------------------------------------------------
--	UnitFrames based on oUF_Caellian(by Caellian)
----------------------------------------------------------------------------------------
local _, ns = ...
local oUF = oUFShestakUI or ShestakUI.oUF

-- Frame size
local party_width = 140
local party_height = 27
local partytarget_width = 30
local partytarget_height = 27
local unit_width = 104
local unit_height = 17

-- Create layout
local function Shared(self, unit)
	local unit = (self:GetParent():GetName():match"oUF_PartyDPS") and "party"
	or (self:GetParent():GetName():match"oUF_RaidDPS") and "raid"
	or (self:GetParent():GetName():match"oUF_MainTank") and "tank" or unit

	-- Set our own colors
	self.colors = T.oUF_colors

	-- Register click
	self:RegisterForClicks("AnyUp")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)

	-- Menu
	self.menu = T.SpawnMenu

	-- Backdrop for every units
	self:CreateBackdrop("Default")

	-- Health bar
	self.Health = CreateFrame("StatusBar", nil, self)
	self.Health:Point("TOPLEFT", self, "TOPLEFT", 0, 0)
	self.Health:Point("TOPRIGHT", self, "TOPRIGHT", 0, 0)
	if (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") and unit ~= "tank" then
		self.Health:Height(27)
	elseif unit == "tank" then
		self.Health:Height(23)
	elseif unit == "raid" then
		self.Health:Height(15)
	elseif unit == "party" then
		self.Health:Height(21)
	else
		self.Health:Height(17)
	end
	self.Health:SetStatusBarTexture(C.media.texture)

	self.Health.frequentUpdates = true
	self.Health.colorTapping = true
	self.Health.colorDisconnected = true
	self.Health.colorClassPet = false
	if C.unitframe.own_color == true then
		self.Health.colorReaction = false
		self.Health.colorClass = false
		self.Health:SetStatusBarColor(unpack(C.unitframe.uf_color))
	else
		self.Health.colorReaction = true
		self.Health.colorClass = true
	end

	-- Health bar background
	self.Health.bg = self.Health:CreateTexture(nil, "BORDER")
	self.Health.bg:SetAllPoints(self.Health)
	self.Health.bg:SetTexture(C.media.texture)
	if C.unitframe.own_color == true then
		self.Health.bg:SetVertexColor(C.unitframe.uf_color[1], C.unitframe.uf_color[2], C.unitframe.uf_color[3], 0.25)
	else
		self.Health.bg.multiplier = 0.25
	end

	if not (self:GetAttribute("unitsuffix") == "pet" or (self:GetAttribute("unitsuffix") == "target" and unit ~= "tank")) then
		self.Health.value = T.SetFontString(self.Health, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
		if unit == "tank" then
			self.Health.value:Point("CENTER", self.Health, "CENTER", 0, -5)
		else
			self.Health.value:Point("RIGHT", self.Health, "RIGHT", 1, 0)
		end
		self.Health.value:SetTextColor(1, 1, 1)

		self.Health.PostUpdate = T.PostUpdateRaidHealth

		-- Power bar
		self.Power = CreateFrame("StatusBar", nil, self)
		if unit == "raid" then
			self.Power:Height(1)
		elseif unit == "party" then
			self.Power:Height(5)
		else
			self.Power:Height(2)
		end
		self.Power:Point("TOPLEFT", self.Health, "BOTTOMLEFT", 0, -1)
		self.Power:Point("TOPRIGHT", self.Health, "BOTTOMRIGHT", 0, -1)
		self.Power:SetStatusBarTexture(C.media.texture)

		self.Power.frequentUpdates = true
		self.Power.colorDisconnected = true
		if C.unitframe.own_color == true then
			self.Power.colorClass = true
		else
			self.Power.colorPower = true
		end

		self.Power.PreUpdate = T.PreUpdatePower
		self.Power.PostUpdate = T.PostUpdatePower

		-- Power bar background
		self.Power.bg = self.Power:CreateTexture(nil, "BORDER")
		self.Power.bg:SetAllPoints(self.Power)
		self.Power.bg:SetTexture(C.media.texture)
		self.Power.bg:SetAlpha(1)
		self.Power.bg.multiplier = 0.3

		self.Power.value = T.SetFontString(self.Power, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
		if not (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") and unit ~= "tank" then
			self.Power.value:Point("RIGHT", self.Power, "RIGHT", 0, 0)
			self.Power.value:SetJustifyH("RIGHT")
		end
	end

	-- Names
	self.Info = T.SetFontString(self.Health, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
	if (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") and unit ~= "tank" then
		self.Info:Point("CENTER", self.Health, "CENTER", 2, 0)
	elseif unit == "tank" then
		self.Info:Point("CENTER", self.Health, "CENTER", 0, 4)
	else
		self.Info:Point("LEFT", self.Health, "LEFT", 3, 0)
		self.Info:SetJustifyH("LEFT")
	end
	if self:GetAttribute("unitsuffix") == "pet" or (self:GetAttribute("unitsuffix") == "target" and unit ~= "tank") then
		self:Tag(self.Info, "[GetNameColor][NameArena]")
	else
		if unit == "party" and C.raidframe.icons_lfd_role ~= true then
			self:Tag(self.Info, "[LFD] [GetNameColor][NameShort]")
		else
			self:Tag(self.Info, "[GetNameColor][NameShort]")
		end
	end

	-- LFD role icons
	if C.raidframe.icons_lfd_role == true and not (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") then
		self.LFDRole = self.Health:CreateTexture(nil, "OVERLAY")
		self.LFDRole:Size(12)
		self.LFDRole:Point("TOPRIGHT", self.Health, 2, 5)
	end

	-- Leader/Assistant/ML icons
	if C.raidframe.icons_leader == true and not (self:GetAttribute("unitsuffix") == "target") then
		-- Leader icon
		self.Leader = self.Health:CreateTexture(nil, "OVERLAY")
		self.Leader:Size(12)
		self.Leader:Point("TOPLEFT", self.Health, -3, 8)

		-- Assistant icon
		self.Assistant = self.Health:CreateTexture(nil, "OVERLAY")
		self.Assistant:Size(12)
		self.Assistant:Point("TOPLEFT", self.Health, -3, 8)

		-- Master looter
		self.MasterLooter = self.Health:CreateTexture(nil, "OVERLAY")
		self.MasterLooter:Size(12)
		self.MasterLooter:Point("TOPRIGHT", self.Health, 3, 8)
	end

	-- Agro border
	if C.raidframe.aggro_border == true then
		table.insert(self.__elements, T.UpdateThreat)
		self:RegisterEvent("PLAYER_TARGET_CHANGED", T.UpdateThreat)
		self:RegisterEvent("UNIT_THREAT_LIST_UPDATE", T.UpdateThreat)
		self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", T.UpdateThreat)
	end

	-- Raid marks
	if C.raidframe.icons_raid_mark == true then
		self.RaidIcon = self.Health:CreateTexture(nil, "OVERLAY")
		self.RaidIcon:Size(12)
		self.RaidIcon:Point("CENTER", self.Health, "TOP")
	end

	-- Ready check icons
	if C.raidframe.icons_ready_check == true then
		self.ReadyCheck = self.Health:CreateTexture(nil, "OVERLAY")
		self.ReadyCheck:Size(12)
		self.ReadyCheck:Point("BOTTOMRIGHT", self.Health, 2, -1)
	end

	if unit == "party" and (not (self:GetAttribute("unitsuffix") == "target")) and (not (self:GetAttribute("unitsuffix") == "pet")) then
		self.Debuffs = CreateFrame("Frame", nil, self)
		self.Debuffs:Point("TOPLEFT", self, "BOTTOMLEFT", -2, -5)
		self.Debuffs:Height(18)
		self.Debuffs:Width(144)
		self.Debuffs.size = T.Scale(18)
		self.Debuffs.spacing = T.Scale(3)
		self.Debuffs.initialAnchor = "LEFT"
		self.Debuffs.num = 7
		self.Debuffs["growth-y"] = "DOWN"
		self.Debuffs["growth-x"] = "RIGHT"
		self.Debuffs.PostCreateIcon = T.PostCreateAura
		self.Debuffs.PostUpdateIcon = T.PostUpdateIcon
	end

	-- Debuff highlight
	self.DebuffHighlight = self.Health:CreateTexture(nil, "OVERLAY")
	self.DebuffHighlight:SetAllPoints(self.Health)
	self.DebuffHighlight:SetTexture(C.media.highlight)
	self.DebuffHighlight:SetVertexColor(0, 0, 0, 0)
	self.DebuffHighlight:SetBlendMode("ADD")
	self.DebuffHighlightAlpha = 1
	self.DebuffHighlightFilter = true

	-- Incoming heal text/bar
	if C.raidframe.plugins_healcomm == true then
		local mhpb = CreateFrame("StatusBar", nil, self.Health)
		mhpb:Point("TOPLEFT", self.Health:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
		mhpb:Point("BOTTOMLEFT", self.Health:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
		if unit == "party" then
			mhpb:Width(party_width)
		elseif unit == "raid" then
			mhpb:Width(unit_width)
		else
			mhpb:Width(partytarget_width)
		end
		mhpb:SetStatusBarTexture(C.media.texture)
		mhpb:SetStatusBarColor(0, 1, 0.5, 0.25)

		local ohpb = CreateFrame("StatusBar", nil, self.Health)
		ohpb:Point("TOPLEFT", mhpb:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
		ohpb:Point("BOTTOMLEFT", mhpb:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
		ohpb:Width(mhpb:GetWidth())
		ohpb:SetStatusBarTexture(C.media.texture)
		ohpb:SetStatusBarColor(0, 1, 0, 0.25)

		self.HealPrediction = {
			myBar = mhpb,
			otherBar = ohpb,
			maxOverflow = 1,
		}
	end

	-- Range alpha
	if C.raidframe.show_range == true and (not (self:GetAttribute("unitsuffix") == "target")) then
		self.Range = {insideAlpha = 1, outsideAlpha = C.raidframe.range_alpha}
	end

	-- Smooth bars
	if C.unitframe.plugins_smooth_bar == true then
		self.Health.Smooth = true
		if not (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") then
			self.Power.Smooth = true
		end
	end

	return self
end

----------------------------------------------------------------------------------------
--	Default position of ShestakUI unitframes
----------------------------------------------------------------------------------------
oUF:RegisterStyle("ShestakDPS", Shared)
oUF:Factory(function(self)
	oUF:SetActiveStyle("ShestakDPS")
	if C.raidframe.show_party == true then
		-- Party
		local party = self:SpawnHeader("oUF_PartyDPS", nil, "custom [@raid6,exists][petbattle] hide;show",
			"oUF-initialConfigFunction", [[
				local header = self:GetParent()
				self:SetWidth(header:GetAttribute("initial-width"))
				self:SetHeight(header:GetAttribute("initial-height"))
			]],
			"initial-width", T.Scale(party_width),
			"initial-height", T.Scale(party_height),
			"showSolo", C.raidframe.solo_mode,
			"showPlayer", C.raidframe.player_in_party,
			"showParty", true,
			"showRaid", true,
			"yOffset", T.Scale(28),
			"point", "BOTTOM"
		)
		party:Point(unpack(C.position.unitframes.party_dps))

		-- Party targets
		local partytarget = self:SpawnHeader("oUF_PartyTargetDPS", nil, "custom [@raid6,exists][petbattle] hide;show",
			"oUF-initialConfigFunction", [[
				local header = self:GetParent()
				self:SetWidth(header:GetAttribute("initial-width"))
				self:SetHeight(header:GetAttribute("initial-height"))
				self:SetAttribute("unitsuffix", "target")
			]],
			"initial-width", T.Scale(partytarget_width),
			"initial-height", T.Scale(partytarget_height),
			"showSolo", C.raidframe.solo_mode,
			"showPlayer", C.raidframe.player_in_party,
			"showParty", true,
			"showRaid", true,
			"yOffset", T.Scale(28),
			"point", "BOTTOM"
		)
		partytarget:Point("TOPLEFT", party, "TOPRIGHT", 7, 0)

		-- Party pets
		local partypet = self:SpawnHeader("oUF_PartyPet", nil, "custom [@raid6,exists][petbattle] hide;show",
			"oUF-initialConfigFunction", [[
				local header = self:GetParent()
				self:SetWidth(header:GetAttribute("initial-width"))
				self:SetHeight(header:GetAttribute("initial-height"))
				self:SetAttribute("useOwnerUnit", "true")
				self:SetAttribute("unitsuffix", "pet")
			]],
			"initial-width", T.Scale(partytarget_width),
			"initial-height", T.Scale(partytarget_height),
			"showSolo", C.raidframe.solo_mode,
			"showPlayer", C.raidframe.player_in_party,
			"showParty", true,
			"showRaid", true,
			"yOffset", T.Scale(28),
			"point", "BOTTOM"
		)

		local partypetupdate = CreateFrame("Frame")
		partypetupdate:SetScript("OnEvent", function(...)
			if InCombatLockdown() then return end

			local lastGroup = 1
			local numRaidMembers = GetNumGroupMembers()
			if numRaidMembers > 0 then
				local playerGroup
				for member = 1, numRaidMembers do
					_, _, playerGroup = GetRaidRosterInfo(member)
					lastGroup = math.max(lastGroup, playerGroup)
				end
			end

			partypet:Point("BOTTOMLEFT", party[lastGroup], "BOTTOMRIGHT", 44, 0)
		end)
		partypetupdate:RegisterEvent("PLAYER_ENTERING_WORLD")
		partypetupdate:RegisterEvent("PLAYER_REGEN_ENABLED")
		partypetupdate:RegisterEvent("GROUP_ROSTER_UPDATE")
		partypetupdate:RegisterEvent("UNIT_ENTERED_VEHICLE")
		partypetupdate:RegisterEvent("UNIT_EXITED_VEHICLE")
	end

	if C.raidframe.show_raid == true then
		-- Raid
		local raid = {}
		for i = 1, C.raidframe.raid_groups do
			local raidgroup = self:SpawnHeader("oUF_RaidDPS"..i, nil, "custom [@raid6,exists][petbattle] show;hide",
				"oUF-initialConfigFunction", [[
					local header = self:GetParent()
					self:SetWidth(header:GetAttribute("initial-width"))
					self:SetHeight(header:GetAttribute("initial-height"))
				]],
				"initial-width", T.Scale(unit_width),
				"initial-height", T.Scale(unit_height),
				"showRaid", true,
				"yOffset", T.Scale(-7),
				"point", "TOPLEFT",
				"groupFilter", tostring(i),
				"maxColumns", 5,
				"unitsPerColumn", 1,
				"columnSpacing", T.Scale(7),
				"columnAnchorPoint", "TOP"
			)
			if i == 1 then
				raidgroup:Point(unpack(C.position.unitframes.raid_dps))
			elseif i == 5 then
				raidgroup:Point("TOPLEFT", raid[1], "TOPRIGHT", 7, 0)
			else
				raidgroup:Point("TOPLEFT", raid[i-1], "BOTTOMLEFT", 0, -7)
			end
			raid[i] = raidgroup
		end
	end

	if C.raidframe.raid_tanks == true then
		-- Tanks
		if C.raidframe.raid_tanks_tt == true then
			mt_template = "oUF_MainTankTT"
		else
			mt_template = "oUF_MainTank"
		end
		local raidtank = self:SpawnHeader("oUF_MainTank", nil, "raid",
			"oUF-initialConfigFunction", ([[
				self:SetWidth(60)
				self:SetHeight(26)
			]]),
			"showRaid", true,
			"yOffset", T.Scale(-7),
			"groupFilter", "MAINTANK",
			"template", mt_template
		)
		raidtank:Point(unpack(C.position.unitframes.tank))
	end
end)