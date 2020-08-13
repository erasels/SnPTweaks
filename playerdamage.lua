--Credits to: S E K T O R, with special thanks to u/Snh20, and u/Kamikaze94 (http://steamcommunity.com/id/lk9t9)
--https://modworkshop.net/mydownloads.php?action=view_down&did=15778

function PlayerDamage:consume_armor_stored_health(amount)
	local health_restored = 0
	if self._armor_stored_health and not self._dead and not self._bleed_out and not self._check_berserker_done then
		local health_before = self:get_real_health()
		self:change_health(self._armor_stored_health)
			health_restored = self:get_real_health() - health_before
	end
	
	self._armor_stored_health = math.max(self._armor_stored_health - health_restored, 0)
	
	if managers.hud then
		managers.hud:set_stored_health(self._armor_stored_health / self:_max_health())
	end
--self:clear_armor_stored_health()
end

--Ignite enemies on armor break
Hooks:PostHook(PlayerDamage, "_regenerate_armor", "SnP_post_regenerate_armor", function(self)
	if managers.player:has_category_upgrade("player", "armor_break_ignition") then
		self._armor_break_ignition_capper = nil
	end
end)

Hooks:PreHook(PlayerDamage, "_on_damage_event", "SnP_pre_on_damage_event", function(self)
	if not managers.player:has_category_upgrade("player", "armor_break_ignition") or self._armor_break_ignition_capper then
		return
	end
	
	local weapon_unit = managers.player:equipped_weapon_unit()
	if not weapon_unit then
		return
	end
	
	local armor_broken = self:_max_armor() > 0 and self:get_real_armor() <= 0
	if not armor_broken then
		return
	end
	
	local units = World:find_units("sphere", self._unit:position(), 1000, managers.slot:get_mask("enemies"))
	if type(units) ~= "table" then
		return
	end
	for _, funit in ipairs(units) do
		if funit and funit:character_damage() and funit:character_damage().damage_fire then
			local fdmg = self:_max_armor() or 1
			fdmg = math.max(fdmg / 10, 1)
			funit:character_damage():damage_fire({
				damage = fdmg,
				attacker_unit = self._unit,
				weapon_unit = weapon_unit,
				is_molotov = "fir_com",
				is_fire_dot_damage = false,
				variant = "fire",
				fire_dot_data = {
						dot_trigger_chance = 100,
						dot_damage = 15,
						dot_length = 3,
						dot_trigger_max_distance = 3000,
						dot_tick_period = 0.5
				},
				col_ray = {
					position = funit:position(),
					hit_position = funit:position(),
					ray = Vector3(0, 0, -1)
				}
			})
			self._armor_break_ignition_capper = true
		end
	end
end)