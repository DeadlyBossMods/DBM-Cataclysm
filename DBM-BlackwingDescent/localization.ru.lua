if GetLocale() ~= "ruRU" then return end

local L

-------------------------------
--  Dark Iron Golem Council  --
-------------------------------
L = DBM:GetModLocalization(169)

L:SetWarningLocalization({
	SpecWarnActivated			= "Смена цели на: %s!",
	specWarnGenerator			= "Генератор энергии - Двигайтесь %s!"
})

L:SetTimerLocalization({
	timerShadowConductorCast	= "Проводник тьмы",
	timerArcaneLockout			= "Волшебный уничтожитель",
	timerArcaneBlowbackCast		= "Чародейская обратная вспышка",
	timerNefAblity				= "Восст. баффа" --Ability Buff CD
})

L:SetOptionLocalization({
	timerShadowConductorCast	= "Отсчет времени применения заклинания $spell:92048",
	timerArcaneLockout			= "Отсчет времени блокировки $spell:79710",
	timerArcaneBlowbackCast		= "Отсчет времени применения заклинания $spell:91879",
	timerNefAblity				= "Отсчет времени восстановления баффа (героический режим)",
	SpecWarnActivated			= "Спецпредупреждение при активации нового босса",
	specWarnGenerator			= "Спецпредупреждение, когда босс стоит в $spell:79629",
	AcquiringTargetIcon			= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(79501),
	ConductorIcon				= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(79888),
	ShadowConductorIcon			= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(92053),
	SetIconOnActivated			= "Устанавливать метку на появившегося босса"
})

L:SetMiscLocalization({
	YellTargetLock				= "На МНЕ - Обрамляющие тени! Прочь от меня!"
})

--------------
--  Magmaw  --
--------------
L = DBM:GetModLocalization(170)

L:SetWarningLocalization({
	SpecWarnInferno	= "Появляется Пыляющее костяное создание! (~4 сек)"
})

L:SetOptionLocalization({
	SpecWarnInferno	= "Предупреждать заранее о $spell:92190 (~4 сек)",
	RangeFrame		= "Показывать окно проверки дистанции на второй фазе (5м)"
})

L:SetMiscLocalization({
	Slump			= "%s внезапно падает, выставляя клешки!",
	HeadExposed		= "%s насаживается на пику, обнажая голову!",
	YellPhase2		= "Непостижимо! Вы, кажется, можете уничтожить моего лавового червяка! Пожалуй, я помогу ему."
})

-----------------
--  Atramedes  --
-----------------
L = DBM:GetModLocalization(171)

L:SetOptionLocalization({
	InfoFrame				= "Показывать информационное окно для $journal:3072",
	TrackingIcon			= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(78092)
})

L:SetMiscLocalization({
	NefAdd					= "Атрамед, они вон там!",
	Airphase				= "Да, беги! С каждым шагом твое сердце бьется все быстрее. Эти громкие, оглушительные удары... Тебе некуда бежать!"
})

-----------------
--  Chimaeron  --
-----------------
L = DBM:GetModLocalization(172)

L:SetOptionLocalization({
	RangeFrame		= "Показывать окно проверки дистанции (6м)",
	SetIconOnSlime	= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(82935),
	InfoFrame		= "Показывать информационное окно со здоровьем (<10к хп)"
})

L:SetMiscLocalization({
	HealthInfo	= "Инфо о здоровье"
})

----------------
--  Maloriak  --
----------------
L = DBM:GetModLocalization(173)

L:SetWarningLocalization({
	WarnPhase			= "%s фаза"
})

L:SetTimerLocalization({
	TimerPhase			= "Следующая фаза"
})

L:SetOptionLocalization({
	WarnPhase			= "Предупреждать о переходе фаз",
	TimerPhase			= "Показывать таймер до следующей фазы",
	RangeFrame			= "Показывать окно проверки дистанции (6м) во время синей фазы",
	SetTextures			= "Автоматически отключить \"Проецирование текстур\" в темной фазе<br/>(включается обратно при выходе из фазы)",
	FlashFreezeIcon		= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(77699),
	BitingChillIcon		= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(77760),
	ConsumingFlamesIcon	= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(77786)
})

