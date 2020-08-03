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