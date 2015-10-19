local mod	= DBM:NewMod(119, "DBM-Party-Cataclysm", 5, 69)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(43612)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 82622 82506 82255 88814",
	"SPELL_AURA_REMOVED 82622 82506",
	"SPELL_DAMAGE 81942",
	"SPELL_MISSED 81942",
	"UNIT_DIED"
)

--TODO, verify how soul sever stuff works, i don't remember it completely
local warnPlagueAges			= mod:NewTargetAnnounce(82622, 3, nil, "Healer", 2)
local warnLashings				= mod:NewTargetAnnounce(82506, 3, nil, "Tank|Healer", 2)--I think it's tank debuff? review
local warnRepentance			= mod:NewSpellAnnounce(82320, 2)	-- kind of add phase
local warnSoulSever				= mod:NewTargetAnnounce(82255, 4)

local specWarnHeavenFury		= mod:NewSpecialWarningMove(81942)
local specWarnHallowedGround 	= mod:NewSpecialWarningMove(88814)
local specWarnSoulSever			= mod:NewSpecialWarningYou(82255, nil, nil, nil, 3)
local specWarnSoulSeverDps		= mod:NewSpecialWarningSwitch(82255, "Dps")

local timerPlagueAges			= mod:NewTargetTimer(9, 82622, nil, "Healer", 2, 5)
local timerLashings				= mod:NewTargetTimer(20, 82506, nil, "Tank|Healer", 2, 5)
local timerSoulSever			= mod:NewTargetTimer(4, 82255, nil, nil, nil, 1)
local timerSoulSeverCD			= mod:NewCDTimer(11, 82255, nil, nil, nil, 3)

mod:AddBoolOption("BossHealthAdds")

local spamSIS = 0--We use custom updating so don't use prototype
local BlazeHeavens = EJ_GetSectionInfo(2459)
local HarbringerDarkness = EJ_GetSectionInfo(2473)

function mod:OnCombatStart(delay)
	spamSIS = 0
	if DBM.BossHealth:IsShown() and self.Options.BossHealthAdds then
		DBM.BossHealth:AddBoss(48906, BlazeHeavens)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 82622 then
		warnPlagueAges:Show(args.destName)
		timerPlagueAges:Start(args.destName)
	elseif spellId == 82506 then
		warnLashings:Show(args.destName)
		timerLashings:Start(args.destName)
	elseif spellId == 82320 and args.destName == L.name then
		warnRepentance:Show()
		spamSIS = GetTime()
		if self.Options.BossHealthAdds and DBM.BossHealth:IsShown() then
			DBM.BossHealth:AddBoss(43927, HarbringerDarkness)
			DBM.BossHealth:RemoveBoss(48906)
		end
	elseif spellId == 82255 then
		if args:IsPlayer() then
			specWarnSoulSever:Show()
		else
			warnSoulSever:Show(args.destName)
		end
		specWarnSoulSeverDps:Schedule(4)
		timerSoulSever:Start(args.destName)
		timerSoulSeverCD:Start()
	elseif spellId == 88814 and args:IsPlayer() and GetTime() - spamSIS > 5.5 then
		spamSIS = GetTime()
		specWarnHallowedGround:Show()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 82622 then
		timerPlagueAges:Cancel(args.destName)
	elseif spellId == 82506 then
		timerLashings:Cancel(args.destName)
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 81942 and destGUID == UnitGUID("player") and GetTime() - spamSIS > 3 then
		spamSIS = GetTime()
		specWarnHeavenFury:Show()
	end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 43927 and self.Options.BossHealthAdds and DBM.BossHealth:IsShown() then
		DBM.BossHealth:RemoveBoss(43927)
		DBM.BossHealth:AddBoss(48906, BlazeHeavens)
	end
end
		