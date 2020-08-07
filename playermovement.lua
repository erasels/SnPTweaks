--Combat egineering, grenade refill on stamina loss
local _subtracted_stamina_throwable

Hooks:PostHook(PlayerMovement, "init", "SnPTweaks_pm_init", function (self, unit)
	_subtracted_stamina_throwable = 0
end)

Hooks:PreHook(PlayerMovement, "subtract_stamina", "SnPTweaks_pre_sub_stamina", function (self, value)
	if managers.player:has_category_upgrade("player", "stamina_ammo_refill_throwable") then
		_subtracted_stamina_throwable = (_subtracted_stamina_throwable or 0) + math.abs(value)
		local stamina_needed = managers.player:upgrade_value("player", "stamina_ammo_refill_throwable", 999)

		if stamina_needed < _subtracted_stamina_throwable then
			managers.player:add_grenade_amount(1, true)

			_subtracted_stamina_throwable = _subtracted_stamina_throwable - stamina_needed
		end
	end
end)