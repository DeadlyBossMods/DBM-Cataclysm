if GetLocale() ~= "frFR" then return end
local L
-----------------
-- Beth'tilac --
-----------------
L = DBM:GetModLocalization(192)

L:SetMiscLocalization({
	EmoteSpiderlings 	= "De jeunes araignées sont sorties de leur nid !"
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
	WarnPhase			= "Phase %d",
	WarnNewInitiate		= "Initié de la Serre flamboyante (%s)"
})

L:SetTimerLocalization({
	TimerPhaseChange	= "Phase %d",
	TimerHatchEggs		= "Prochains œufs",
	timerNextInitiate	= "Prochain initié (%s)"
})

L:SetOptionLocalization({
	WarnPhase			= "Alerte à chaque changement de phase",
	WarnNewInitiate		= "Alerte lors de l'arrivée d'un nouvel Initié de la Serre flamboyante",
	timerNextInitiate	= "Délai avant l'arrivée d'un nouvel Initié de la Serre flamboyante",
	TimerPhaseChange	= "Délai avant la prochaine phase",
	TimerHatchEggs		= "Délai avant que les œufs n'éclosent"
})

L:SetMiscLocalization({
	YellPull		= "Je sers désormais un nouveau maître, mortels !",
	YellPhase2		= "Ce ciel est à MOI.",
	LavaWorms		= "Des vers de lave embrasés surgissent du sol !",--Might use this one day if i feel it needs a warning for something. Or maybe pre warning for something else (like transition soon)
	PowerLevel		= "Plumes de feu",
	East			= "Est",
	West			= "Ouest",
	Both			= "Les deux"
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
	timerStrike			= "Prochain %s",
	TimerBladeActive	= "%s",
	TimerBladeNext		= "Prochaine lame"
})

L:SetOptionLocalization({
	ResetShardsinThrees	= "Relance du compteur de $spell:99259 par paquet de 3s(25m)/2s(10m)",
	warnStrike			= "Alerte concernant la Frappe de décimation/du feu d'enfer",
	timerStrike			= "Délai avant la prochaine Frappe de décimation/du feu d'enfer",
	TimerBladeActive	= "Durée de la lame active",
	TimerBladeNext		= "Délai avant la prochaine Lame de décimation/infernale"
})

--------------------------------
-- Majordomo Fandral Staghelm --
--------------------------------
L= DBM:GetModLocalization(197)

L:SetTimerLocalization({
	timerNextSpecial	= "Prochain %s (%d)"
})

L:SetOptionLocalization({
	timerNextSpecial			= "Délai avant la prochaine technique spéciale",
	RangeFrameSeeds				= "Cadre des portées (12) pour $spell:98450",
	RangeFrameCat				= "Cadre des portées (10) pour $spell:98374"
})

--------------
-- Ragnaros --
--------------
L= DBM:GetModLocalization(198)

L:SetWarningLocalization({
	warnRageRagnarosSoon	= "%s sur %s dans 5 sec.",--Spellname on targetname
	warnSplittingBlow		= "%s %s",--Spellname in Location
	warnEngulfingFlame		= "%s %s",--Spellname in Location
	warnAggro				= "Vous avez l'aggro d'un Elémentaire du magma",
	warnNoAggro				= "Vous n'avez pas l'aggro d'un Elémentaire du magma",
	warnEmpoweredSulf		= "%s dans 5 sec."--The spell has a 5 second channel, but tooltip doesn't reflect it so cannot auto localize
})

L:SetTimerLocalization({
	timerRageRagnaros		= "%s sur %s",--Spellname on targetname
	TimerPhaseSons			= "Fin de la transition"
})

L:SetOptionLocalization({
	warnRageRagnarosSoon		= "Alerte préventive concernant $spell:101109",
	warnSplittingBlow			= "Alerte concernant $spell:100877",
	warnEngulfingFlame			= "Alerte de position concernant $spell:99171",
	WarnEngulfingFlameHeroic	= "Alerte de position concernant $spell:99171 en héroïque",
	warnSeedsLand				= "Alerte/Délai concernant l'impact de $spell:98520 au lieu des incant. de graînes",
	ElementalAggroWarn			= "Alerte indiquant si vous avez ou non l'aggro d'un Elém. du magma",
	warnEmpoweredSulf			= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.cast:format(100997),
	timerRageRagnaros			= DBM_CORE_L.AUTO_TIMER_OPTIONS.cast:format(101109),
	TimerPhaseSons				= "Durée de la \"phase des Fils des flammes\"",
	InfoHealthFrame				= "Cadre d'infos concernant les vies (<110k pv)",
	MeteorFrame					= "Cadre d'infos concernant les cibles de $spell:99849",
	AggroFrame					= "Cadre d'infos indiquant les joueurs n'ayant pas l'aggro des Elém. du magma"
})

L:SetMiscLocalization({
	East				= "à l'est",
	West				= "à l'ouest",
	Middle				= "au milieu",
	North				= "en mêlée",
	South				= "à l'arrière",
	HealthInfo			= "Moins de 90k PV",
	HasNoAggro			= "Sans aggro",
	MeteorTargets		= "ZOMG des météores !",
	TransitionEnded1	= "Assez ! Je vais en finir.",
	TransitionEnded2	= "Sulfuras sera votre fin.",
	TransitionEnded3	= "À genoux, mortels ! C'est la fin.",
	Defeat				= "Trop tôt !... Vous êtes arrivés trop tôt...", -- à vérifier
	Phase4				= "Trop tôt..." -- à vérifier
})

-----------------------
--  Firelands Trash  --
-----------------------
L = DBM:GetModLocalization("FirelandsTrash")

L:SetGeneralLocalization({
	name = "Trash des terres de Feu"
})

----------------
--  Volcanus  --
----------------
L = DBM:GetModLocalization("Volcanus")

L:SetGeneralLocalization({
	name = "Volcanus"
})

L:SetTimerLocalization({
	timerStaffTransition	= "Fin de la transition"
})

L:SetOptionLocalization({
	timerStaffTransition	= "Durée de la transition de phase"
})

L:SetMiscLocalization({
	StaffEvent			= "La branche de Nordrassil réagit violemment au contact |2 %S+ !",--Reg expression pull match
	StaffTrees			= "Des tréants ardents surgissent du sol pour aider le protecteur !",--Might add a spec warning for this later.
	StaffTransition		= "Les flammes consumant le protecteur tourmenté s’éteignent !"
})

-----------------------
--  Nexus Legendary  --
-----------------------
L = DBM:GetModLocalization("NexusLegendary")

L:SetGeneralLocalization({
	name = "Thyrinar"
})
