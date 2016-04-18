local mod	= DBM:NewMod(112, "DBM-Party-Cataclysm", 7, 67)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(42188)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 80467 78939",
	"SPELL_AURA_REMOVED 78939",
	"SPELL_CAST_START 78807 92426 78903",
	"UNIT_HEALTH boss1"
)

local warnShatterSoon		= mod:NewSoonAnnounce(78807, 3)
local warnBulwark			= mod:NewSpellAnnounce(78939, 3)
local warnGroundSlam		= mod:NewCastAnnounce(78903, 4, nil, nil, "Tank")
local warnEnrage			= mod:NewSpellAnnounce(80467, 3, nil, "Tank")
local warnEnrageSoon		= mod:NewSoonAnnounce(80467, 2, nil, "Tank")

local specWarnGroundSlam	= mod:NewSpecialWarningMove(78903, "Tank")
local specWarnShatter		= mod:NewSpecialWarningRun(78807, "Melee", nil, 2, 4)

--local timerShatterCD		= mod:NewCDTimer(19, 78807)
local timerBulwark			= mod:NewBuffActiveTimer(10, 78939)
local timerBulwarkCD		= mod:NewCDTimer(20, 78939)
local timerShatter			= mod:NewCastTimer(3, 78807, nil, "Melee", 2, 2, nil, DBM_CORE_DEADLY_ICON)

local prewarnEnrage = false

function mod:OnCombatStart(delay)
	prewarnEnrage = false
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 80467 then
		warnEnrage:Show()
	elseif args.spellId == 78939 then
		warnBulwark:Show()
		timerBulwark:Start()
		timerBulwarkCD:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 78939 then--This can be dispelled.
		timerBulwark:Cancel()
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 78807 then
		timerShatter:Start()
--		timerShatterCD:Start()
		specWarnShatter:Show()
	elseif args.spellId == 92426 then
		warnShatterSoon:Show()
	elseif args.spellId == 78903 then
		warnGroundSlam:Show()
		specWarnGroundSlam:Show()
	end
end

function mod:UNIT_HEALTH(uId)
	local h = UnitHealth(uId) / UnitHealthMax(uId)
	if h > 75 and prewarnEnrage then
		prewarnEnrage = false
	elseif h > 33 and h < 37 and not prewarnEnrage then
		warnEnrageSoon:Show()
		prewarnEnrage = true
	end
end