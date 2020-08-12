local old_swap_speed_multiplier = PlayerStandard._get_swap_speed_multiplier

function PlayerStandard:_get_swap_speed_multiplier()
	local multiplier = old_swap_speed_multiplier(self)
	
	--Dirty hack using unused variables
	if managers.player:has_category_upgrade("shotgun", "consume_no_ammo_chance") then
		multiplier = multiplier + 0.15
	end
	
	return multiplier
end

--[[Set enemies on fire with melee
--INCOMPATIBLE WITH Full Speed Swarm, RIP
Hooks:PreHook(PlayerStandard, "_do_action_melee", "SnP_do_action_melee", function(self)
	if true then
		local t = managers.player:player_timer():time()
		local _col_ray = self:_calc_melee_hit_ray(t, 20)
		if _col_ray and alive(_col_ray.unit) then
			local _pos = _col_ray.hit_position
			if _pos then
				World:effect_manager():spawn({
					effect = Idstring("effects/payday2/particles/explosions/flamethrower"),
					position = _pos,
					normal = math.UP
				})
			
				--enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, user_unit, is_molotov
				managers.fire:add_doted_enemy(_col_ray.unit, TimerManager:game():time(), managers.blackmarket:equipped_melee_weapon(), 5, 10, managers.player:player_unit(), false)
			end
		end
	end
end)
]]--