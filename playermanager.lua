-- Fixed Maniac's Insanity perk
function PlayerManager:damage_absorption()
	local total = 0

	for _, absorption in pairs(self._damage_absorption) do
	total = total + Application:digest_value(absorption, false)
	end

	local peer_id = managers.network:session():local_peer():id()
	total = total + self:get_best_cocaine_damage_absorption(peer_id)
	total = managers.modifiers:modify_value("PlayerManager:GetDamageAbsorption", total)

	return total
end

--Buff Ammo efficiency
function PlayerManager:_on_enter_ammo_efficiency_event()
	if not self._coroutine_mgr:is_running("ammo_efficiency") then
		local weapon_unit = self:equipped_weapon_unit()

		if weapon_unit then
			self._coroutine_mgr:add_coroutine("ammo_efficiency", PlayerAction.AmmoEfficiency, self, self._ammo_efficiency.headshots, self._ammo_efficiency.ammo, Application:time() + self._ammo_efficiency.time)
		end
	end
end

Hooks:PostHook(PlayerManager, "check_skills", "SnPTweaks_check_skills", function (self)
	if self:has_category_upgrade("pistol", "hit_self_heal") then
		self._message_system:register(Message.OnEnemyShot, "SnP_PistolHeal", callback(self, self, "_on_hit_enemy_pistol_heal_event")) --(messgae, uid, func)
	else
		self._message_system:unregister(Message.OnEnemyShot, "SnP_PistolHeal")
	end
	
	if self:has_category_upgrade("player", "fe_armor_regen") then
		self._message_system:register(Message.OnEnemyKilled, "SnP_EnemyKilled_fe", callback(self, self, "_on_kill_enemy_fe")) 
	else
		self._message_system:unregister(Message.OnEnemyKilled, "SnP_EnemyKilled_fe")
	end
	
	if self:has_category_upgrade("player", "dodge_stamina_regen") then
		local stamina_restored = self:upgrade_value("player", "dodge_stamina_regen")
		self._message_system:register(Message.OnPlayerDodge, "dodge_stamina_regen", function ()
			self:player_unit():movement():add_stamina(stamina_restored)
		end)
	else
		self._message_system:unregister(Message.OnPlayerDodge, "dodge_stamina_regen")
	end
	
	if self:has_category_upgrade("player", "dodge_health_regen") then
		self._message_system:register(Message.OnPlayerDodge, "dodge_health_regen", callback(self, self, "_on_dodge_health_regen"))
	else
		self._message_system:unregister(Message.OnPlayerDodge, "dodge_health_regen")
	end
	
	if self:has_category_upgrade("temporary", "dodge_reload_speed") then
		self._message_system:register(Message.OnPlayerDodge, "dodge_reload_speed", function ()
			self:activate_temporary_upgrade("temporary", "dodge_reload_speed")
		end)
	else
		self._message_system:unregister(Message.OnPlayerDodge, "dodge_reload_speed")
	end
end)

--Trigger Happy, new effect
function PlayerManager:_on_hit_enemy_pistol_heal_event(unit, attack_data)
	local attacker_unit = attack_data.attacker_unit
	local variant = attack_data.variant
	local player_dmg = self:player_unit():character_damage()
	
	if attacker_unit == self:player_unit() and variant == "bullet" and self:is_current_weapon_of_category("pistol") then
		self.ph_heal_t = self.ph_heal_t or 0
		local t = Application:time()
		if (t - self.ph_heal_t) > 0.25 then
			self.ph_heal_t = t
			local heal_amt = self:upgrade_value("pistol", "hit_self_heal", 0)
	
			if heal_amt ~= 0 and not player_dmg._dead and not player_dmg._bleed_out then
				player_dmg:restore_health(heal_amt, true, false) --(amt, is_static(affected by reduction if true), health_ratio(percentage max health if true))
			end
		end
	end
end

