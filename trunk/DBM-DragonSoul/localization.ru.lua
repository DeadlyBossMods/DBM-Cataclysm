if GetLocale() ~= "ruRU" then return end
local L

-------------
-- Morchok --
-------------
L= DBM:GetModLocalization(311)

L:SetWarningLocalization({
	KohcromWarning	= "%s: %s"--Bossname, spellname. At least with this we can get boss name from casts in this one, unlike a timer started off the previous bosses casts.
})

L:SetTimerLocalization({
	KohcromCD		= "Кохром повторяет %s"
})

L:SetOptionLocalization({
	KohcromWarning	= "Предупреждать, когда Кохром повторяет заклинания Морхока",
	KohcromCD		= "Отсчет времени до следующего повторения заклинания",
	RangeFrame		= "Показывать окно проверки дистанции (5м) для достижения."
})

L:SetMiscLocalization({
})

---------------------
-- Warlord Zon'ozz --
---------------------
L= DBM:GetModLocalization(324)

L:SetOptionLocalization({
	ShadowYell			= "Кричать, когда на вас $spell:103434<br/>(Героический уровень сложности)",
	CustomRangeFrame	= "Range Frame options (Героический уровень сложности)",
	Never				= "Disabled",
	Normal				= "Normal Range Frame",
	DynamicPhase2		= "Phase2 Debuff Filtering",
	DynamicAlways		= "Always Debuff Filtering"
})

L:SetMiscLocalization({
	voidYell	= "Gul'kafh an'qov N'Zoth."--Start translating the yell he does for Void of the Unmaking cast, the latest logs from DS indicate blizz removed the UNIT_SPELLCAST_SUCCESS event that detected casts. sigh.
})

-----------------------------
-- Yor'sahj the Unsleeping --
-----------------------------
L= DBM:GetModLocalization(325)

L:SetWarningLocalization({
	warnOozesHit	= "%s absorbed %s"
})

L:SetTimerLocalization({
	timerOozesActive	= "Появление капель крови",
	timerOozesReach		= "Oozes Reach Boss"
})

L:SetOptionLocalization({
	warnOozesHit		= "Announce what oozes hit the boss",
	timerOozesActive	= "Отсчет времени спавна капель крови",
	timerOozesReach		= "Show timer for when Oozes reach Yor'sahj",
	RangeFrame			= "Show range frame (4) for $spell:104898<br/>(Normal+ difficulty)"
})

L:SetMiscLocalization({
	Black			= "|cFF424242черная|r",
	Purple			= "|cFF9932CDтеневая|r",
	Red				= "|cFFFF0404алая|r",
	Green			= "|cFF088A08кислотная|r",
	Blue			= "|cFF0080FFкобальтовая|r",
	Yellow			= "|cFFFFA901светящаяся|r"
})

-----------------------
-- Hagara the Binder --
-----------------------
L= DBM:GetModLocalization(317)

L:SetWarningLocalization({
	WarnPillars				= "%s: осталось %d",
	warnFrostTombCast		= "%s через 8 сек."
})

L:SetTimerLocalization({
	TimerSpecial			= "Первая способность"
})

L:SetOptionLocalization({
	WarnPillars				= "Announce how many $journal:3919 or $journal:4069 are left",
	TimerSpecial			= "Отсчет времени до первой особой способности",
	RangeFrame				= "Показывать окно проверки дистанции: (3м) для $spell:105269 и<br/>(10м) для $journal:4327",
	AnnounceFrostTombIcons	= "Дублировать рейдовые иконки на целях $spell:104451 в рейд-чат<br/>(Необходимы права лидера или помощника)",
	warnFrostTombCast		= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.cast:format(104448),
	SetIconOnFrostTomb		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(104451),
	SetIconOnFrostflake		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(109325),
	SpecialCount			= "Play countdown sound for $spell:105256 or $spell:105465",
	SetBubbles				= "Automatically disable chat bubbles when $spell:104451 available<br/>(restores them when combat ends)"
})

L:SetMiscLocalization({
	TombIconSet				= "Ледяная гробница {rt%d} на %s"
})

---------------
-- Ultraxion --
---------------
L= DBM:GetModLocalization(331)

L:SetWarningLocalization({
	specWarnHourofTwilightN		= "%s (%%d)"--spellname Count
})

