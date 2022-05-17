if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local L

--------------
-- Argaloth --
--------------
L= DBM:GetModLocalization(139)

L:SetOptionLocalization({
	SetIconOnConsuming		= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(88954)
})

---------------
-- Occu'thar --
---------------
L= DBM:GetModLocalization(140)

-------------------------------
-- Alizabal, Señora del odio --
-------------------------------
L= DBM:GetModLocalization(339)

L:SetTimerLocalization({
	TimerFirstSpecial		= "Primera facultad especial"
})

L:SetOptionLocalization({
	TimerFirstSpecial		= "Mostrar temporizador para la primera facultad especial ($spell:105067 o $spell:104936) tras $spell:105738"
})
