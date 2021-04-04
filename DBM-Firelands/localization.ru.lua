if GetLocale() ~= "ruRU" then return end
local L

-----------------
-- Beth'tilac --
-----------------
L= DBM:GetModLocalization(192)

L:SetMiscLocalization({
	EmoteSpiderlings 	= "Сверху свисают пеплопряды-ткачи!"
})

-------------------
-- Lord Rhyolith --
-------------------
L= DBM:GetModLocalization(193)

---------------
-- Alysrazor --
---------------
L= DBM:GetModLocalization(194)

L:SetWarningLocalization({
	WarnPhase			= "Фаза %d",
	WarnNewInitiate		= "Новообращенный друид-огнеястреб (%s)"
})

L:SetTimerLocalization({
	TimerPhaseChange	= "Фаза %d",
	TimerHatchEggs		= "Вылупление яиц",
	timerNextInitiate	= "Следующий друид (%s)"
})

L:SetOptionLocalization({
	WarnPhase			= "Предупреждение о смене фаз",
	WarnNewInitiate		= "Предупреждение о появлении нового друида-огнеястреба",
	timerNextInitiate	= "Отсчет времени до появления нового друида-огнеястреба",
	TimerPhaseChange	= "Отсчет времени до следующей фазы",
	TimerHatchEggs		= "Отсчет времени до вылупления яиц"
})

L:SetMiscLocalization({
	YellPull			= "Теперь я служу новому господину, смертные!",
	YellPhase2			= "Небо над вами принадлежит МНЕ!",
	LavaWorms			= "На поверхность вылезают огненные лавовые паразиты!",
	PowerLevel			= "Опаляющее перо",
	East				= "на востоке",
	West				= "на западе",
	Both				= "обе стороны"
})

-------------
-- Shannox --
-------------
L= DBM:GetModLocalization(195)

-------------
-- Baleroc --
-------------
L= DBM:GetModLocalization(196)

L:SetWarningLocalization({
	warnStrike	= "%s (%d)"
})

L:SetTimerLocalization({
	TimerBladeActive	= "%s",
	timerStrike			= "След. %s",
	TimerBladeNext		= "Следующее лезвие"
})

L:SetOptionLocalization({
	ResetShardsinThrees	= "Отсчитывать кристаллы группами по 3(25 ппл)/2(10 ппл) в каждой",
	warnStrike			= "Предупреждение о лезвиях",
	timerStrike			= "Отсчет времени между ударами лезвий",
	TimerBladeActive	= "Отсчет времени действия активного лезвия",
	TimerBladeNext		= "Отсчет времени до следующего лезвия"
})

--------------------------------
-- Majordomo Fandral Staghelm --
--------------------------------
L= DBM:GetModLocalization(197)

L:SetTimerLocalization({
	timerNextSpecial		= "След. %s (%d)"
})

L:SetOptionLocalization({
	timerNextSpecial		= "Отсчет времени до следующей особой способности",
	RangeFrameSeeds			= "Показывать окно проверки дистанции (12м) для $spell:98450",
	RangeFrameCat			= "Показывать окно проверки дистанции (10м) для $spell:98374"
})

--------------
-- Ragnaros --
--------------
L= DBM:GetModLocalization(198)

L:SetWarningLocalization({
	warnRageRagnarosSoon	= "%s на %s через 5 секунд",--Spellname on targetname
	warnSplittingBlow		= "%s %s",--Spellname in Location
	warnEngulfingFlame		= "%s %s",--Spellname in Location
	warnEmpoweredSulf		= "%s через 5 секунд"--The spell has a 5 second channel, but tooltip doesn't reflect it so cannot auto localize
})

L:SetTimerLocalization({
	timerRageRagnaros	= "%s на %s",--Spellname on targetname
	TimerPhaseSons		= "Окончание переходной фазы"
})

L:SetOptionLocalization({
	warnRageRagnarosSoon		= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.prewarn:format(101109),
	warnSplittingBlow			= "Предупреждение для $spell:100877",
	warnEngulfingFlame			= "Предупреждение для $spell:99171",
	WarnEngulfingFlameHeroic	= "Предупреждение о появлении $spell:99171 (в героическом режиме)",
	warnSeedsLand				= "Отсчитывать время до появления $spell:98520, а не до их появления в воздухе",
	warnEmpoweredSulf			= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.cast:format(100997),
	timerRageRagnaros			= DBM_CORE_L.AUTO_TIMER_OPTIONS.cast:format(101109),
	TimerPhaseSons				= "Отсчет времени до окончания \"фазы Сыновей пламени\"",
	InfoHealthFrame				= "Информационное окно для игроков с низким уровнем здоровья (<100к)",
	MeteorFrame					= "Информационное окно для целей $spell:99849",
	AggroFrame					= "Информационное окно для игроков, не имеющих аггро от элементалей"
})

L:SetMiscLocalization({
	East				= "на востоке",
	West				= "на западе",
	Middle				= "в центре",
	North				= "в мили",
	South				= "сзади",
	HealthInfo			= "Уровень здоровья",
	HasNoAggro			= "Без аггро",
	MeteorTargets		= "ОМФГ Метеоры!",--Keep rollin' rollin' rollin' rollin'.
	TransitionEnded1	= "Довольно! Пора покончить с этим.",--More reliable then adds method.
	TransitionEnded2	= "Сульфурас уничтожит вас!",--More reliable then adds method.
	TransitionEnded3	= "На колени, смертные!",
	Defeat				= "Слишком рано!.. Вы пришли слишком рано...",
	Phase4				= "Слишком рано..."
})

-----------------------
--  Firelands Trash  --
-----------------------
L = DBM:GetModLocalization("FirelandsTrash")

L:SetGeneralLocalization({
	name = "Треш-мобы"
})

----------------
--  Volcanus  --
----------------
L = DBM:GetModLocalization("Volcanus")

L:SetGeneralLocalization({
	name = "Вулканий"
})

L:SetTimerLocalization({
	timerStaffTransition	= "Следующая фаза"
})

L:SetOptionLocalization({
	timerStaffTransition	= "Отсчет времени до перехода фаз"
})

L:SetMiscLocalization({
	StaffEvent				= "Ветвь Нордрассила яростно реагирует на прикосновение",--Partial, not sure if pull detection will work with partials yet :\
	StaffTrees				= "Из-под земли появляются пылающие древни, чтобы помощь защитнику!",--Might add a spec warning for this later.
	StaffTransition			= "Пламя, пожирающее измученного заступника, меркнет."
})

-----------------------
--  Nexus Legendary  --
-----------------------
L = DBM:GetModLocalization("NexusLegendary")

L:SetGeneralLocalization({
	name = "Тиринар"
})
