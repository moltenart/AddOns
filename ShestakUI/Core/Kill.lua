local T, C, L = unpack(select(2, ...))

----------------------------------------------------------------------------------------
--	Kill all shit stuff on default UI that we don't need
----------------------------------------------------------------------------------------
local Kill = CreateFrame("Frame")
Kill:RegisterEvent("ADDON_LOADED")
Kill:SetScript("OnEvent", function(self, event, addon)
	if addon == "Blizzard_AchievementUI" then
		if C.tooltip.enable then
			hooksecurefunc("AchievementFrameCategories_DisplayButton", function(button) button.showTooltipFunc = nil end)
		end
	end

	if C.unitframe.enable and (addon == "ShestakUI_DPS" or addon == "ShestakUI_Heal") then
		InterfaceOptionsFrameCategoriesButton11:SetScale(0.00001)
		InterfaceOptionsFrameCategoriesButton11:SetAlpha(0)
		CompactRaidFrameManager:Kill()
		CompactRaidFrameContainer:Kill()
		CompactUnitFrame_UpateVisible = T.dummy
		CompactUnitFrame_UpdateAll = T.dummy
		CompactUnitFrameProfiles_ApplyProfile = T.dummy
	end

	if addon ~= "ShestakUI" then return end

	Advanced_UseUIScale:Kill()
	Advanced_UIScaleSlider:Kill()
	TutorialFrameAlertButton:Kill()
	HelpOpenTicketButtonTutorial:Kill()
	TalentMicroButtonAlert:Kill()
	CompanionsMicroButtonAlert:Kill()

	if C.chat.enable then
		InterfaceOptionsSocialPanelWholeChatWindowClickable:Kill()
		InterfaceOptionsSocialPanelConversationMode:Kill()
		InterfaceOptionsSocialPanelBnWhisperMode:Kill()
		InterfaceOptionsSocialPanelWhisperMode:Kill()
	end

	if C.unitframe.enable then
		if T.class == "DEATHKNIGHT" and C.unitframe_class_bar.rune ~= true then
			RuneFrame:Kill()
		end
		InterfaceOptionsFrameCategoriesButton9:SetScale(0.00001)
		InterfaceOptionsFrameCategoriesButton9:SetAlpha(0)
		InterfaceOptionsFrameCategoriesButton10:SetScale(0.00001)
		InterfaceOptionsFrameCategoriesButton10:SetAlpha(0)
		InterfaceOptionsBuffsPanelCastableBuffs:Kill()
		InterfaceOptionsBuffsPanelDispellableDebuffs:Kill()
		InterfaceOptionsBuffsPanelShowAllEnemyDebuffs:Kill()
		InterfaceOptionsCombatPanelTargetOfTarget:Kill()
		InterfaceOptionsCombatPanelEnemyCastBars:Kill()
		InterfaceOptionsCombatPanelEnemyCastBarsOnPortrait:Kill()
		SetCVar("showPartyBackground", 0)
	end

	if C.actionbar.enable then
		InterfaceOptionsActionBarsPanelBottomLeft:Kill()
		InterfaceOptionsActionBarsPanelBottomRight:Kill()
		InterfaceOptionsActionBarsPanelRight:Kill()
		InterfaceOptionsActionBarsPanelRightTwo:Kill()
		InterfaceOptionsActionBarsPanelAlwaysShowActionBars:Kill()
	end

	if C.nameplate.enable then
		InterfaceOptionsCombatPanelEnemyCastBarsOnNameplates:Kill()
	end

	if C.minimap.enable then
		InterfaceOptionsDisplayPanelRotateMinimap:Kill()
	end

	if C.combattext.enable then
		InterfaceOptionsCombatTextPanelFCTDropDown:Kill()
		if C.combattext.blizz_head_numbers ~= true then
			SetCVar("CombatLogPeriodicSpells", 0)
			SetCVar("PetMeleeDamage", 0)
			SetCVar("CombatDamage", 0)
			SetCVar("CombatHealing", 0)
			InterfaceOptionsCombatTextPanelTargetDamage:Kill()
			InterfaceOptionsCombatTextPanelPeriodicDamage:Kill()
			InterfaceOptionsCombatTextPanelPetDamage:Kill()
			InterfaceOptionsCombatTextPanelHealing:Kill()
		end
	end
end)