--Despeado additional pistol crit chance
local old_critical_hit_chance = PlayerManager.critical_hit_chance

function PlayerManager:critical_hit_chance(detection_risk)
	local multiplier = old_critical_hit_chance(self, detection_risk)
	
	if self:has_category_upgrade("pistol", "add_crit") and self:is_current_weapon_of_category("pistol") then
		multiplier = multiplier + self:upgrade_value("pistol", "add_crit", 0)
	end
	
	return multiplier
end

--Dire Need dodge health regen
function PlayerManager:_on_dodge_health_regen()
	local health_restored = self:upgrade_value("player", "dodge_health_regen")
	local dmg = self:player_unit():character_damage()

	if dmg and dmg:get_real_armor() <= 0 then
		dmg:restore_health(health_restored, true)
	end
end

--Fire Trap new skill addition, gain armor on fe kill
function PlayerManager:_on_kill_enemy_fe(equipped_unit, variant, killed_unit)
	local t = Application:time()
	self.fe_kab_t = self.fe_kab_t or 0

	if (variant == "fire" or variant == "explosion") and (t - self.fe_kab_t) > 0.75 then
		self.fe_kab_t = t
		local damage_ext = self:player_unit():character_damage()
		local regen_armor = managers.player:upgrade_value("player", "fe_armor_regen", 0)

		if damage_ext and damage_ext:get_real_armor() < damage_ext:_max_armor() and regen_armor > 0 then
			damage_ext:restore_armor(regen_armor)
		end
	end
end

--Stamina flat addition
local old_stamina_addend = PlayerManager.stamina_addend

function PlayerManager:stamina_addend()
	local add = old_stamina_addend(self)
	
	if self:has_category_upgrade("player", "flat_max_stamina_increase") then
		add = add + self:upgrade_value("player", "flat_max_stamina_increase", 0)
	end
	
	return add
end

--Gambler perk deck buff
Hooks:PreHook(PlayerManager, "activate_temporary_upgrade", "SnP_pre_activate_temporary_upgrade", function(self, category, upgrade)
	if category == "temporary" and upgrade == "loose_ammo_restore_health" and not self:has_activate_temporary_upgrade("temporary", "loose_ammo_restore_health") then
		local upgrade_value = self:upgrade_value(category, upgrade)
		if upgrade_value ~= 0 and self:player_unit() and not self:player_unit():character_damage():dead() then
				local damage_ext = self:player_unit():character_damage()
				if damage_ext then
					damage_ext:_calc_health_damage({damage = 1, variant = "melee"})
			end
		end
	end
end)

--armor multiplier based on teammates dead
local old_body_armor_skill_multiplier = PlayerManager.body_armor_skill_multiplier

function PlayerManager:body_armor_skill_multiplier(...)
	local Ans = old_body_armor_skill_multiplier(self, ...)
	if self:has_category_upgrade("player", "armor_double_for_suckers") and managers.trade and managers.trade:num_in_trade_queue() > 0 then
		Ans = Ans * math.pow(2, managers.trade:num_in_trade_queue())
	end
	
	return Ans
end

--Stockholm syndrom dodge near hostages
function PlayerManager:is_less_targeted()
	if not self:player_unit() then
		return
	end
	for u_key, u_data in pairs(managers.enemy:all_civilians()) do
		if u_data.unit then
			local dis = math.abs(mvector3.distance(u_data.unit:position(), self:player_unit():position()))
			if dis < 300 then
				return true
			end
		end
	end
	return
end
	
local old_skill_dodge_chance = PlayerManager.skill_dodge_chance

function PlayerManager:skill_dodge_chance(...)
	local chance = old_skill_dodge_chance(self, ...)
	if self:is_less_targeted() and self:has_category_upgrade("player", "hostage_proximity_dodge") then	
		chance = chance + self:upgrade_value("player", "hostage_proximity_dodge", 0)
	end
	
	return chance
end