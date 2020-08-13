--Regen stamina on dealing fire damage
Hooks:PreHook(CopDamage, "damage_fire", "SnP_pre_on_fire_damage", function(self, attack_data)
	if self._dead or self._invulnerable then
		return
	end
	if attack_data.attacker_unit and attack_data.attacker_unit == managers.player:local_player() then
		if managers.player:has_category_upgrade("player", "player_fire_stamina_regen") then
			attack_data.attacker_unit:movement():add_stamina(managers.player:upgrade_value("player", "fire_stamina_regen"))
		end			
	end
end)

--Anything can critically hit
local old_can_be_critical = CopDamage.can_be_critical

function CopDamage:can_be_critical(...)
	if managers.player:has_category_upgrade("player", "anything_can_crit") then
		return true
	end
	return old_can_be_critical(self, ...)
end