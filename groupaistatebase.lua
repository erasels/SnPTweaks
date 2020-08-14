--Appropriated from Dr. Newbie's Nepgear LAS boost mod
Hooks:PreHook(GroupAIStateBase, "report_criminal_downed", "SnP_pre_report_criminal_down", function(self, r_unit)
	if (r_unit:interaction() and r_unit:interaction():active()) or (r_unit:character_damage() and (r_unit:character_damage():need_revive() or r_unit:character_damage():arrested())) then
		if managers.player and managers.player:has_category_upgrade("player", "replenish_on_teammate_down") and managers.player:local_player() then
			local ply_m = managers.player
			local ply_u = ply_m:local_player()
			if r_unit ~= ply_u then
				ply_u:character_damage():band_aid_health()
				ply_u:character_damage():_regenerate_armor()
			end
		end
	end
end)