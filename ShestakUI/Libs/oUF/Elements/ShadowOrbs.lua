if(select(2, UnitClass('player')) ~= 'PRIEST') then return end

local parent, ns = ...
local oUF = ns.oUF

local PRIEST_BAR_NUM_ORBS = PRIEST_BAR_NUM_ORBS
local SPELL_POWER_SHADOW_ORBS = SPELL_POWER_SHADOW_ORBS

local function Update(self, event, unit, powerType)
	if(self.unit ~= unit or (powerType and powerType ~= 'SHADOW_ORBS')) then return end

	local sb = self.ShadowOrbsBar

	if(sb.PreUpdate) then
		sb:PreUpdate(unit)
	end

	local numOrbs = UnitPower('player', SPELL_POWER_SHADOW_ORBS)

	for i = 1, PRIEST_BAR_NUM_ORBS do
		if i <= numOrbs then
			sb[i]:SetAlpha(1)
		else
			sb[i]:SetAlpha(.2)
		end
	end

	if(sb.PostUpdate) then
		return sb:PostUpdate(numOrbs)
	end
end

local Path = function(self, ...)
	return (self.ShadowOrbsBar.Override or Update) (self, ...)
end

local ForceUpdate = function(element)
	return Path(element.__owner, 'ForceUpdate', element.__owner.unit, 'SHADOW_ORBS')
end

local function Visibility(self, event, unit)
	local sb = self.ShadowOrbsBar
	local spec = GetSpecialization()

	if spec == SPEC_PRIEST_SHADOW then
		sb:Show()
		if self.Debuffs then self.Debuffs:Point("BOTTOMRIGHT", self, "TOPRIGHT", 2, 19) end
	else
		sb:Hide()
		if self.Debuffs then self.Debuffs:Point("BOTTOMRIGHT", self, "TOPRIGHT", 2, 5) end
	end
end

local function Enable(self, unit)
	local sb = self.ShadowOrbsBar
	if(sb) and unit == 'player' then
		sb.__owner = self
		sb.ForceUpdate = ForceUpdate

		self:RegisterEvent('PLAYER_TALENT_UPDATE', Visibility)
		self:RegisterEvent('UNIT_DISPLAYPOWER', Path)
		self:RegisterEvent('UNIT_POWER_FREQUENT', Path)

		return true
	end
end

local function Disable(self)
	local sb = self.ShadowOrbsBar
	if(sb) then
		self:UnregisterEvent('PLAYER_TALENT_UPDATE', Visibility)
		self:UnregisterEvent('UNIT_DISPLAYPOWER', Path)
		self:UnregisterEvent('UNIT_POWER_FREQUENT', Path)
	end
end

oUF:AddElement('ShadowOrbsBar', Path, Enable, Disable)
