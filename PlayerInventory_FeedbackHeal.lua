Hooks:PostHook(PlayerInventory, "_feedback_heal_on_kill", "Feedback_Armor_On_Kill", function(self)
	local unit = managers.player:player_unit()
	
	if alive(self._unit) and unit and self._jammer_data then
		unit:character_damage():change_armor(self._jammer_data.heal)
	end
end)