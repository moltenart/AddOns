local T, C, L = unpack(select(2, ...))

----------------------------------------------------------------------------------------
--	Reskin Blizzard windows(by Tukz and Co)
----------------------------------------------------------------------------------------
local SkinBlizzUI = CreateFrame("Frame")
SkinBlizzUI:RegisterEvent("ADDON_LOADED")
SkinBlizzUI:SetScript("OnEvent", function(self, event, addon)
	if IsAddOnLoaded("Skinner") or IsAddOnLoaded("Aurora") then return end

	-- Stuff not in Blizzard load-on-demand
	if addon == "ShestakUI" then
		-- Blizzard Frame reskin
		local bgskins = {
			"GameMenuFrame",
			"BNToastFrame",
			"TicketStatusFrameButton",
			"AutoCompleteBox",
			"ReadyCheckFrame",
			"ColorPickerFrame",
			"LFDRoleCheckPopup",
			"ChannelPulloutBackground",
			"ChannelPulloutTab",
			"GuildInviteFrame",
			"RolePollPopup",
			"BaudErrorFrame",
			"StackSplitFrame",
			"OpacityFrame",
			"GeneralDockManagerOverflowButtonList",
			"QueueStatusFrame",
			"BasicScriptErrors"
		}

		QueueStatusFrame:StripTextures()

		for i = 1, getn(bgskins) do
			local frame = _G[bgskins[i]]
			if frame then
				frame:SetTemplate("Transparent")
			end
		end

		local insetskins = {
			"BaudErrorFrameListScrollBox",
			"BaudErrorFrameDetailScrollBox"
		}

		for i = 1, getn(insetskins) do
			local frame = _G[insetskins[i]]
			if frame then
				frame:SetTemplate("Overlay")
			end
		end

		-- Reskin popup
		for i = 1, 4 do
			for j = 1, 3 do
				_G["StaticPopup"..i.."Button"..j]:SkinButton()
			end
			_G["StaticPopup"..i]:SetTemplate("Transparent")
			T.SkinEditBox(_G["StaticPopup"..i.."EditBox"])
			T.SkinEditBox(_G["StaticPopup"..i.."MoneyInputFrameGold"])
			T.SkinEditBox(_G["StaticPopup"..i.."MoneyInputFrameSilver"])
			T.SkinEditBox(_G["StaticPopup"..i.."MoneyInputFrameCopper"])
			_G["StaticPopup"..i.."EditBox"].backdrop:Point("TOPLEFT", -3, -6)
			_G["StaticPopup"..i.."EditBox"].backdrop:Point("BOTTOMRIGHT", -3, 6)
			_G["StaticPopup"..i.."MoneyInputFrameGold"].backdrop:Point("TOPLEFT", -3, 0)
			_G["StaticPopup"..i.."MoneyInputFrameSilver"].backdrop:Point("TOPLEFT", -3, 0)
			_G["StaticPopup"..i.."MoneyInputFrameCopper"].backdrop:Point("TOPLEFT", -3, 0)
			_G["StaticPopup"..i.."ItemFrameNameFrame"]:Kill()
			_G["StaticPopup"..i.."ItemFrame"]:GetNormalTexture():Kill()
			_G["StaticPopup"..i.."ItemFrame"]:SetTemplate("Default")
			_G["StaticPopup"..i.."ItemFrame"]:StyleButton()
			_G["StaticPopup"..i.."ItemFrameIconTexture"]:SetTexCoord(0.1, 0.9, 0.1, 0.9)
			_G["StaticPopup"..i.."ItemFrameIconTexture"]:ClearAllPoints()
			_G["StaticPopup"..i.."ItemFrameIconTexture"]:Point("TOPLEFT", 2, -2)
			_G["StaticPopup"..i.."ItemFrameIconTexture"]:Point("BOTTOMRIGHT", -2, 2)
			_G["StaticPopup"..i.."CloseButton"]:SetNormalTexture("")
			_G["StaticPopup"..i.."CloseButton"].SetNormalTexture = T.dummy
			_G["StaticPopup"..i.."CloseButton"]:SetPushedTexture("")
			_G["StaticPopup"..i.."CloseButton"].SetPushedTexture = T.dummy
			T.SkinCloseButton(_G["StaticPopup"..i.."CloseButton"])
		end

		-- Reskin Dropdown menu
		hooksecurefunc("UIDropDownMenu_InitializeHelper", function(frame)
			for i = 1, UIDROPDOWNMENU_MAXLEVELS do
				_G["DropDownList"..i.."Backdrop"]:SetTemplate("Transparent", true)
				_G["DropDownList"..i.."MenuBackdrop"]:SetTemplate("Transparent", true)
			end
		end)

		-- Reskin menu
		local ChatMenus = {
			"ChatMenu",
			"EmoteMenu",
			"LanguageMenu",
			"VoiceMacroMenu"
		}

		for i = 1, getn(ChatMenus) do
			if _G[ChatMenus[i]] == _G["ChatMenu"] then
				_G[ChatMenus[i]]:HookScript("OnShow", function(self) self:SetTemplate("Transparent")
					self:ClearAllPoints()
					self:Point("BOTTOMRIGHT", ChatFrame1, "BOTTOMRIGHT", 0, 30)
				end)
			else
				_G[ChatMenus[i]]:HookScript("OnShow", function(self)
					self:SetTemplate("Transparent")
				end)
			end
		end

		-- Hide header textures and move text/buttons
		local BlizzardHeader = {
			"GameMenuFrame",
			"ColorPickerFrame"
		}

		for i = 1, getn(BlizzardHeader) do
			local title = _G[BlizzardHeader[i].."Header"]
			if title then
				title:SetTexture(nil)
				title:ClearAllPoints()
				title:Point("TOP", BlizzardHeader[i], 0, 7)
			end
		end

		-- Reskin buttons
		local BlizzardButtons = {
			"GameMenuButtonOptions",
			"GameMenuButtonHelp",
			"GameMenuButtonUIOptions",
			"GameMenuButtonKeybindings",
			"GameMenuButtonMacros",
			"GameMenuButtonRatings",
			"GameMenuButtonAddOns",
			"GameMenuButtonLogout",
			"GameMenuButtonQuit",
			"GameMenuButtonContinue",
			"GameMenuButtonMacOptions",
			"GameMenuButtonOptionHouse",
			"GameMenuButtonAddonManager",
			"GameMenuButtonSettingsUI",
			"ReadyCheckFrameYesButton",
			"ReadyCheckFrameNoButton",
			"ColorPickerOkayButton",
			"ColorPickerCancelButton",
			"BaudErrorFrameClearButton",
			"BaudErrorFrameCloseButton",
			"GuildInviteFrameJoinButton",
			"GuildInviteFrameDeclineButton",
			"RolePollPopupAcceptButton",
			"LFDRoleCheckPopupDeclineButton",
			"LFDRoleCheckPopupAcceptButton",
			"StackSplitOkayButton",
			"StackSplitCancelButton",
			"RaidUtilityConvertButton",
			"RaidUtilityMainTankButton",
			"RaidUtilityMainAssistButton",
			"RaidUtilityRoleButton",
			"RaidUtilityReadyCheckButton",
			"RaidUtilityShowButton",
			"RaidUtilityCloseButton",
			"RaidUtilityDisbandButton",
			"RaidUtilityRaidControlButton",
			"CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton",
			"BasicScriptErrorsButton"
		}

		for i = 1, getn(BlizzardButtons) do
			local buttons = _G[BlizzardButtons[i]]
			if buttons then
				buttons:SkinButton()
			end
		end

		-- Button position or text
		_G["ColorPickerOkayButton"]:ClearAllPoints()
		_G["ColorPickerOkayButton"]:Point("BOTTOMLEFT", _G["ColorPickerFrame"], "BOTTOMLEFT", 6, 6)
		_G["ColorPickerCancelButton"]:ClearAllPoints()
		_G["ColorPickerCancelButton"]:Point("BOTTOMRIGHT", _G["ColorPickerFrame"], "BOTTOMRIGHT", -6, 6)
		_G["ReadyCheckFrameYesButton"]:SetParent(_G["ReadyCheckFrame"])
		_G["ReadyCheckFrameYesButton"]:ClearAllPoints()
		_G["ReadyCheckFrameNoButton"]:SetParent(_G["ReadyCheckFrame"])
		_G["ReadyCheckFrameNoButton"]:ClearAllPoints()
		_G["ReadyCheckFrameYesButton"]:Point("RIGHT", _G["ReadyCheckFrame"], "CENTER", 0, -22)
		_G["ReadyCheckFrameNoButton"]:Point("LEFT", _G["ReadyCheckFrameYesButton"], "RIGHT", 6, 0)
		_G["ReadyCheckFrameText"]:SetParent(_G["ReadyCheckFrame"])
		_G["ReadyCheckFrameText"]:ClearAllPoints()
		_G["ReadyCheckFrameText"]:Point("TOP", 0, -12)
		_G["ChannelPulloutTabText"]:ClearAllPoints()
		_G["ChannelPulloutTabText"]:Point("TOP", _G["ChannelPulloutTab"], "TOP", 0, -6)
		_G["ChannelPulloutTab"]:SetHeight(20)
		_G["ChannelPullout"]:ClearAllPoints()
		_G["ChannelPullout"]:Point("TOP", _G["ChannelPulloutTab"], "BOTTOM", 0, -3)

		-- Others
		for i = 1, 10 do
			select(i, GuildInviteFrame:GetRegions()):Hide()
		end
		_G["GeneralDockManagerOverflowButtonList"]:SetFrameStrata("HIGH")
		_G["ReadyCheckListenerFrame"]:SetAlpha(0)
		_G["ReadyCheckFrame"]:HookScript("OnShow", function(self) if UnitIsUnit("player", self.initiator) then self:Hide() end end)
		_G["StackSplitFrame"]:GetRegions():Hide()
		_G["StackSplitFrame"]:SetFrameStrata("TOOLTIP")
		_G["ChannelPulloutTabLeft"]:SetTexture(nil)
		_G["ChannelPulloutTabMiddle"]:SetTexture(nil)
		_G["ChannelPulloutTabRight"]:SetTexture(nil)
		if C.skins.blizzard_frames == true then
			_G["StaticPopup1CloseButton"]:HookScript("OnShow", function(self)
				self:StripTextures(true)
				T.SkinCloseButton(self, nil, "-")
			end)
			T.SkinCloseButton(_G["LFGDungeonReadyStatusCloseButton"], nil, "-")
			T.SkinCloseButton(_G["ChannelPulloutCloseButton"])
			T.SkinCloseButton(_G["RolePollPopupCloseButton"])
			T.SkinCloseButton(_G["ItemRefCloseButton"])
			if T.client == "ruRU" then
				_G["DeclensionFrame"]:SetTemplate("Transparent")
				_G["DeclensionFrameCancelButton"]:SkinButton()
				_G["DeclensionFrameOkayButton"]:SkinButton()
				T.SkinNextPrevButton(_G["DeclensionFrameSetNext"])
				T.SkinNextPrevButton(_G["DeclensionFrameSetPrev"])
				for i = 1, 5 do
					_G["DeclensionFrameDeclension"..i.."Edit"]:StripTextures(true)
					_G["DeclensionFrameDeclension"..i.."Edit"]:SetTemplate("Overlay")
					_G["DeclensionFrameDeclension"..i.."Edit"]:SetTextInsets(3, 0, 0, 0)
				end
			end
		end
	end

	if addon == "Blizzard_GuildUI" and T.client == "ruRU" then
		_G["GuildFrameTab1"]:ClearAllPoints()
		_G["GuildFrameTab1"]:Point("TOPLEFT", _G["GuildFrame"], "BOTTOMLEFT", -4, 2)
	end
end)