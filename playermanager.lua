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