local L

-----------------
-- Beth'tilac --
-----------------
L= DBM:GetModLocalization(192)

L:SetMiscLocalization({
	EmoteSpiderlings 	= "Spiderlings have been roused from their nest!"
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
	WarnNewInitiate		= "Blazing Talon Initiate (%s)"
})

L:SetTimerLocalization({
	TimerPhaseChange	= "Phase %d",
	TimerHatchEggs		= "Next Eggs",
	timerNextInitiate	= "Next Initiate (%s)"
})

L:SetOptionLocalization({
	WarnPhase			= "Show a warning for each phase change",
	WarnNewInitiate		= "Show a warning for new Blazing Talon Initiate",
	timerNextInitiate	= "Show a timer for next Blazing Talon Initiate",
	TimerPhaseChange	= "Show a timer till next phase",
	TimerHatchEggs		= "Show a timer till next eggs are hatched"
})

L:SetMiscLocalization({
	YellPull		= "I serve a new master now, mortals!",
	YellPhase2		= "These skies are MINE!",
	LavaWorms		= "Fiery Lava Worms erupt from the ground!",--Might use this one day if i feel it needs a warning for something. Or maybe pre warning for something else (like transition soon)
	East			= "East",
	West			= "West",
	Both			= "Both"
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
	timerStrike			= "Next %s",
	TimerBladeActive	= "%s",
	TimerBladeNext		= "Next blade"
})

L:SetOptionLocalization({
	ResetShardsinThrees	= "Restart $spell:99259 count in sets of 3s(25m)/2s(10m)",
	warnStrike			= "Show warnings for Decimation/Inferno Strike",
	timerStrike			= "Show timer for next Decimation/Inferno Strike",
	TimerBladeActive	= "Show a duration timer for the active Blade",
	TimerBladeNext		= "Show a next timer for Decimation/Inferno Blade"
})

--------------------------------
-- Majordomo Fandral Staghelm --
--------------------------------
L= DBM:GetModLocalization(197)

L:SetTimerLocalization({
	timerNextSpecial	= "Next %s (%d)"
})

L:SetOptionLocalization({
	timerNextSpecial			= "Show timer for next special ability",
	RangeFrameSeeds				= "Show range frame (12) for $spell:98450",
	RangeFrameCat				= "Show range frame (10) for $spell:98374"
})

--------------
-- Ragnaros --
--------------
L= DBM:GetModLocalization(198)

L:SetWarningLocalization({
	warnRageRagnarosSoon	= "%s on %s in 5 sec",--Spellname on targetname
	warnSplittingBlow		= "%s in %s",--Spellname in Location
	warnEngulfingFlame		= "%s in %s",--Spellname in Location
	warnEmpoweredSulf		= "%s in 5 sec"--The spell has a 5 second channel, but tooltip doesn't reflect it so cannot auto localize
})

L:SetTimerLocalization({
	timerRageRagnaros		= "%s on %s",--Spellname on targetname
	TimerPhaseSons			= "Transition ends"
})

L:SetOptionLocalization({
	warnRageRagnarosSoon		= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.prewarn:format(101109),
	warnSplittingBlow			= "Show location warnings for $spell:98951",
	warnEngulfingFlame			= "Show location warnings for $spell:99171 on normal",
	warnEngulfingFlameHeroic	= "Show location warnings for $spell:99171 on heroic",
	warnSeedsLand				= "Show warning/timer for $spell:98520 landing instead of seed casts.",
	warnEmpoweredSulf			= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.cast:format(100604),
	timerRageRagnaros			= DBM_CORE_L.AUTO_TIMER_OPTIONS.cast:format(101109),
	TimerPhaseSons				= "Show a duration timer for the \"Sons of Flame phase\"",
	InfoHealthFrame				= "Show info frame for health (<100k hp)",
	MeteorFrame					= "Show info frame for $spell:99849 targets",
	AggroFrame					= "Show info frame for players who have no aggro during $journal:2647"
})

L:SetMiscLocalization({
	East				= "East",
	West				= "West",
	Middle				= "Middle",
	North				= "Melee",
	South				= "Back",
	HealthInfo			= "Under 100k HP",
	HasNoAggro			= "No Aggro",
	MeteorTargets		= "ZOMG Meteors!",--Keep rollin' rollin' rollin' rollin'.
	TransitionEnded1	= "Enough! I will finish this.",--More reliable then adds method.
	TransitionEnded2	= "Sulfuras will be your end.",
	TransitionEnded3	= "Fall to your knees, mortals!  This ends now.",
	Defeat				= "Too soon! ... You have come too soon...",
	Phase4				= "Too soon..."
})

-----------------------
--  Firelands Trash  --
-----------------------
L = DBM:GetModLocalization("FirelandsTrash")

L:SetGeneralLocalization({
	name = "Firelands Trash"
})

----------------
--  Volcanus  --
----------------
L = DBM:GetModLocalization("Volcanus")

L:SetGeneralLocalization({
	name = "Volcanus"
})

L:SetTimerLocalization({
	timerStaffTransition	= "Transition ends"
})

L:SetOptionLocalization({
	timerStaffTransition	= "Show a timer for the phase transition"
})

L:SetMiscLocalization({
	StaffEvent			= "The Branch of Nordrassil reacts violently to %S+ touch!",--Reg expression pull match
	StaffTrees			= "Burning Treants erupt from the ground to aid the Protector!",--Might add a spec warning for this later.
	StaffTransition		= "The fires consuming the Tormented Protector wink out!"
})

-----------------------
--  Nexus Legendary  --
-----------------------
L = DBM:GetModLocalization("NexusLegendary")

L:SetGeneralLocalization({
	name = "Thyrinar"
})
