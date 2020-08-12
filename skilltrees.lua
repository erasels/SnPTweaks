--Credits to	KurtCobain47 https://www.unknowncheats.me/forum/payday-2-a/264319-merging-specialized-killing-professional-u173.html
--					Mister_Squiggles https://modworkshop.net/mydownloads.php?action=view_down&did=20054

local skill_data = SkillTreeTweakData.init

function SkillTreeTweakData:init(tweak_data)
	skill_data(self, tweak_data)

	--"Duck and Cover"
	self.skills.sprinter = {
		["name_id"] = "menu_sprinter_beta",
		["desc_id"] = "menu_sprinter_beta_desc",
		["icon_xy"] = {10, 5},
		-- Basic
		[1] = {
			upgrades = {
				"player_stamina_regen_timer_multiplier",
				"player_stamina_regen_multiplier",
				"player_run_speed_multiplier"
			},
			cost = self.costs.default
		},
		-- Aced
		[2] = {
			upgrades = {
				"player_run_dodge_chance",
				"player_on_zipline_dodge_chance",
				"player_crouch_dodge_chance_1" -- The skill that gives dodge chance for crouching
			},
			cost = self.costs.pro
		}
	}
	
	--Up You Go
	self.skills.up_you_go = {
		["name_id"] = "menu_up_you_go_beta",
		["desc_id"] = "menu_up_you_go_beta_desc",
		["icon_xy"] = {11, 4},
		[1] = {
			upgrades = {
				"player_revived_damage_resist_1",
				"player_temp_increased_movement_speed_1" --Gives 30% move speed
			},
			cost = self.costs.hightier
		},
		[2] = {
			upgrades = {
				"player_revived_damage_resist_2" -- gives more revive dmg res
			},
			cost = self.costs.hightierpro
		}
	}
	
	--Running From Death
	self.skills.running_from_death = {
		["name_id"] = "menu_running_from_death_beta",
		["desc_id"] = "menu_running_from_death_beta_desc",
		["icon_xy"] = {11, 3},
		[1] = {
			upgrades = {
				"player_revived_health_regain_1", --get more health on revive
				"player_temp_swap_weapon_faster_1",
				"player_temp_reload_weapon_faster_1"
			},
			cost = self.costs.hightier
		},
		[2] = {
			upgrades = {
				"player_revived_health_regain_2", --even more health on revive
				"player_temp_swap_weapon_faster_2", --longer version of the previous upgrades
				"player_temp_reload_weapon_faster_2"
			},
			cost = self.costs.hightierpro
		}
	}
	
	--Resillience
	self.skills.oppressor = {
		["name_id"] = "menu_oppressor_beta",
		["desc_id"] = "menu_oppressor_beta_desc",
		["icon_xy"] = {2, 12},
		[1] = {
			upgrades = {
				"player_armor_regen_time_mul_1",
				"player_flashbang_multiplier_1" --grants minor flashbang reduction
			},
			cost = self.costs.default
		},
		[2] = {
			upgrades = {
				"player_flashbang_multiplier_2",
				"player_damage_shake_multiplier" --Gives screen shake reduction
			},
			cost = self.costs.pro
		}
	}
	
	--Frenzy
	self.skills.frenzy = {
		{
			upgrades = {
				"player_healing_reduction_1",
				"player_health_damage_reduction_1",
				"player_max_health_reduction_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_healing_reduction_2",
				"player_health_damage_reduction_2",
				"player_max_health_reduction_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_frenzy",
		desc_id = "menu_frenzy_desc",
		icon_xy = {
			11,
			8
		}
	}
	
	--Scavenger
	self.skills.scavenging = {
		{
			upgrades = {"player_increased_pickup_area_1"},
			upgrades = {"player_double_drop_1"},
			cost = self.costs.hightier
		},
		{
			upgrades = {"player_double_drop_2"},
			cost = self.costs.hightierpro
		},
		name_id = "menu_scavenging_beta",
		desc_id = "menu_scavenging_beta_desc",
		icon_xy = {
			8,
			11
		}
	}
	
	--Saw Massacre
	self.skills.carbon_blade = {
		{
			upgrades = {
				"saw_enemy_slicer",
				"saw_panic_when_kill_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"saw_ignore_shields_1",
				"saw_panic_when_kill_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_carbon_blade_beta",
		desc_id = "menu_carbon_blade_beta_desc",
		icon_xy = {
			0,
			2
		}
	}

	--Marksman
	self.skills.sharpshooter = {
		{
			upgrades = {"weapon_single_spread_index_addend",
								"team_pistol_recoil_index_addend",
								"team_pistol_suppression_recoil_index_addend"},
			cost = self.costs.default
		},
		{
			upgrades = {"single_shot_accuracy_inc_1",
								"team_weapon_recoil_index_addend",
								"team_weapon_suppression_recoil_index_addend"},
			cost = self.costs.pro
		},
		name_id = "menu_sharpshooter_beta",
		desc_id = "menu_sharpshooter_beta_desc",
		icon_xy = {
			8,
			1
		}
	}-- adds crew bonuses from Leadership into this skill
	
	--Iron Man
	self.skills.juggernaut = {
		{
			upgrades = {"player_armor_multiplier"},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"body_armor6",
				"player_armor_multiplier_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_juggernaut_beta",
		desc_id = "menu_juggernaut_beta_desc",
		icon_xy = {
			3,
			1
		}
	}
	
	--Portable Saw
	self.skills.portable_saw = {
		{
			upgrades = {
				"saw_secondary",
				"saw_extra_ammo_multiplier"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"saw_extra_ammo_multiplier_2",
				"player_saw_speed_multiplier_2",
				"saw_lock_damage_multiplier_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_portable_saw_beta",
		desc_id = "menu_portable_saw_beta_desc",
		icon_xy = {
			0,
			1
		}
	}
	
	--Bulletstorm
	self.skills.ammo_reservoir = {
		{
			upgrades = {"SnP_Bulletstorm_1"},
			cost = self.costs.default
		},
		{
			upgrades = {"SnP_Bulletstorm_2"},
			cost = self.costs.pro
		},
		name_id = "menu_ammo_reservoir_beta",
		desc_id = "menu_ammo_reservoir_beta_desc",
		icon_xy = {
			4,
			5
		}
	}
	
	--Extra Lead
	self.skills.ammo_2x = {
		{
			upgrades = {
				"ammo_bag_quantity",
				"temporary_no_ammo_cost_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"ammo_bag_ammo_increase1",
				"temporary_no_ammo_cost_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_ammo_2x_beta",
		desc_id = "menu_ammo_2x_beta_desc",
		icon_xy = {
			7,
			1
		}
	}
	
--Ghost/Silent Killer skill switches
--Switch Professional to ace, High value target (hitman) to T2, Unseen Strike as Sneaky bastard alternative
	
	--Unseen Strike (switched pos with HVT)
	self.skills.hitman = {
		{
			upgrades = {
				"player_unseen_increased_crit_chance_1",
				"player_unseen_temp_increased_crit_chance_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_unseen_increased_crit_chance_2",
				"player_unseen_temp_increased_crit_chance_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_unseen_strike_beta",
		desc_id = "menu_unseen_strike_beta_desc",
		icon_xy = {
			10,
			11
		}
	}
	
	--The Professional (switched pos with unseen Strike)
	self.skills.unseen_strike = {
		{
			upgrades = {
				"weapon_silencer_recoil_index_addend",
				"weapon_silencer_enter_steelsight_speed_multiplier",
				"weapon_silencer_spread_index_addend", -- Gives 12 accuraccy with silencers
				"weapon_silencer_damage_multiplier_1", -- Gives 35% more damage with silencers
				"weapon_silencer_armor_piercing_chance_1" -- Gives piercing with silencers (50%)
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"weapon_silencer_damage_multiplier_2", -- Gives 85% more damage with silencers
				"weapon_silencer_armor_piercing_chance_2" -- Gives piercing with silencers (100%)
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_silence_expert_beta",
		desc_id = "menu_silence_expert_beta_desc",
		icon_xy = {
			4, 
			4
		},
	}
	
	--High Value Target (switched pos with The Professional)
	self.skills.silence_expert = {
		{
			upgrades = {
				"weapon_steelsight_highlight_specials",
				"player_marked_enemy_extra_damage"
				},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_marked_inc_dmg_distance_1",
				"player_mark_enemy_time_multiplier",
				"player_marked_distance_mul"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_spotter_teamwork_beta",
		desc_id = "menu_spotter_teamwork_beta_desc",
		icon_xy = {
			8,
			2
		}
	}
	
--Fugitive Pistol tree skill reworks
--Trigger Happy rework, new skill
	self.skills.trigger_happy = {
		{
			upgrades = {
				"pistol_hit_self_heal_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"pistol_hit_self_heal_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_trigger_happy_beta",
		desc_id = "menu_trigger_happy_beta_desc",
		icon_xy = {
			11,
			2
		}
	}
	
	--Desperado
	self.skills.expert_handling = {
		{
			upgrades = {
			"pistol_stacked_accuracy_bonus_1",
			"pistol_add_crit_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
			"pistol_fire_rate_multiplier",
			"pistol_stacking_hit_damage_multiplier_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_expert_handling",
		desc_id = "menu_expert_handling_desc",
		icon_xy = {
			11,
			1
		}
	}-- add fire rate mult as ace skill instead of reload speed and add trigger happy to ace
	
	--Gun Nut
	self.skills.dance_instructor = {
		{
			upgrades = {"pistol_magazine_capacity_inc_1"},
			cost = self.costs.hightier
		},
		{
			upgrades = {"pistol_reload_speed_multiplier"},
			cost = self.costs.hightierpro
		},
		name_id = "menu_dance_instructor",
		desc_id = "menu_dance_instructor_desc",
		icon_xy = {
			11,
			0
		}
	} -- add reload speed mult as ace isntead of fire rate mult
	
	--More Firepower
	self.skills.more_fire_power = {
		{
			upgrades = {
				"shape_charge_quantity_increase_1",
				"trip_mine_quantity_increase_1",
				"weapon_stronger_burn_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shape_charge_quantity_increase_2",
				"trip_mine_quantity_increase_2",
				"weapon_tank_burn_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_more_fire_power",
		desc_id = "menu_more_fire_power_desc",
		icon_xy = {
			9,
			7
		}
	}
	
	--Combat Engineering
	self.skills.combat_engineering = {
		{
			upgrades = {
				"trip_mine_explosion_size_multiplier_1",
				"player_stamina_ammo_refill_throwable_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"trip_mine_damage_multiplier_1",
				"player_stamina_ammo_refill_single",
				"player_stamina_ammo_refill_auto"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_combat_engineering",
		desc_id = "menu_combat_engineering_desc",
		icon_xy = {
			1,
			5
		}
	}
	
	--Fire Trap
	self.skills.fire_trap = {
		{
			upgrades = {
				"trip_mine_fire_trap_1",
				"player_fe_armor_regen_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"trip_mine_fire_trap_2",
				"player_fe_armor_regen_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_fire_trap_beta",
		desc_id = "menu_fire_trap_beta_desc",
		icon_xy = {
			9,
			9
		}
	}
	
	--Dire Need (add dodge health regen)
	self.skills.dire_need = {
		{
			upgrades = {
				"player_armor_depleted_stagger_shot_1",
				"player_dodge_health_regen_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_armor_depleted_stagger_shot_2",
				"player_dodge_health_regen_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_dire_need_beta",
		desc_id = "menu_dire_need_beta_desc",
		icon_xy = {
			10,
			8
		}
	}
	
	--Shockproof
	self.skills.insulation = {
		{
			upgrades = {
				"player_taser_malfunction",
				"temporary_dodge_reload_speed_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_taser_self_shock",
				"player_escape_taser_1",
				"temporary_dodge_reload_speed_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_insulation_beta",
		desc_id = "menu_insulation_beta_desc",
		icon_xy = {
			3,
			5
		}
	}
	
	--Second wind
	self.skills.scavenger = {
		{
			upgrades = {
				"temporary_damage_speed_multiplier"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"player_team_damage_speed_multiplier_send",
				"player_dodge_stamina_regen"
			},
			cost = self.costs.pro
		},
		name_id = "menu_scavenger_beta",
		desc_id = "menu_scavenger_beta_desc",
		icon_xy = {
			10,
			9
		}
	}
	
	--Close By
	self.skills.close_by = {
		{
			upgrades = {
				"shotgun_hip_run_and_shoot_1",
				"shotgun_extra_ammo_multiplier"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shotgun_hip_rate_of_fire_1",
				"shotgun_magazine_capacity_inc_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_close_by_beta",
		desc_id = "menu_close_by_beta_desc",
		icon_xy = {
			8,
			6
		}
	}
	
	self.skills.hardware_expert = {
		{
			upgrades = {
				"player_drill_fix_interaction_speed_multiplier",
				"player_trip_mine_deploy_time_multiplier_2",
				"player_drill_alert",
				"player_silent_drill"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"player_drill_autorepair_1",
				"player_resist_firing_tased"
			},
			cost = self.costs.pro
		},
		name_id = "menu_hardware_expert_beta",
		desc_id = "menu_hardware_expert_beta_desc",
		icon_xy = {
			9,
			6
		}
	}
	
	--Overkill
	self.skills.overkill = {
		{
			upgrades = {
				"player_overkill_damage_multiplier",
				"saw_secondary"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_overkill_all_weapons",
				"weapon_swap_speed_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_overkill_beta",
		desc_id = "menu_overkill_beta_desc",
		icon_xy = {
			3,
			2
		}
	}
	
	--Pumping Iron
	self.skills.steroids = {
		{
			upgrades = {
				"player_non_special_melee_multiplier",
				"player_melee_damage_multiplier"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"player_explosive_ram"
			},
			cost = self.costs.pro
		},
		name_id = "menu_steroids_beta",
		desc_id = "menu_steroids_beta_desc",
		icon_xy = {
			1,
			3
		}
	}
	
	--PERKS-----------------------------------------------------------------------------------------------
	--Workaround
	local deck2 = {
		upgrades = {
			"weapon_passive_headshot_damage_multiplier"
		},
		cost = 300,
		icon_xy = {1, 0},
		name_id = "menu_deckall_2",
		desc_id = "menu_deckall_2_desc"
	}
	local deck4 = {
		upgrades = {
			"passive_player_xp_multiplier",
			"player_passive_suspicion_bonus",
			"player_passive_armor_movement_penalty_multiplier"
		},
		cost = 600,
		icon_xy = {3, 0},
		name_id = "menu_deckall_4",
		desc_id = "menu_deckall_4_desc"
	}
	local deck6 = {
		upgrades = {
			"armor_kit",
			"player_pick_up_ammo_multiplier"
		},
		cost = 1600,
		icon_xy = {5, 0},
		name_id = "menu_deckall_6",
		desc_id = "menu_deckall_6_desc"
	}
	local deck8 = {
		upgrades = {
			"weapon_passive_damage_multiplier",
			"passive_doctor_bag_interaction_speed_multiplier"
		},
		cost = 3200,
		icon_xy = {7, 0},
		name_id = "menu_deckall_8",
		desc_id = "menu_deckall_8_desc"
	}
	
	
	
	--Ex-President (fuses Biker with ex-president)
	local new_exprez = {
		name_id = "menu_st_spec_13",
		desc_id = "menu_st_spec_13_desc",
		{
			cost = 200,
			desc_id = "menu_deck13_1_desc",
			name_id = "menu_deck13_1",
			upgrades = {
				"player_wild_health_amount_1",
				"player_wild_armor_amount_1",
				"player_armor_health_store_amount_1" --Exprez
			},
			icon_xy = {
				3,
				7
			}
		},
		deck2,
		{
			cost = 400,
			desc_id = "menu_deck13_3_desc",
			name_id = "menu_deck13_3",
			upgrades = {
				"player_less_health_wild_armor_1",
				"player_armor_health_store_amount_2", --exprez
				"player_passive_health_multiplier_1" --10% more health
			},
			icon_xy = {
				4,
				7
			}
		},
		deck4,
		{
			cost = 1000,
			desc_id = "menu_deck13_5_desc",
			name_id = "menu_deck13_5",
			upgrades = {
				"player_less_health_wild_cooldown_1",
				"player_armor_max_health_store_multiplier",--exprez
				"player_passive_health_multiplier_2",--another 10% more health
				"player_passive_dodge_chance_1"--15% dodge chance
			},
			icon_xy = {
				5,
				7
			}
		},
		deck6,
		{
			cost = 2400,
			desc_id = "menu_deck13_7_desc",
			name_id = "menu_deck13_7",
			upgrades = {
				"player_less_armor_wild_health_1",
				"player_armor_health_store_amount_3",--exprez
				"player_passive_health_multiplier_3" --more health
			},
			icon_xy = {
				6,
				7
			}
		},
		deck8,
		{
			cost = 4000,
			desc_id = "menu_deck13_9_desc",
			name_id = "menu_deck13_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"player_less_armor_wild_cooldown_1",
				"player_kill_change_regenerate_speed" --exprez
			},
			icon_xy = {
				7,
				7
			}
		}
	}
	
	self.specializations[13] = new_exprez
	
	--Muscle (Combine muscle and armorer for Beastmode tank)
	local new_muscle = {
		desc_id = "menu_st_spec_2_desc",
		name_id = "menu_st_spec_2",
		{
			cost = 200,
			desc_id = "menu_deck2_1_desc",
			name_id = "menu_deck2_1",
			upgrades = {
				"player_passive_health_multiplier_1",
				"player_tier_armor_multiplier_1", --arm
				"player_tier_armor_multiplier_2" --arm
			},
			icon_xy = {
				0,
				0
			}
		},
		deck2,
		{
			cost = 400,
			desc_id = "menu_deck2_3_desc",
			name_id = "menu_deck2_3",
			upgrades = {
				"player_passive_health_multiplier_2",
				"player_uncover_multiplier",
				"player_tier_armor_multiplier_3" --arm
			},
			icon_xy = {
				1,
				1
			}
		},
		deck4,
		{
			cost = 1000,
			desc_id = "menu_deck2_5_desc",
			name_id = "menu_deck2_5",
			upgrades = {
				"player_passive_health_multiplier_3",
				"player_tier_armor_multiplier_4" --arm
			},
			icon_xy = {
				2,
				1
			}
		},
		deck6,
		{
			cost = 2400,
			desc_id = "menu_deck2_7_desc",
			name_id = "menu_deck2_7",
			upgrades = {
				"player_panic_suppression",
				"player_armor_regen_timer_multiplier_passive", --arm
				"temporary_armor_break_invulnerable_1" --arm
			},
			icon_xy = {
				3,
				1
			}
		},
		deck8,
		{
			cost = 4000,
			desc_id = "menu_deck2_9_desc",
			name_id = "menu_deck2_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"player_passive_health_multiplier_4",
				"player_passive_health_regen",
				"player_tier_armor_multiplier_5", --arm
				"player_tier_armor_multiplier_6" --arm
			},
			icon_xy = {
				4,
				1
			}
		}
	}
	
	self.specializations[2] = new_muscle
	
	--Rogue (add the akimbo buffs because why not)
	local new_rogue = {
		desc_id = "menu_st_spec_4_desc",
		name_id = "menu_st_spec_4",
		{
			cost = 200,
			desc_id = "menu_deck4_1_desc",
			name_id = "menu_deck4_1",
			upgrades = {"player_passive_dodge_chance_1"},
			icon_xy = {
				1,
				2
			}
		},
		deck2,
		{
			cost = 400,
			desc_id = "menu_deck4_3_desc",
			name_id = "menu_deck4_3",
			upgrades = {"player_camouflage_multiplier"},
			icon_xy = {
				4,
				2
			}
		},
		deck4,
		{
			cost = 1000,
			desc_id = "menu_deck4_5_desc",
			name_id = "menu_deck4_5",
			upgrades = {
				"player_passive_dodge_chance_2",
				"player_stand_still_crouch_camouflage_bonus_1" --burg
			},
			icon_xy = {
				2,
				2
			}
		},
		deck6,
		{
			cost = 2400,
			desc_id = "menu_deck4_7_desc",
			name_id = "menu_deck4_7",
			upgrades = {
				"player_passive_dodge_chance_3",
				"akimbo_recoil_index_addend_4", --Hitman
				"akimbo_extra_ammo_multiplier_2" --Hitman
			},
			icon_xy = {
				3,
				2
			}
		},
		deck8,
		{
			cost = 4000,
			desc_id = "menu_deck4_9_desc",
			name_id = "menu_deck4_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"weapon_passive_armor_piercing_chance",
				"weapon_passive_swap_speed_multiplier_1"
			},
			icon_xy = {
				5,
				2
			}
		}
	}
	
	self.specializations[4] = new_rogue
	
	--Infiltrator (ads some of Yakuza effects)
	local new_infiltrator = {
		{
			cost = 200,
			desc_id = "menu_deck8_7_desc",
			name_id = "menu_deck8_7",
			upgrades = {
				"player_damage_dampener_outnumbered_strong",
				"melee_stacking_hit_damage_multiplier_1",
				"melee_stacking_hit_expire_t"
			},
			icon_xy = {
				6,
				4
			}
		},
		deck2,
		{
			cost = 400,
			desc_id = "menu_deck8_1_desc",
			name_id = "menu_deck8_1",
			upgrades = {
				"player_damage_dampener_close_contact_1",
				"player_armor_regen_damage_health_ratio_multiplier_1", --yak
				"player_armor_regen_damage_health_ratio_multiplier_2", --yak
				"player_armor_regen_damage_health_ratio_multiplier_3" --yak
			},
			icon_xy = {
				3,
				4
			}
		},
		deck4,
		{
			cost = 1000,
			desc_id = "menu_deck8_3_desc",
			name_id = "menu_deck8_3",
			upgrades = {
				"player_damage_dampener_close_contact_2"
			},
			icon_xy = {
				4,
				4
			}
		},
		deck6,
		{
			cost = 2400,
			desc_id = "menu_deck8_3_desc",
			name_id = "menu_deck8_5",
			upgrades = {"player_damage_dampener_close_contact_3"},
			icon_xy = {
				5,
				4
			}
		},
		deck8,
		{
			cost = 4000,
			desc_id = "menu_deck8_9_desc",
			name_id = "menu_deck8_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"player_melee_life_leech",
				"player_movement_speed_damage_health_ratio_multiplier", --yak
				"player_movement_speed_damage_health_ratio_threshold_multiplier", --yak
				"player_killshot_close_panic_chance"
			},
			icon_xy = {
				7,
				4
			}
		},
		name_id = "menu_st_spec_8",
		dlc = "character_pack_dragan",
		desc_id = "menu_st_spec_8_desc"
	}
	
	self.specializations[8] = new_infiltrator
	
	--Sicario
	local new_sicario = {
		desc_id = "menu_st_spec_18_desc",
		name_id = "menu_st_spec_18",
		{
			cost = 200,
			texture_bundle_folder = "max",
			desc_id = "menu_deck18_1_desc",
			name_id = "menu_deck18_1",
			upgrades = {"smoke_screen_grenade"},
			icon_xy = {
				0,
				0
			}
		},
		deck2,
		{
			cost = 400,
			texture_bundle_folder = "max",
			desc_id = "menu_deck18_3_desc",
			name_id = "menu_deck18_3",
			upgrades = {
				"player_dodge_shot_gain",
				"weapon_passive_swap_speed_multiplier_1" --rogue
			},
			icon_xy = {
				1,
				0
			}
		},
		deck4,
		{
			cost = 1000,
			texture_bundle_folder = "max",
			desc_id = "menu_deck18_5_desc",
			name_id = "menu_deck18_5",
			upgrades = {
				"player_passive_dodge_chance_1"
			},
			icon_xy = {
				2,
				0
			}
		},
		deck6,
		{
			cost = 2400,
			texture_bundle_folder = "max",
			desc_id = "menu_deck18_7_desc",
			name_id = "menu_deck18_7",
			upgrades = {
				"player_dodge_replenish_armor",
				"player_level_2_armor_multiplier_1", --Balistic vest armor inc
				"player_level_3_armor_multiplier_1",
				"player_level_4_armor_multiplier_1",
				"player_level_2_armor_multiplier_2",
				"player_level_3_armor_multiplier_2",
				"player_level_4_armor_multiplier_2",
				"player_level_2_armor_multiplier_3",
				"player_level_3_armor_multiplier_3",
				"player_level_4_armor_multiplier_3"
			},
			icon_xy = {
				3,
				0
			}
		},
		deck8,
		{
			cost = 4000,
			texture_bundle_folder = "max",
			desc_id = "menu_deck18_9_desc",
			name_id = "menu_deck18_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"player_smoke_screen_ally_dodge_bonus",
				"player_sicario_multiplier"
			},
			icon_xy = {
				0,
				1
			}
		}
	}
	
	self.specializations[18] = new_sicario
	
	--Maniac (ALL THE GROUP BUFFS)
	local new_maniac = {
		{
			cost = 200,
			texture_bundle_folder = "coco",
			desc_id = "menu_deck14_1_desc",
			name_id = "menu_deck14_1",
			upgrades = {
				"player_cocaine_stacking_1",
				"team_damage_reduction_1", --CC
				"player_passive_damage_reduction_1", --CC
				"temporary_loose_ammo_restore_health_1", --Gam
				"player_gain_life_per_players" --Gam
			},
			icon_xy = {
				0,
				0
			}
		},
		deck2,
		{
			cost = 400,
			texture_bundle_folder = "coco",
			desc_id = "menu_deck14_3_desc",
			name_id = "menu_deck14_3",
			upgrades = {
				"player_sync_cocaine_stacks",
				"team_passive_stamina_multiplier_1", --CC
				"player_passive_intimidate_range_mul", --CC
				"player_damage_dampener_close_contact_1", --CC
				"temporary_loose_ammo_give_team" --Gam
			},
			icon_xy = {
				1,
				0
			}
		},
		deck4,
		{
			cost = 1000,
			texture_bundle_folder = "coco",
			desc_id = "menu_deck14_5_desc",
			name_id = "menu_deck14_5",
			upgrades = {
				"player_cocaine_stacks_decay_multiplier_1",
				"team_passive_health_multiplier", --CC
				"player_passive_health_multiplier_1", --CC
				"player_loose_ammo_restore_health_give_team" --Gam
			},
			icon_xy = {
				2,
				0
			}
		},
		deck6,
		{
			cost = 2400,
			texture_bundle_folder = "coco",
			desc_id = "menu_deck14_7_desc",
			name_id = "menu_deck14_7",
			upgrades = {
				"player_sync_cocaine_upgrade_level_1",
				"player_tier_armor_multiplier_1", --CC
				"team_passive_armor_multiplier", --CC
				"temporary_loose_ammo_restore_health_2" --Gam
			},
			icon_xy = {
				3,
				0
			}
		},
		deck8,
		{
			cost = 4000,
			texture_bundle_folder = "coco",
			desc_id = "menu_deck14_9_desc",
			name_id = "menu_deck14_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"player_cocaine_stack_absorption_multiplier_1",
				"team_hostage_health_multiplier", --CC
				"team_hostage_stamina_multiplier", --CC
				"team_hostage_damage_dampener_multiplier", --CC
				"temporary_loose_ammo_restore_health_3" --Gam
			},
			icon_xy = {
				0,
				1
			}
		},
		desc_id = "menu_st_spec_14_desc",
		name_id = "menu_st_spec_14"
	}
	
	self.specializations[14] = new_maniac
	
	--Anarchist
	local new_anarchist_t7 = {
				cost = 2400,
				texture_bundle_folder = "opera",
				desc_id = "menu_deck15_7_desc",
				name_id = "menu_deck15_7",
				upgrades = {
					"player_armor_increase_3",
					"player_dodge_shot_gain" --Sicario
				},
				icon_xy = {
					3,
					0
				}
			}
	
	self.specializations[15][7] = new_anarchist_t7
	
	--Hacker
	local new_hacker = {
		{
			cost = 200,
			texture_bundle_folder = "joy",
			desc_id = "menu_deck21_1_desc",
			name_id = "menu_deck21_1",
			upgrades = {
				"pocket_ecm_jammer",
				"player_pocket_ecm_jammer_base"
			},
			icon_xy = {
				0,
				0
			}
		},
		deck2,
		{
			cost = 400,
			texture_bundle_folder = "joy",
			desc_id = "menu_deck21_3_desc",
			name_id = "menu_deck21_3",
			upgrades = {
				"player_passive_health_multiplier_1",
				"player_passive_health_multiplier_2"
			},
			icon_xy = {
				1,
				0
			}
		},
		deck4,
		{
			cost = 1000,
			texture_bundle_folder = "joy",
			desc_id = "menu_deck21_5_desc",
			name_id = "menu_deck21_5",
			upgrades = {
				"player_pocket_ecm_heal_on_kill_1",
				"player_passive_dodge_chance_1" --probably a bug
			},
			icon_xy = {
				2,
				0
			}
		},
		deck6,
		{
			cost = 2400,
			texture_bundle_folder = "joy",
			desc_id = "menu_deck21_7_desc",
			name_id = "menu_deck21_7",
			upgrades = {
				"player_pocket_ecm_kill_dodge_1",
				"weapon_passive_swap_speed_multiplier_1" --rogue
			},
			icon_xy = {
				3,
				0
			}
		},
		deck8,
		{
			cost = 4000,
			texture_bundle_folder = "joy",
			desc_id = "menu_deck21_9_desc",
			name_id = "menu_deck21_9",
			upgrades = {
				"player_passive_loot_drop_multiplier",
				"team_pocket_ecm_heal_on_kill_1",
				"player_passive_dodge_chance_2" --Probably a bug
			},
			icon_xy = {
				0,
				1
			}
		},
		desc_id = "menu_st_spec_21_desc",
		name_id = "menu_st_spec_21"
	}

	
end