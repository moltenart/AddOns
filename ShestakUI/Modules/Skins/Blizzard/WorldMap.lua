local T, C, L = unpack(select(2, ...))
if C.skins.blizzard_frames ~= true then return end

----------------------------------------------------------------------------------------
--	WorldMap skin
----------------------------------------------------------------------------------------
local function LoadSkin()
	if C.map.enable == true or IsAddOnLoaded("Mapster") then return end

	WorldMapFrame:CreateBackdrop("Transparent")
	WorldMapDetailFrame.backdrop = CreateFrame("Frame", nil, WorldMapFrame)
	WorldMapDetailFrame.backdrop:SetTemplate("Default")
	WorldMapDetailFrame.backdrop:Point("TOPLEFT", WorldMapDetailFrame, "TOPLEFT", -2, 2)
	WorldMapDetailFrame.backdrop:Point("BOTTOMRIGHT", WorldMapDetailFrame, "BOTTOMRIGHT", 2, -2)
	WorldMapDetailFrame.backdrop:SetFrameLevel(WorldMapDetailFrame:GetFrameLevel() - 2)

	T.SkinCloseButton(WorldMapFrameCloseButton)
	T.SkinCloseButton(WorldMapFrameSizeDownButton, nil, "-")
	T.SkinCloseButton(WorldMapFrameSizeUpButton, nil, "+")

	T.SkinDropDownBox(WorldMapLevelDropDown)
	T.SkinDropDownBox(WorldMapZoneMinimapDropDown)
	T.SkinDropDownBox(WorldMapContinentDropDown)
	T.SkinDropDownBox(WorldMapZoneDropDown)
	T.SkinDropDownBox(WorldMapShowDropDown)

	WorldMapZoomOutButton:SkinButton()
	WorldMapZoomOutButton:Point("LEFT", WorldMapZoneDropDown, "RIGHT", 0, 4)
	WorldMapLevelUpButton:Point("TOPLEFT", WorldMapLevelDropDown, "TOPRIGHT", -2, 8)
	WorldMapLevelDownButton:Point("BOTTOMLEFT", WorldMapLevelDropDown, "BOTTOMRIGHT", -2, 2)

	T.SkinCheckBox(WorldMapTrackQuest)
	T.SkinCheckBox(WorldMapQuestShowObjectives)
	T.SkinCheckBox(WorldMapShowDigSites)

	T.SkinScrollBar(WorldMapQuestScrollFrameScrollBar)
	T.SkinScrollBar(WorldMapQuestDetailScrollFrameScrollBar)
	T.SkinScrollBar(WorldMapQuestRewardScrollFrameScrollBar)

	-- MiniMap
	local function SmallSkin()
		WorldMapLevelDropDown:ClearAllPoints()
		WorldMapLevelDropDown:Point("TOPLEFT", WorldMapDetailFrame, "TOPLEFT", -10, -4)

		WorldMapFrame.backdrop:ClearAllPoints()
		WorldMapFrame.backdrop:Point("TOPLEFT", 2, 3)
		WorldMapFrame.backdrop:Point("BOTTOMRIGHT", 2, 0)

		WorldMapFrameCloseButton:Point("TOPRIGHT", WorldMapFrame.backdrop, "TOPRIGHT", -4, -4)
		WorldMapFrameSizeUpButton:ClearAllPoints()
		WorldMapFrameSizeUpButton:Point("TOPRIGHT", WorldMapFrameCloseButton, "TOPLEFT", -4, 0)
		WorldMapFrameSizeUpButton:Point("BOTTOMRIGHT", WorldMapFrameCloseButton, "BOTTOMLEFT", -4, 0)

		WorldMapShowDropDown:Point("BOTTOMRIGHT", WorldMapPositioningGuide, "BOTTOMRIGHT", 2, -5)
	end

	-- LargeMap
	local function LargeSkin()
		if not InCombatLockdown() then
			WorldMapFrame:SetParent(UIParent)
			WorldMapFrame:EnableMouse(false)
			WorldMapFrame:EnableKeyboard(false)
			SetUIPanelAttribute(WorldMapFrame, "area", "center")
			SetUIPanelAttribute(WorldMapFrame, "allowOtherPanels", true)
		end

		WorldMapFrame.backdrop:ClearAllPoints()
		WorldMapFrame.backdrop:Point("TOPLEFT", WorldMapDetailFrame, "TOPLEFT", -25, 66)
		WorldMapFrame.backdrop:Point("BOTTOMRIGHT", WorldMapDetailFrame, "BOTTOMRIGHT", 25, -27)

		WorldMapFrameCloseButton:Point("TOPRIGHT", WorldMapFrame.backdrop, "TOPRIGHT", -4, -4)
		WorldMapFrameSizeDownButton:ClearAllPoints()
		WorldMapFrameSizeDownButton:Point("TOPRIGHT", WorldMapFrameCloseButton, "TOPLEFT", -4, 0)
		WorldMapFrameSizeDownButton:Point("BOTTOMRIGHT", WorldMapFrameCloseButton, "BOTTOMLEFT", -4, 0)

		WorldMapShowDropDown:Point("BOTTOMRIGHT", WorldMapPositioningGuide, "BOTTOMRIGHT", -2, -3)
	end

	local function QuestSkin()
		if not InCombatLockdown() then
			WorldMapFrame:SetParent(UIParent)
			WorldMapFrame:EnableMouse(false)
			WorldMapFrame:EnableKeyboard(false)
			SetUIPanelAttribute(WorldMapFrame, "area", "center")
			SetUIPanelAttribute(WorldMapFrame, "allowOtherPanels", true)
		end

		WorldMapFrame.backdrop:ClearAllPoints()
		WorldMapFrame.backdrop:Point("TOPLEFT", WorldMapDetailFrame, "TOPLEFT", -25, 65)
		WorldMapFrame.backdrop:Point("BOTTOMRIGHT", WorldMapDetailFrame, "BOTTOMRIGHT", 334, -234)

		WorldMapQuestDetailScrollFrame:Width(332)
		WorldMapQuestDetailScrollFrame:ClearAllPoints()
		WorldMapQuestDetailScrollFrame:Point("TOPLEFT", WorldMapDetailFrame.backdrop, "BOTTOMLEFT", 0, -5)

		if not WorldMapQuestDetailScrollFrame.backdrop then
			WorldMapQuestDetailScrollFrame:CreateBackdrop("Overlay")
			WorldMapQuestDetailScrollFrame.backdrop:Point("TOPLEFT", 0, 2)
			WorldMapQuestDetailScrollFrame.backdrop:Point("BOTTOMRIGHT", 23, -5)
		end

		if not WorldMapQuestRewardScrollFrame.backdrop then
			WorldMapQuestRewardScrollFrame:CreateBackdrop("Overlay")
			WorldMapQuestRewardScrollFrame.backdrop:Point("BOTTOMRIGHT", 14, -5)
		end

		if not WorldMapQuestScrollFrame.backdrop then
			WorldMapQuestScrollFrame:CreateBackdrop("Overlay")
			WorldMapQuestScrollFrame.backdrop:Point("TOPLEFT", 0, 2)
			WorldMapQuestScrollFrame.backdrop:Point("BOTTOMRIGHT", 24, -3)
		end

		WorldMapFrameCloseButton:Point("TOPRIGHT", WorldMapFrame.backdrop, "TOPRIGHT", -4, -4)
		WorldMapFrameSizeDownButton:ClearAllPoints()
		WorldMapFrameSizeDownButton:Point("TOPRIGHT", WorldMapFrameCloseButton, "TOPLEFT", -4, 0)
		WorldMapFrameSizeDownButton:Point("BOTTOMRIGHT", WorldMapFrameCloseButton, "BOTTOMLEFT", -4, 0)
	end

	local function FixSkin()
		WorldMapFrame:StripTextures()
		if WORLDMAP_SETTINGS.size == WORLDMAP_FULLMAP_SIZE then
			LargeSkin()
		elseif WORLDMAP_SETTINGS.size == WORLDMAP_WINDOWED_SIZE then
			SmallSkin()
		elseif WORLDMAP_SETTINGS.size == WORLDMAP_QUESTLIST_SIZE then
			QuestSkin()
		end

		if not InCombatLockdown() then
			WorldMapFrame:SetScale(1)
			WorldMapFrameSizeDownButton:Show()
			WorldMapFrame:SetFrameLevel(10)
			WorldMapFrame:SetFrameStrata("HIGH")
		end

		WorldMapFrameAreaLabel:SetFont(C.media.normal_font, 50)
		WorldMapFrameAreaLabel:SetShadowOffset(2, -2)
		WorldMapFrameAreaLabel:SetTextColor(0.9, 0.82, 0.64)

		WorldMapFrameAreaDescription:SetFont(C.media.normal_font, 40)
		WorldMapFrameAreaDescription:SetShadowOffset(1, -1)

		WorldMapZoneInfo:SetFont(C.media.normal_font, 27)
		WorldMapZoneInfo:SetShadowOffset(1, -1)
	end

	WorldMapFrame:HookScript("OnShow", FixSkin)
	hooksecurefunc("WorldMapFrame_SetFullMapView", LargeSkin)
	hooksecurefunc("WorldMapFrame_SetQuestMapView", QuestSkin)
	hooksecurefunc("WorldMap_ToggleSizeUp", FixSkin)

	WorldMapFrame:RegisterEvent("PLAYER_LOGIN")
	WorldMapFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
	WorldMapFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
	WorldMapFrame:HookScript("OnEvent", function(self, event)
		local miniWorldMap = GetCVarBool("miniWorldMap")
		local quest = WorldMapQuestShowObjectives:GetChecked()

		if event == "PLAYER_LOGIN" then
			if not miniWorldMap then
				WorldMapFrame:Show()
				WorldMapFrame:Hide()
			end
		elseif event == "PLAYER_REGEN_DISABLED" then
			WorldMapFrameSizeDownButton:Disable()
			WorldMapFrameSizeUpButton:Disable()

			if quest and miniWorldMap then
				if WorldMapFrame:IsShown() then
					HideUIPanel(WorldMapFrame)
				end

				WorldMapBlobFrame.Show = T.dummy

				WatchFrame_Update()
			end
			WorldMapQuestShowObjectives:Hide()
		elseif event == "PLAYER_REGEN_ENABLED" then
			WorldMapFrameSizeDownButton:Enable()
			WorldMapFrameSizeUpButton:Enable()

			if quest and miniWorldMap then
				WorldMapBlobFrame.Show = WorldMapBlobFrame:Show()

				WorldMapBlobFrame:Show()

				WatchFrame_Update()
			end
			WorldMapQuestShowObjectives:Show()
		end
	end)

	local coords = CreateFrame("Frame", "CoordsFrame", WorldMapFrame)
	local fontheight = select(2, WorldMapQuestShowObjectivesText:GetFont()) * 1.1
	coords:SetFrameLevel(90)
	coords:FontString("PlayerText", C.media.normal_font, fontheight)
	coords:FontString("MouseText", C.media.normal_font, fontheight)
	coords.PlayerText:SetTextColor(WorldMapQuestShowObjectivesText:GetTextColor())
	coords.MouseText:SetTextColor(WorldMapQuestShowObjectivesText:GetTextColor())
	coords.PlayerText:SetShadowOffset(1, -1)
	coords.MouseText:SetShadowOffset(1, -1)
	coords.PlayerText:SetPoint("BOTTOMLEFT", WorldMapDetailFrame, "BOTTOMLEFT", 5, 5)
	coords.PlayerText:SetText(UnitName("player")..": 0,0")
	coords.MouseText:SetPoint("BOTTOMLEFT", coords.PlayerText, "TOPLEFT", 0, 5)
	coords.MouseText:SetText(L_MAP_CURSOR.."0,0")
	local int = 0

	WorldMapFrame:HookScript("OnUpdate", function(self, elapsed)
		if WORLDMAP_SETTINGS.size == WORLDMAP_FULLMAP_SIZE then
			WorldMapFrameSizeUpButton:Hide()
			WorldMapFrameSizeDownButton:Show()
		elseif WORLDMAP_SETTINGS.size == WORLDMAP_WINDOWED_SIZE then
			WorldMapFrameSizeUpButton:Show()
			WorldMapFrameSizeDownButton:Hide()
		elseif WORLDMAP_SETTINGS.size == WORLDMAP_QUESTLIST_SIZE then
			WorldMapFrameSizeUpButton:Hide()
			WorldMapFrameSizeDownButton:Show()
		end

		int = int + 1

		if int >= 3 then
			local inInstance, _ = IsInInstance()
			local x, y = GetPlayerMapPosition("player")
			x = math.floor(100 * x)
			y = math.floor(100 * y)
			if x ~= 0 and y ~= 0 then
				coords.PlayerText:SetText(UnitName("player")..": "..x..","..y)
			else
				coords.PlayerText:SetText(UnitName("player")..": ".."|cffff0000"..L_MAP_BOUNDS.."|r")
			end

			local scale = WorldMapDetailFrame:GetEffectiveScale()
			local width = WorldMapDetailFrame:GetWidth()
			local height = WorldMapDetailFrame:GetHeight()
			local centerX, centerY = WorldMapDetailFrame:GetCenter()
			local x, y = GetCursorPosition()
			local adjustedX = (x / scale - (centerX - (width/2))) / width
			local adjustedY = (centerY + (height/2) - y / scale) / height

			if adjustedX >= 0 and adjustedY >= 0 and adjustedX <= 1 and adjustedY <= 1 then
				adjustedX = math.floor(100 * adjustedX)
				adjustedY = math.floor(100 * adjustedY)
				coords.MouseText:SetText(L_MAP_CURSOR..adjustedX..","..adjustedY)
			else
				coords.MouseText:SetText(L_MAP_CURSOR.."|cffff0000"..L_MAP_BOUNDS.."|r")
			end

			int = 0
		end
	end)
	WorldMapContinentDropDownButton:HookScript("OnClick", function() DropDownList1:SetScale(C.general.uiscale) end)
	WorldMapZoneDropDownButton:HookScript("OnClick", function(self)
		DropDownList1:SetScale(C.general.uiscale)
		DropDownList1:ClearAllPoints()
		DropDownList1:Point("TOPRIGHT", self, "BOTTOMRIGHT", 2, -4)
	end)
end

tinsert(T.SkinFuncs["ShestakUI"], LoadSkin)