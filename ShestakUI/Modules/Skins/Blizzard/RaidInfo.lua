local T, C, L = unpack(select(2, ...))
if C.skins.blizzard_frames ~= true then return end

----------------------------------------------------------------------------------------
--	RaidInfo skin
----------------------------------------------------------------------------------------
local function LoadSkin()
	local StripAllTextures = {
		"RaidInfoScrollFrame",
		"RaidInfoFrame",
		"RaidInfoInstanceLabel",
		"RaidInfoIDLabel"
	}

	local KillTextures = {
		"RaidInfoScrollFrameScrollBarBG",
		"RaidInfoScrollFrameScrollBarTop",
		"RaidInfoScrollFrameScrollBarBottom",
		"RaidInfoScrollFrameScrollBarMiddle"
	}

	local buttons = {
		"RaidFrameConvertToRaidButton",
		"RaidFrameRaidInfoButton",
		"RaidFrameRaidBrowserButton",
		"RaidInfoExtendButton",
		"RaidInfoCancelButton"
	}

	for _, object in pairs(StripAllTextures) do
		_G[object]:StripTextures()
	end

	for _, texture in pairs(KillTextures) do
		_G[texture]:Kill()
	end

	for i = 1, #buttons do
		_G[buttons[i]]:SkinButton()
	end

	RaidInfoFrame:CreateBackdrop("Transparent")
	RaidInfoFrame.backdrop:Point("TOPLEFT", RaidInfoFrame, "TOPLEFT")
	RaidInfoFrame.backdrop:Point("BOTTOMRIGHT", RaidInfoFrame, "BOTTOMRIGHT")
	RaidInfoFrame:Point("TOPLEFT", FriendsFrame, "TOPRIGHT", 3, 0)
	T.SkinCloseButton(RaidInfoCloseButton, RaidInfoFrame)
	T.SkinCheckBox(RaidFrameAllAssistCheckButton)
end

tinsert(T.SkinFuncs["ShestakUI"], LoadSkin)