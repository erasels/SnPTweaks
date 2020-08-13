Hooks:PostHook(GrenadeLauncherBase, "replenish", "SnP_post_GLB_replenish", function(self)
	if managers.player:has_category_upgrade("player", "projectiles_from_ammo") then
		if type(self._ammo_pickup) == "table" and type(self._ammo_pickup[1]) == "number" and type(self._ammo_pickup[2]) == "number" then
			if self._ammo_pickup[2] < 0.1 then
				self._ammo_pickup = {1, 1}
			elseif self._ammo_pickup[2] < 0.5 then
				self._ammo_pickup = {2, 2}
			else
				self._ammo_pickup = {3, 3}
			end
		end
	end
end)