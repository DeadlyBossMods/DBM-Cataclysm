std = "lua51"
max_line_length = false
exclude_files = {
	".luacheckrc"
}
ignore = {
	"211", -- Unused local variable
	"211/L", -- Unused local variable "L"
	"211/CL", -- Unused local variable "CL"
	"212", -- Unused argument
	"213", -- Unused loop variable
	"231/_.*", -- unused variables starting with _
	"311", -- Value assigned to a local variable is unused
	"431", -- shadowing upvalue
	"542", -- An empty if branch
}
globals = {
	-- DBM
	"DBM",
	"DBM_CORE_L",

	-- Lua
	"table.wipe",

	-- WoW
	"ALTERNATE_POWER_INDEX",
	"GUILD_INTEREST_RP",
	"PLAYER_DIFFICULTY2",

	"C_ChatInfo.RegisterAddonMessagePrefix",
	"Ambiguate",
	"CheckInteractDistance",
	"EJ_GetEncounterInfo",
	"GetCVarBool",
	"GetInstanceInfo",
	"GetLocale",
	"GetPartyAssignment",
	"GetRaidRosterInfo",
	"GetTime",
	"IsInGroup",
	"SendChatMessage",
	"SetCVar",
	"SetRaidTarget",
	"UnitCastingInfo",
	"UnitClass",
	"UnitIsFriend",
	"UnitExists",
	"UnitGroupRolesAssigned",
	"UnitGUID",
	"UnitHealth",
	"UnitHealthMax",
	"UnitIsDeadOrGhost",
	"UnitIsUnit",
	"UnitName",
	"UnitPosition",
	"UnitPower",
	"UnitPowerMax",
	"UnitThreatSituation",
}