L:SetTimerLocalization({
	TimerCombatStart	= "Ультраксион приземляется"
})

L:SetOptionLocalization({
	TimerCombatStart	= "Отсчет времени до приземления Ультраксиона",
	ResetHoTCounter		= "Restart Hour of Twilight counter",--$spell doesn't work in this function apparently so use typed spellname for now.
	Never				= "Never",
	ResetDynamic		= "Reset in sets of 3/2 (heroic/normal)",
	Reset3Always		= "Always Reset in sets of 3",
	SpecWarnHoTN		= "Special warn 5s before Hour of Twilight. If counter reset is Never, this follows 3set rule",
	One					= "1 (ie 1 4 7)",
	Two					= "2 (ie 2 5)",
	Three				= "3 (ie 3 6)"
})

L:SetMiscLocalization({
	Pull				= "Я чувствую приближение Хаоса… Мой разум не в силах этого выдержать!!"
})

-------------------------
-- Warmaster Blackhorn --
-------------------------
L= DBM:GetModLocalization(332)

L:SetWarningLocalization({
	SpecWarnElites	= "Twilight Elites!"
})

L:SetTimerLocalization({
	TimerAdd			= "Следующие помощники"
})

L:SetOptionLocalization({
	TimerAdd			= "Отсчет времени до появления следующих помощников",
	SpecWarnElites		= "Show special warning for new Twilight Elites",
	SetTextures			= "Automatically disable projected textures in phase 1<br/>(returns it to enabled in phase 2)"
})

L:SetMiscLocalization({
	SapperEmote			= "Дракон пикирует на палубу, чтобы сбросить на нее сумеречного сапера!",
	Broadside			= "spell:110153",
	DeckFire			= "spell:110095",
	GorionaRetreat			= "screeches in pain and retreats into the swirling clouds"
})

-------------------------
-- Spine of Deathwing  --
-------------------------
L= DBM:GetModLocalization(318)

L:SetWarningLocalization({
	warnSealArmor			= "%s",
	SpecWarnTendril			= "Закрепитесь!"
})

L:SetOptionLocalization({
	warnSealArmor			= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.cast:format(105847),
	SpecWarnTendril			= "Спец-предупреждение, когда на вас нет дебаффа $spell:109454",
	InfoFrame				= "Показывать информационное окно для игроков без $spell:109454",
	SetIconOnGrip			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(109459),
	ShowShieldInfo			= "Показывать полосы здоровья для исцеления $spell:105479"
})

L:SetMiscLocalization({
	Pull			= "Смотрите, он разваливается! Оторвите пластины, и у нас появится шанс сбить его!",
	NoDebuff		= "Нет %s",
	PlasmaTarget	= "Жгучая плазма: %s",
	DRoll			= "собирается накрениться",
	DLevels			= "выравнивается"
})

---------------------------
-- Madness of Deathwing  -- 
---------------------------
L= DBM:GetModLocalization(333)

L:SetOptionLocalization({
	RangeFrame			= "Show dynamic range frame based on player debuff status for<br/>$spell:108649 on Heroic difficulty",
	SetIconOnParasite	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(108649)
})

L:SetMiscLocalization({
	Pull				= "У вас НИЧЕГО не вышло. Я РАЗОРВУ ваш мир на куски."
})

-------------
--  Trash  --
-------------
L = DBM:GetModLocalization("DSTrash")

L:SetGeneralLocalization({
	name =	"Dragonsoul Trash"
})

L:SetWarningLocalization({
	DrakesLeft			= "Осталось Сумеречных агрессоров: %d"
})

L:SetTimerLocalization({
	timerRoleplay		= GUILD_INTEREST_RP,
	TimerDrakes			= "%s",--spellname from mod
})

L:SetOptionLocalization({
	DrakesLeft			= "Announce how many Twilight Assaulters remain",
	TimerDrakes			= "Отсчет времени при применении $spell:109904 Сумеречными агрессорами"
})

L:SetMiscLocalization({
	firstRP				= "Хвала Титанам, они вернулись!",
	UltraxionTrash		= "Рад встрече, Алекстраза. Скоро ты увидишь, над чем я трудился.",
	UltraxionTrashEnded = "Детеныши, эксперименты, шаги к будущему величию. Вы увидите, чего я добился."
})