local T, C, L = unpack(select(2, ...))
if C.unitframe.enable ~= true or C.raidframe.plugins_aura_watch ~= true then return end

----------------------------------------------------------------------------------------
--	Based on oUF_AuraWatch(by Astromech)
----------------------------------------------------------------------------------------
local _, ns = ...
local oUF = ns.oUF

local UnitBuff, UnitDebuff, UnitGUID = UnitBuff, UnitDebuff, UnitGUID
local GUIDs = {}

local PLAYER_UNITS = {
	player = true,
	vehicle = true,
	pet = true,
}

local setupGUID
do
	local cache = setmetatable({}, {__type = "k"})

	local frame = CreateFrame"Frame"
	frame:SetScript("OnEvent", function(self, event)
		for k,t in pairs(GUIDs) do
			GUIDs[k] = nil
			for a in pairs(t) do
				t[a] = nil
			end
			cache[t] = true
		end
	end)
	frame:RegisterEvent"PLAYER_REGEN_ENABLED"
	frame:RegisterEvent"PLAYER_ENTERING_WORLD"

	function setupGUID(guid)
		local t = next(cache)
		if t then
			cache[t] = nil
		else
			t = {}
		end
		GUIDs[guid] = t
	end
end

local function resetIcon(icon, frame, count, duration, remaining)
	if icon.onlyShowMissing then
		icon:Hide()
	else
		icon:Show()
		if icon.cd then
			if duration and duration > 0 then
				icon.cd:SetCooldown(remaining - duration, duration)
				icon.cd:Show()
			else
				icon.cd:Hide()
			end
		end
		if icon.count then
			icon.count:SetText((count > 1 and count))
		end
		if icon.overlay then
			icon.overlay:Hide()
		end
		icon:SetAlpha(frame.presentAlpha)
	end
end

local function expireIcon(icon, frame)
	if icon.onlyShowPresent then
		icon:Hide()
	else
		if icon.cd then icon.cd:Hide() end
		if icon.count then icon.count:SetText() end
		icon:SetAlpha(frame.missingAlpha)
		if icon.overlay then
			icon.overlay:Show()
		end
		icon:Show()
	end
end

local found = {}
local function Update(frame, event, unit)
	if frame.unit ~= unit then return end
	local watch = frame.AuraWatch
	local index, icons = 1, watch.watched
	local _, name, texture, count, duration, remaining, caster, key, icon, spellid
	local filter = "HELPFUL"
	local guid = UnitGUID(unit)
	if not guid then return end
	if not GUIDs[guid] then setupGUID(guid) end

	for key, icon in pairs(icons) do
		icon:Hide()
	end

	while true do
		name, _, texture, count, _, duration, remaining, caster, _, _, spellid = UnitAura(unit, index, filter)
		if not name then
			if filter == "HELPFUL" then
				filter = "HARMFUL"
				index = 1
			else
				break
			end
		else
			if watch.strictMatching then
				key = spellID
			else
				key = name..texture
			end
			icon = icons[key]
			if icon and (icon.anyUnit or (caster and icon.fromUnits[caster])) then
				resetIcon(icon, watch, count, duration, remaining)
				GUIDs[guid][key] = true
				found[key] = true
			end
			index = index + 1
		end
	end

	for key in pairs(GUIDs[guid]) do
		if icons[key] and not found[key] then
			expireIcon(icons[key], watch)
		end
	end

	for k in pairs(found) do
		found[k] = nil
	end
end

local function setupIcons(self)
	local watch = self.AuraWatch
	local icons = watch.icons
	watch.watched = {}
	if not watch.missingAlpha then watch.missingAlpha = 0.75 end
	if not watch.presentAlpha then watch.presentAlpha = 1 end

	for _,icon in pairs(icons) do

		local name, _, image = GetSpellInfo(icon.spellID)
		if not name then error("oUF_AuraWatch error: no spell with "..tostring(icon.spellID).." spell ID exists") end
		icon.name = name

		if not icon.cd and not (watch.hideCooldown or icon.hideCooldown) then
			local cd = CreateFrame("Cooldown", nil, icon)
			cd:SetAllPoints(icon)
			icon.cd = cd
		end

		if not icon.icon then
			local tex = icon:CreateTexture(nil, "BACKGROUND")
			tex:SetAllPoints(icon)
			tex:SetTexture(image)
			icon.icon = tex
			if not icon.overlay then
				local overlay = icon:CreateTexture(nil, "OVERLAY")
				overlay:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays")
				overlay:SetAllPoints(icon)
				overlay:SetTexCoord(0.296875, 0.5703125, 0, 0.515625)
				overlay:SetVertexColor(1, 0, 0)
				icon.overlay = overlay
			end
		end

		if not icon.count and not (watch.hideCount or icon.hideCount) then
			local count = icon:CreateFontString(nil, "OVERLAY")
			count:SetFontObject(NumberFontNormal)
			count:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", -1, 0)
			icon.count = count
		end

		if icon.onlyShowMissing == nil then
			icon.onlyShowMissing = watch.onlyShowMissing
		end
		if icon.onlyShowPresent == nil then
			icon.onlyShowPresent = watch.onlyShowPresent
		end
		if icon.fromUnits == nil then
			icon.fromUnits = watch.fromUnits or PLAYER_UNITS
		end
		if icon.anyUnit == nil then
			icon.anyUnit = watch.anyUnit
		end

		if watch.strictMatching then
			watch.watched[icon.spellID] = icon
		else
			watch.watched[name..image] = icon
		end

		if watch.PostCreateIcon then watch:PostCreateIcon(icon, icon.spellID, name, self) end
	end
end

local function Enable(self)
	if self.AuraWatch then
		self:RegisterEvent("UNIT_AURA", Update)
		setupIcons(self)
		return true
	else
		return false
	end
end

local function Disable(self)
	if self.AuraWatch then
		self:UnregisterEvent("UNIT_AURA", Update)
		for _, icon in pairs(self.AuraWatch.icons) do
			icon:Hide()
		end
	end
end

oUF:AddElement("AuraWatch", Update, Enable, Disable)