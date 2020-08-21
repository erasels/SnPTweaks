Hooks:PostHook(NewRaycastWeaponBase, "_update_stats_values", "SureFireAce_AllPierce", function(self)

	--log(tostring(managers.player:has_category_upgrade("player", "ap_bullets")))
	-- weapons excluding shotguns will penetrate shields, walls and armor if surefire is aced. Enemies if Body Expertise is active
	if self:weapon_tweak_data().category ~= "shotgun" then
		if managers.player:has_category_upgrade("player", "ap_bullets") then
			self._can_shoot_through_shield = true
			self._can_shoot_through_wall = true
			self._armor_piercing_chance = 1
		end
		
		if managers.player:has_category_upgrade("weapon", "automatic_head_shot_add") then
			self._can_shoot_through_enemy = true
		end
	end

end)

--All weapons are affected by Body Expertise
function NewRaycastWeaponBase:get_add_head_shot_mul()
	return managers.player:upgrade_value("weapon", "automatic_head_shot_add", nil)
end

--Reload speed multipliers
local old_convert_add_to_mul = NewRaycastWeaponBase._convert_add_to_mul
function NewRaycastWeaponBase:_convert_add_to_mul(multiplier, ...)
	if debug.getinfo(2).func == NewRaycastWeaponBase.reload_speed_multiplier then
		--Dodge reload speed inc
		if managers.player:has_activate_temporary_upgrade("temporary", "dodge_reload_speed") then
			multiplier = multiplier + 1 - managers.player:temporary_upgrade_value("temporary", "dodge_reload_speed", 1)
		end
		
		--Agressive Reload
		if managers.player:has_category_upgrade("weapon", "all_reload_speed_increase") then
			multiplier = multiplier + managers.player:upgrade_value("weapon", "all_reload_speed_increase", 0)
		end
		
		--SnPBulletstorm2
		if managers.player:has_category_upgrade("shotgun", "melee_knockdown_mul") then
			multiplier = multiplier + 0.2
		end
	end
	return old_convert_add_to_mul(self, multiplier, ...)
end

local old_reload_speed_multiplier = NewRaycastWeaponBase.reload_speed_multiplier

--Fire speed multipliers
function NewRaycastWeaponBase:fire_rate_multiplier()
	local rof = self._fire_rate_multiplier

	if managers.player:has_category_upgrade("shotgun", "consume_no_ammo_chance") then
		rof = rof + 0.15
	end
	
	return rof
end