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

--Trigger Happy, new effect
Hooks:PostHook(PlayerManager, "check_skills", "SnPTweaks_check_skills", function (self)
	if self:has_category_upgrade("pistol", "hit_self_heal") then
		self._message_system:register(Message.OnEnemyShot, "SnP_PistolHeal", callback(self, self, "_on_hit_enemy_pistol_heal_event")) --(messgae, uid, func)
	else
		self._message_system:unregister(Message.OnEnemyShot, "trigger_happy")
	end
end)

function PlayerManager:_on_hit_enemy_pistol_heal_event(unit, attack_data)
	local attacker_unit = attack_data.attacker_unit
	local variant = attack_data.variant
	local player_dmg = managers.player:player_unit():character_damage()

	if attacker_unit == self:player_unit() and variant == "bullet" and self:is_current_weapon_of_category("pistol") then
		local heal_amt = self:upgrade_value("pistol", "hit_self_heal", 0)

		if heal_amt ~= 0 and not player_dmg._dead and not player_dmg._bleed_out then
			player_dmg:restore_health(heal_amt, true, false) --(amt, is_static(affected by reduction if true), health_ratio(percentage max health if true))
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