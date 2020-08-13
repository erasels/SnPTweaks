local old_addFire = FireManager.add_doted_enemy

function FireManager:add_doted_enemy(enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, user_unit, is_molotov)
	local ply = managers.player:player_unit()
	
	if user_unit == ply and enemy_unit ~= ply then 
		if managers.player:has_category_upgrade("weapon", "stronger_burn") then
			dot_damage = dot_damage * managers.player:upgrade_value("weapon", "stronger_burn", 1)
		end
		
		if managers.player:has_category_upgrade("weapon", "tank_burn") and string.find(enemy_unit:base()._tweak_table, "tank") then
			dot_damage = dot_damage * managers.player:upgrade_value("weapon", "tank_burn", 1)
		end
		
		if managers.player:has_category_upgrade("weapon", "longer_burn") then
			dot_length = dot_length * managers.player:upgrade_value("weapon", "longer_burn", 1)
		end
	end
	
	old_addFire(self, enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, user_unit, is_molotov)
end