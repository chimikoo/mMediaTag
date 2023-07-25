local E, L = unpack(ElvUI)
local DT = E:GetModule("DataTexts")

--Variables
local _G = _G
local ipairs = ipairs
local format, strjoin = format, strjoin
local GetLootSpecialization = GetLootSpecialization
local GetNumSpecializations = GetNumSpecializations
local GetSpecialization = GetSpecialization
local GetSpecializationInfo = GetSpecializationInfo
local SetLootSpecialization = SetLootSpecialization
local SetSpecialization = SetSpecialization
local SELECT_LOOT_SPECIALIZATION = SELECT_LOOT_SPECIALIZATION
local LOOT_SPECIALIZATION_DEFAULT = LOOT_SPECIALIZATION_DEFAULT
local TANK_ICON = E:TextureString(E.Media.Textures.Tank, ":14:14")
local HEALER_ICON = E:TextureString(E.Media.Textures.Healer, ":14:14")
local DPS_ICON = E:TextureString(E.Media.Textures.DPS, ":14:14")
local active = nil
local activeString = strjoin("", "|cff00FF00", _G.ACTIVE_PETS, "|r")
local inactiveString = strjoin("", "|cffFF0000", _G.FACTION_INACTIVE, "|r")

local menuList = {
	{ text = SELECT_LOOT_SPECIALIZATION, isTitle = true, notCheckable = true },
	{
		checked = function()
			return GetLootSpecialization() == 0
		end,
		func = function()
			SetLootSpecialization(0)
		end,
	},
}

local specList = {
	{ text = _G.SPECIALIZATION, isTitle = true, notCheckable = true },
}

local Config = {
	name = "mMT_Dock_Talent",
	localizedName = mMT.DockString .. " " .. TALENTS_BUTTON,
	category = "mMT-" .. mMT.DockString,
	text = {
		enable = true,
		center = false,
		a = true, -- first label
		b = false, -- second label
	},
	icon = {
		notification = false,
		texture = mMT.IconSquare,
		color = { r = 1, g = 1, b = 1, a = 1 },
	},
}

local function OnEnter(self)
	if E.db.mMT.dockdatatext.tip.enable then
		local _, _, _, _, other, titel, tip = mMT:mColorDatatext()
		local specialization = GetLootSpecialization()
		local sameSpec = specialization == 0 and GetSpecialization()
		local specIndex = DT.SPECIALIZATION_CACHE[sameSpec or specialization]

		if specIndex and specIndex.name then
			DT.tooltip:AddLine(format("%s%s|r", titel, format(LOOT_SPECIALIZATION_DEFAULT, format("|CFF00FA7D%s|r", specIndex.name))))

			for i, info in ipairs(DT.SPECIALIZATION_CACHE) do
				DT.tooltip:AddLine(strjoin(" ", info.name, mMT:mIcon(info.icon), (i == active and activeString or inactiveString)), 1, 1, 1)
			end

			DT.tooltip:AddLine(" ")
			DT.tooltip:AddLine(format("%s%s:|r %s%s|r", titel, SELECT_LOOT_SPECIALIZATION, other, sameSpec and format(LOOT_SPECIALIZATION_DEFAULT, format("|CFF00FA7D%s|r", specIndex.name)) or specIndex.name))
		end

		DT.tooltip:AddLine(" ")
		DT.tooltip:AddLine(format("%s %s%s|r", mMT:mIcon(mMT.Media.Mouse["LEFT"]), tip, L["Left Click: Show Talent Specialization UI"]))
		DT.tooltip:AddLine(format("%s %s%s|r", mMT:mIcon(mMT.Media.Mouse["MIDDLE"]), tip, L["Middle Click: Change Talent Specialization"]))
		DT.tooltip:AddLine(format("%s %s%s|r", mMT:mIcon(mMT.Media.Mouse["RIGHT"]), tip, L["Right Click: Change Loot Specialization"]))
		DT.tooltip:Show()
	end

	mMT:Dock_OnEnter(self, Config)
end

local function OnEvent(self, event, ...)
	if event == "ELVUI_FORCE_UPDATE" then
		--setup settings
		Config.text.enable = E.db.mMT.dockdatatext.talent.showrole
		Config.text.a = E.db.mMT.dockdatatext.talent.showrole
		Config.icon.texture = mMT.Media.DockIcons[E.db.mMT.dockdatatext.talent.icon]
		Config.icon.color = E.db.mMT.dockdatatext.talent.customcolor and E.db.mMT.dockdatatext.talent.iconcolor or nil

		mMT:InitializeDockIcon(self, Config, event)
	end

	if E.db.mMT.roleicons.enable then
		TANK_ICON = E:TextureString(mMT.Media.Role[E.db.mMT.roleicons.tank], ":14:14")
		HEALER_ICON = E:TextureString(mMT.Media.Role[E.db.mMT.roleicons.heal], ":14:14")
		DPS_ICON = E:TextureString(mMT.Media.Role[E.db.mMT.roleicons.dd], ":14:14")
	end

	if #menuList == 2 then
		for index = 1, GetNumSpecializations() do
			local id, name, _, icon = GetSpecializationInfo(index)
			if id then
				menuList[index + 2] = {
					text = name,
					checked = function()
						return GetLootSpecialization() == id
					end,
					func = function()
						SetLootSpecialization(id)
					end,
				}
				specList[index + 1] = {
					text = format("|T%s:14:14:0:0:64:64:4:60:4:60|t  %s", icon, name),
					checked = function()
						return GetSpecialization() == index
					end,
					func = function()
						SetSpecialization(index)
					end,
				}
			end
		end
	end

	local specIndex = GetSpecialization()
	local info = DT.SPECIALIZATION_CACHE[specIndex]

	if info then
		active = specIndex
	end

	local text = nil
	if E.db.mMT.dockdatatext.talent.showrole then
		if IsInGroup() then
			local Role = UnitGroupRolesAssigned("player")

			if Role == "TANK" then
				text = TANK_ICON
			elseif Role == "HEALER" then
				text = HEALER_ICON
			else
				text = DPS_ICON
			end
			self.mMT_Dock.TextA:SetText(text)
		end
	else
		self.mMT_Dock.TextA:SetText("")
	end
end

local function OnLeave(self)
	if E.db.mMT.dockdatatext.tip.enable then
		DT.tooltip:Hide()
	end

	mMT:Dock_OnLeave(self, Config)
end

local function OnClick(self, button)
	if mMT:CheckCombatLockdown() then
		mMT:Dock_Click(self, Config)
		local specIndex = GetSpecialization()
		if not specIndex then
			return
		end

		if button == "LeftButton" then
			_G.ToggleTalentFrame()
		elseif button == "MiddleButton" then
			E:SetEasyMenuAnchor(E.EasyMenu, self)
			_G.EasyMenu(specList, E.EasyMenu, nil, nil, nil, "MENU")
		else
			local _, specName = GetSpecializationInfo(specIndex)
			menuList[2].text = format(LOOT_SPECIALIZATION_DEFAULT, specName)

			E:SetEasyMenuAnchor(E.EasyMenu, self)
			_G.EasyMenu(menuList, E.EasyMenu, nil, nil, nil, "MENU")
		end
	end
end

DT:RegisterDatatext(Config.name, Config.category, { "CHARACTER_POINTS_CHANGED", "PLAYER_TALENT_UPDATE", "ACTIVE_TALENT_GROUP_CHANGED", "PLAYER_LOOT_SPEC_UPDATED", "GROUP_ROSTER_UPDATE" }, OnEvent, nil, OnClick, OnEnter, OnLeave, Config.localizedName, nil, nil)