L:SetMiscLocalization({
	YellRed				= "красный|r пузырек в котел!",--Partial matchs, no need for full strings unless you really want em, mod checks for both.
	YellBlue			= "синий|r пузырек в котел!",
	YellGreen			= "зеленый|r пузырек в котел!",
	YellDark			= "магию на котле!"
})

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization(174)

L:SetWarningLocalization({
	OnyTailSwipe		= "Удар хвостом (Ониксия)",
	NefTailSwipe		= "Удар хвостом (Нефариан)",
	OnyBreath			= "Дыхание темного огня (Ониксия)",
	NefBreath			= "Дыхание темного огня (Нефариан)",
	specWarnShadowblazeSoon	= "%s",
	warnShadowblazeSoon		= "%s"
})

L:SetTimerLocalization({
	timerNefLanding		= "Приземление Нефариана",
	OnySwipeTimer		= "Удар хвостом - перезарядка (Ониксия)",
	NefSwipeTimer		= "Удар хвостом - перезарядка (Нефариан)",
	OnyBreathTimer		= "Дыхание темного огня (Ониксия)",
	NefBreathTimer		= "Дыхание темного огня (Нефариан)"
})

L:SetOptionLocalization({
	OnyTailSwipe		= "Предупреждение для $spell:77827 Ониксии",
	NefTailSwipe		= "Предупреждение для $spell:77827 Нефариана",
	OnyBreath			= "Предупреждение для $spell:77826 Ониксии",
	NefBreath			= "Предупреждение для $spell:77826 Нефариана",
	specWarnCinderMove	= "Спецпредупреждение за 5 секунд до взрыва $spell:79339",
	warnShadowblazeSoon	= "Отсчитывать время до $spell:81031 (за 5 секунд до каста)<br/>(Отсчет пойдет только после первой синхронизации с эмоцией босса)",
	specWarnShadowblazeSoon	= "Предупреждать заранее о $spell:81031<br/>(За 5 секунд до первого каста, за 1 секунду до каждого следующего)",
	timerNefLanding		= "Отсчет времени до приземления Нефариана",
	OnySwipeTimer		= "Отсчет времени до восстановления $spell:77827 Ониксии",
	NefSwipeTimer		= "Отсчет времени до восстановления $spell:77827 Нефариана",
	OnyBreathTimer		= "Отсчет времени до восстановления $spell:77826 Ониксии",
	NefBreathTimer		= "Отсчет времени до восстановления $spell:77826 Нефариана",
	InfoFrame			= "Показывать информационное окно для $journal:3284",
	SetWater			= "Автоматически отключать настройку Брызги воды<br/>(Включается обратно при выходе из боя)",
	SetIconOnCinder		= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(79339),
	RangeFrame			= "Окно проверки дистанции (10м) для $spell:79339<br/>(Если на Вас дебафф - показывает всех, иначе только игроков с метками)"
})

L:SetMiscLocalization({
	NefAoe				= "В воздухе трещат электрические разряды!",
	YellPhase2			= "Дерзкие смертные! Неуважение к чужой собственности нужно пресекать самым жестоким образом!",
	YellPhase3			= "Я пытался следовать законам гостеприимства, но вы всё никак не умрете!",
	YellShadowBlaze		= "И плоть превратится в прах!",
	ShadowBlazeExact		= "Вспышка пламени тени через %d",
	ShadowBlazeEstimate		= "Скоро вспышка пламени тени (~5с)"
})

-------------------------------
--  Blackwing Descent Trash  --
-------------------------------
L = DBM:GetModLocalization("BWDTrash")

L:SetGeneralLocalization({
	name = "Трэш мобы Твердыни Крыла Тьмы"
})
