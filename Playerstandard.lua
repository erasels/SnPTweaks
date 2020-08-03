local old_swap_speed_multiplier = PlayerStandard._get_swap_speed_multiplier

function PlayerStandard:_get_swap_speed_multiplier()
	local multiplier = old_swap_speed_multiplier(self)
	
	--Dirty hack using unused variables
	if managers.player:has_category_upgrade("shotgun", "consume_no_ammo_chance") then
		multiplier = multiplier + 0.15
	end
	
	return multiplier
end