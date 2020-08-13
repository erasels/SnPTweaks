local old_swap_speed_multiplier = PlayerStandard._get_swap_speed_multiplier

function PlayerStandard:_get_swap_speed_multiplier()
	local multiplier = old_swap_speed_multiplier(self)
	
	--Dirty hack using unused variables
	if managers.player:has_category_upgrade("shotgun", "consume_no_ammo_chance") then
		multiplier = multiplier + 0.15
	end
	
	return multiplier
end

--Running into enemies causes a small explosion to spawn dealing damage based on current stamina
--Thanks to Dr. Newbie Astolfo LAS for the base
Hooks:PostHook(PlayerStandard, "_update_movement", "SnP_post_upd_mov", function(self, t)
	if self._unit and alive(self._unit) and self:running() and self._unit.oobb and managers.player:has_category_upgrade("player", "explosive_ram") and self._ext_movement:stamina() > 5 then
		local oobb = self._unit:oobb()
		if oobb then
			local slotmask = managers.slot:get_mask("flesh")
			local units = World:find_units("intersect", "obb", oobb:center(), oobb:x(), oobb:y(), oobb:z(), slotmask)
			local dir_hit = self._ext_movement:m_head_rot():y()
			mvector3.set_z(dir_hit, math.abs(dir_hit.z)*2*math.random())
			for _, unit in pairs(units) do
				if unit:in_slot(managers.slot:get_mask("all_criminals")) then
				
				elseif unit:in_slot(managers.slot:get_mask("civilians")) then
				
				elseif unit:character_damage() and not unit:character_damage():dead() then
					unit:base()._get_succ_t = unit:base()._get_succ_t or 0
					if t > unit:base()._get_succ_t then
						self._ext_movement:_change_stamina(-(self._ext_movement:_max_stamina()*0.25))
						unit:base()._get_succ_t = t + 1
						managers.explosion:play_sound_and_effects(
							unit:movement():m_head_pos(),
							math.UP,
							100,
							{
								sound_event = "grenade_explode",
								effect = "effects/payday2/particles/explosions/grenade_explosion",
								camera_shake_max_mul = 2,
								sound_muffle_effect = true,
								feedback_range = 200
							}
						)
						managers.explosion:detect_and_give_dmg({
							curve_pow = 5,
							player_damage = 0,
							hit_pos = unit:movement():m_head_pos(),
							range = 100,
							collision_slotmask = managers.slot:get_mask("explosion_targets"),
							damage = self._ext_movement:stamina() * 2,
							no_raycast_check_characters = false
						})
					end
				end
			end
		end
	end
end)


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