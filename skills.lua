--[[
https://www.unknowncheats.me/forum/payday-2-a/288814-skill-tweaks.html#post2168420
--]]

local old_init = UpgradesTweakData.init

function UpgradesTweakData:init(tweak_data)
	old_init(self, tweak_data)
	
--SKILLS
--MASTERMIND-----------------------------------------------------------------------------------------------------------------------------
--Hostage Taker
self.values.player.hostage_health_regen_addend = {0.075, 0.18} --Regen 7.5 and 18% health per 5secs with hostage

--Ammo Efficiency
self.values.player.head_shot_ammo_return = {
		{ammo = 2, time = 7, headshots = 3},
		{ammo = 3, time = 5, headshots = 2}}

--Partners In Crime
self.values.player.minion_master_health_multiplier = {1.5}  --You get 50% increased health with a convert
self.values.player.minion_master_speed_multiplier = {1.15} --You get 15% inc move speed with a convert

--Joker
self.values.player.convert_enemies_damage_multiplier = {0.65, 8} --Converts deal octuple damage

--Stockholm syndrom
self.values.player.hostage_proximity_dodge = {0.1, 0.2}

self.definitions.player_hostage_proximity_dodge_1 = {
	name_id = "menu_player_hostage_proximity_dodge",
	category = "feature",
	upgrade = {
		value = 1,
		upgrade = "hostage_proximity_dodge",
		category = "player"
	}
}

self.definitions.player_hostage_proximity_dodge_2 = {
	name_id = "menu_player_hostage_proximity_dodge",
	category = "feature",
	upgrade = {
		value = 2,
		upgrade = "hostage_proximity_dodge",
		category = "player"
	}
}

--Marksman
--Added crew bonuses from leagcy to upgrades

--Painkillers
self.values.temporary.passive_revive_damage_reduction = {
		{0.7, 10},
		{0.2, 10}} --dmg res duration for revivee is inc by 5 secs

--ENFORCER-----------------------------------------------------------------------------------------------------------------------------
--Fully Loaded
self.values.player.extra_ammo_multiplier = {1.75} --Ammo multiplied by number
self.values.player.regain_throwable_from_ammo = {{chance = 0.10, chance_inc = 1}} --10% base chance to loot throwable and 0% increase of base chance for every non-throwable looted
--Bug in the game, values adjusted to make it work somewhat.

self.values.player.projectiles_from_ammo = {true}
self.definitions.player_projectiles_from_ammo = {
	name_id = "menu_player_projectiles_from_ammo",
	category = "feature",
	upgrade = {
		value = 1,
		upgrade = "projectiles_from_ammo",
		category = "player"
	}
}

--Iron Man
self.values.player.armor_multiplier = {2} --Increase armor values by 100%

self.values.player.armor_multiplier[2] = self.values.player.armor_multiplier[1] + 1 --inc armor values by an additional 100% for second stage

	self.definitions.player_armor_multiplier_2 = {
		name_id = "menu_player_armor_multiplier",
		category = "feature",
		upgrade = {
			value = 2,
			upgrade = "armor_multiplier",
			category = "player"
		}
	} --adds second stage

--Saw Massacre
self.definitions.saw_panic_when_kill_2 = {
		name_id = "menu_saw_panic_when_kill",
		category = "feature",
		upgrade = {
			value = 2,
			upgrade = "panic_when_kill",
			category = "saw"
		}
	} --adds second saw on kill panic chance stage

self.values.saw.panic_when_kill = {
		{chance = 0.5, area = 3000, amount = 200}, 
		{chance = 1, area = 3000, amount = 200}} --50% chance to scare in 30m radius and then 100% chance (saws are scary, yo)

self.values.saw.enemy_slicer = {4} --Reduces ammo cost of attack enemy with a saw

--Portable Saw
self.values.saw.extra_ammo_multiplier[2] = 2.5

	self.definitions.saw_extra_ammo_multiplier_2 = {
		name_id = "saw_extra_ammo_multiplier_2",
		category = "feature",
		upgrade = {
			value = 2,
			upgrade = "extra_ammo_multiplier",
			category = "saw"
		}
	}

--Bullseye
self.values.player.headshot_regen_armor_bonus = {1.5, 3.5} --15 armor per headshot every 2 secs and 35

--Shotgun CBQ
self.values.shotgun.reload_speed_multiplier = {1.25, 1.65} --25/65% inc reload speed for shotguns

--Shotgun Impact
self.values.shotgun.damage_multiplier = {1.20, 1.50} --20% inc damage and then 50% inc damage

--Close By (add shotgun ammo multiplier)
self.values.shotgun.extra_ammo_multiplier = {
	1.3
}
self.definitions.shotgun_extra_ammo_multiplier = {
	name_id = "menu_shotgun_extra_ammo_multiplier",
	category = "feature",
	upgrade = {
		value = 1,
		upgrade = "extra_ammo_multiplier",
		category = "shotgun"
	}
}

--Bulletstorm
--Stage one adds 15% faster weapon swap speed and firerate, level two adds 20% reload speed
self.values.shotgun.consume_no_ammo_chance = {
		0.0,
		0.0
	}
self.definitions.SnP_Bulletstorm_1 = {
		name_id = "SnP_Bulletstorm",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "consume_no_ammo_chance",
			category = "shotgun"
		}
	} --dirty hack, using unused variables because I didn't manage to create my own (<- look at this idiot)
	
self.values.shotgun.melee_knockdown_mul = {1}
self.definitions.SnP_Bulletstorm_2 = {
		name_id = "SnP_Bulletstorm",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "melee_knockdown_mul",
			category = "shotgun"
		}
	}
	
--Transporter
self.values.player.armor_break_ignition = { true} --

self.definitions.player_armor_break_ignition = {
  name_id = "menu_player_armor_break_ignition",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "armor_break_ignition",
    category = "player"
  }
}

--Underdog
self.values.temporary.dmg_dampener_outnumbered = {{
		0.85,
		7
	}} --inc to 15% dmg reduction

self.values.temporary.dmg_multiplier_outnumbered = {{
		1.2,
		7
	}} --20% damage mult

--Resilience
self.values.player.armor_regen_timer_multiplier = {0.7} --30% faster armor regen begin

self.values.player.flashbang_multiplier = {0.75, 0.1} --adds a second stage of flashbang reduction (25% then 10%)

--Scavenger
self.definitions.player_double_drop_2 = {
		name_id = "menu_player_double_drop",
		category = "feature",
		upgrade = {
			value = 2,
			upgrade = "double_drop",
			category = "player"
		}
	}-- pick second value of upgrade def

self.values.player.double_drop = {8, 3} --additional ammo every 8th and then 3rd enemy

self.values.player.increased_pickup_area = {1.75}


--TECHNICIAN-----------------------------------------------------------------------------------------------------------------------------
--Body Expertise
--Additionally allows players bullets to pierce through enemies
self.values.weapon.automatic_head_shot_add = {0.5, 1} --50% crit to all at 1, 100% at 2

--Surefire now pireces through shields and walls, specified in RaycastWeaponsBase_PierceChanges
--Anything can crit
self.values.player.anything_can_crit = { true}

self.definitions.player_anything_can_crit = {
  name_id = "menu_player_anything_can_crit",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "anything_can_crit",
    category = "player"
  }
}

--Drill skills
self.values.player.drill_fix_interaction_speed_multiplier = {0.3}
if not Network:is_client() then
	self.values.player.drill_autorepair_1 = {0.45}
	self.values.player.drill_autorepair_2 = {0.3}
	self.values.player.drill_alert_rad = {450}
	self.values.player.drill_speed_multiplier = {0.7, 0.45}
end

--Hardware Expert (add more to ace because drill restart is boring)

--Kickstarter
--burn stamina regen
self.values.player.fire_stamina_regen = {0.5}

self.definitions.player_fire_stamina_regen = {
  name_id = "menu_player_fire_stamina_regen",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "fire_stamina_regen",
    category = "player"
  }
}

self.values.weapon.stronger_burn = { 1.5, 2 } --Increase burn dot length by 50/100%

self.definitions.weapon_longer_burn_1 = {
  name_id = "menu_weapon_longer_burn",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "longer_burn",
    category = "weapon"
  }
}

--More Firepower
self.values.weapon.stronger_burn = { 1.35, 1.6 } --Increase fire damage by 35/60%
self.values.weapon.tank_burn = { 2.5 } --Buldozers take double damage

self.definitions.weapon_stronger_burn_1 = {
  name_id = "menu_weapon_stronger_burn",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "stronger_burn",
    category = "weapon"
  }
}
self.definitions.weapon_stronger_burn_2 = {
  name_id = "menu_weapon_stronger_burn",
  category = "feature",
  upgrade = {
    value = 2,
    upgrade = "stronger_burn",
    category = "weapon"
  }
}
self.definitions.weapon_tank_burn_1 = {
  name_id = "menu_weapon_tank_burn",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "tank_burn",
    category = "weapon"
  }
}

--Combat Engineering
self.values.player.stamina_ammo_refill_throwable = { 30 } --Every 30 stamina spent get 1 throwable

self.definitions.player_stamina_ammo_refill_throwable_1 = {
  name_id = "menu_player_stamina_ammo_refill_throwable",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "stamina_ammo_refill_throwable",
    category = "player"
  }
}

--Unused skills, weapon ammo refresh on stamina spent
self.values.player.stamina_ammo_refill_single = { { 20,0.05 } } --every 20 stamina spent gain 5% of your max weapon ammo
self.values.player.stamina_ammo_refill_auto = {	{ 20,0.05 } }

--Fire Trap
self.values.player.fe_armor_regen = { 1.5, 2.5 } --Gain 15/25 Armor when killing an enemy with fire or explosion every x seconds

self.definitions.player_fe_armor_regen_1 = {
  name_id = "menu_player_fe_armor_regen",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "fe_armor_regen",
    category = "player"
  }
}
self.definitions.player_fe_armor_regen_2 = {
  name_id = "menu_player_fe_armor_regen",
  category = "feature",
  upgrade = {
    value = 2,
    upgrade = "fe_armor_regen",
    category = "player"
  }
}

--GHOST-----------------------------------------------------------------------------------------------------------------------------
--Sneaky bastard
self.values.player.detection_risk_add_dodge_chance = {
	{0.01, 3, "below", 33, 1}, --Gain 1% Dodge_chance for every 3 Points of Concealment below 33 Concealment at a maximum of (100%*)
	{0.01, 2, "below", 45, 1}} --With 3 Concealment = 21% extra dodge 

--Unseen Strike (reduced in tier)
self.values.player.unseen_increased_crit_chance = {
		{
			min_time = 4,
			max_duration = 14,
			crit_chance = 1.25},
		{
			min_time = 3,
			max_duration = 24,
			crit_chance = 1.5}
	}

self.values.temporary.unseen_strike = {
		{1.4, 14},
		{1.65, 32}
	}

--Low blow
self.values.player.detection_risk_add_crit_chance = {
	{0.02, 3, "below", 53, 1}, --Gain 2% crit_chance for for every 3 Points of Concealment below 53 concealment at a max of 100%
	{0.02, 1, "below", 43, 0.7}} --With 3 Concealment = 80% Crit // 40 * 2% but max is 70

--High Value Target
self.values.player.marked_inc_dmg_distance = {
		{1, 1.3}} -- Marked enemies take 30% more damage if distance to them is greater than 1cm (is nearly nothing)

--Shockproof (add new skill)
self.values.player.taser_malfunction = {
	{interval = 1, chance_to_trigger = 0.50}
}	--Taser backfire chance inc to 50%

self.values.temporary.dodge_reload_speed = { 
	{ 1.3,3},
	{ 1.6,3}
 } --30/60% reload speed for 3 seconds
self.definitions.temporary_dodge_reload_speed_1 = {
  name_id = "menu_temporary_dodge_reload_speed",
  category = "temporary",
  upgrade = {
    value = 1,
    upgrade = "dodge_reload_speed",
    category = "temporary"
  }
}

self.definitions.temporary_dodge_reload_speed_2 = {
  name_id = "menu_temporary_dodge_reload_speed",
  category = "temporary",
  upgrade = {
    value = 2,
    upgrade = "dodge_reload_speed",
    category = "temporary"
  }
}
	
--Dire Need
self.values.player.dodge_health_regen = { 0.7,1.5 } --Regen 7/15 HP when dodging with no armor

self.definitions.player_dodge_health_regen_1 = {
  name_id = "menu_player_dodge_health_regen",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "dodge_health_regen",
    category = "player"
  }
}
self.definitions.player_dodge_health_regen_2 = {
  name_id = "menu_player_dodge_health_regen",
  category = "feature",
  upgrade = {
    value = 2,
    upgrade = "dodge_health_regen",
    category = "player"
  }
}


--The Professional (Adjusted for tier change)
--Adds back definition for Silencer damage multiplier which got added back to the skill in skilltree
self.definitions.weapon_silencer_damage_multiplier_1 = {
	category = "feature",
	name_id = "silencer_damage_multiplier",
	upgrade = {
		category = "weapon",
		upgrade = "silencer_damage_multiplier",
		value = 1
	}
}
self.definitions.weapon_silencer_damage_multiplier_2 = {
	category = "feature",
	name_id = "silencer_damage_multiplier",
	upgrade = {
		category = "weapon",
		upgrade = "silencer_damage_multiplier",
		value = 2
	}
}

self.values.weapon.silencer_damage_multiplier = {1.35, 1.85} --Silencer damage multiplier 1&2 can be cahnged with these values (from 15/30 to 35/85% damage increase)

--Silencer armor pierce
self.values.weapon.armor_piercing_chance_silencer = {
		0.5,
		1
	}

--Optical Illusions 
self.values.player.silencer_concealment_increase = {3} --Every silent weapon increases your concealment by 3
self.values.player.silencer_concealment_penalty_decrease = {6} --Silencers do not increase concealment

--Duck and Cover (Changed, crouch dodge chance was added back)
self.definitions.player_crouch_dodge_chance_1 = {
	category = "feature",
	name_id = "menu_player_crouch_dodge_chance",
	upgrade = {
		category = "player",
		upgrade = "crouch_dodge_chance",
		value = 1 --can be changed to pick whatever value in the list
	}
}

self.values.player.crouch_dodge_chance = {0.07, 0.15} -- Changed crouch-dodge-mult with this (crouching gives 7% (or 15%) additional dodge chance)

self.values.player.stamina_regen_timer_multiplier = {0.5} --50% faster restart of stamina regen
self.values.player.stamina_regen_multiplier = {1.4} -- 40% inc stamina regen
self.values.player.run_speed_multiplier = {1.3} --30% faster sprinting
self.values.player.run_dodge_chance = {0.15} --15% increased dodge whislt sprinting

--Second wind (make Ace more interesting)
self.values.player.dodge_stamina_regen = { 15 }
self.definitions.player_dodge_stamina_regen = {
  name_id = "menu_player_dodge_stamina_regen",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "dodge_stamina_regen",
    category = "player"
  }
}


--FUGITIVE-----------------------------------------------------------------------------------------------------------------------------
--Trigger Happy (new)
self.values.pistol.hit_self_heal = { 0.6, 1.2 } --restore 6 and 12 HP on pistol hit

self.definitions.pistol_hit_self_heal_1 = {
  name_id = "menu_pistol_hit_self_heal",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "hit_self_heal",
    category = "pistol"
  }
}
self.definitions.pistol_hit_self_heal_2 = {
  name_id = "menu_pistol_hit_self_heal",
  category = "feature",
  upgrade = {
    value = 2,
    upgrade = "hit_self_heal",
    category = "pistol"
  }
}

--Desperado (ACE changed with Gun Nut)
--Trigger Happy (old, added to Desperado Ace)
self.values.pistol.stacking_hit_damage_multiplier = {
	{damage_bonus = 1.4, max_stacks = 10,max_time = 5},
	{damage_bonus = 1.4, max_stacks = 10, max_time = 5}}

--[[self.values.pistol.stacked_accuracy_bonus = {{
		max_stacks = 4,
		accuracy_bonus = 0.9,
		max_time = 10
	}} --if I want to make changes --]]
self.values.pistol.reload_speed_multiplier = {1.6} --Increase pistol reloadspeed by 60%

--Pistol crit chance
self.values.pistol.add_crit = { 0.15 } --Pistols have 15% extra crit chance

self.definitions.pistol_add_crit_1 = {
  name_id = "menu_pistol_add_crit",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "add_crit",
    category = "pistol"
  }
}
	
--Onehanded Talent
self.values.pistol.damage_addend = {1, 2.5} --10 base damage added to pistol and then 25

--Swan Song
self.berserker_movement_speed_multiplier = 0.5 --Swan Song 50% move spd

self.values.temporary.berserker_damage_multiplier = {
		{1, 4},
		{1, 8}} --Changes swan song duration to 4|8 secs

--Feign Death
self.values.player.cheat_death_chance = {0.3, 0.75}  --30% and then 75% chance to revive without intervention

--Gun Nut
--Unchanged but skill tree change to ace version
--self.values.pistol.magazine_capacity_inc = {5} -- to change bullets in magazine

--Up You Go
--Definitions for second stage of dmg res
self.definitions.player_revived_damage_resist_2 = {
	category = "temporary",
	name_id = "menu_player_revived_damage_resist",
	upgrade = {
		category = "temporary",
		upgrade = "revived_damage_resist",
		value = 2
	}
} --Pick the second value

self.values.temporary.revived_damage_resist = {
		{0.6, 10}, {0.2, 10}} --Adds a second stage of dmg res after revive (40% res and then 80% res for 10 secs)

--Definition for health and armor replenish on teammate down
self.values.player.replenish_on_teammate_down = {true}

self.definitions.player_replenish_on_teammate_down = {
	category = "player",
	name_id = "menu_player_replenish_on_teammate_down",
	upgrade = {
		category = "player",
		upgrade = "replenish_on_teammate_down",
		value = 1
	}
}

--Running From Death
--Definitions for health regain, weapon reload speed and weapon swap speed on revive
self.definitions.player_revived_health_regain_2 = {
	category = "feature",
	name_id = "menu_revived_health_regain",
	upgrade = {
		category = "player",
		upgrade = "revived_health_regain",
		value = 2
	}
} --Pick second value

self.values.player.revived_health_regain = {1.2, 1.5} --Adds a second stage of health regain after revive (20% hp and then 50%)

self.definitions.player_temp_reload_weapon_faster_2 = {
	category = "temporary",
	name_id = "menu_player_temp_reload_weapon_faster",
	upgrade = {
		category = "temporary",
		upgrade = "reload_weapon_faster",
		value = 2
	}
} --Pick second value

self.values.temporary.reload_weapon_faster = {
		{2, 10}, {2, 20}} --Increases the weapon reload speed by 100% after revive for 10/20 seconds 

self.definitions.player_temp_swap_weapon_faster_2 = {
	category = "temporary",
	name_id = "menu_player_temp_swap_weapon_faster",
	upgrade = {
		category = "temporary",
		upgrade = "swap_weapon_faster",
		value = 2
	}
} --Pick second value

self.values.temporary.swap_weapon_faster = {
		{2, 10}, {2, 20}} --Increases the weapon swap speed by 100% after revive for 10/20 seconds 

--Definition for armor doubling for each arrested teammate
self.values.player.armor_double_for_suckers = {true}

self.definitions.player_armor_double_for_suckers = {
	category = "player",
	name_id = "menu_player_armor_double_for_suckers",
	upgrade = {
		category = "player",
		upgrade = "armor_double_for_suckers",
		value = 1
	}
}
--Nine Lives
--self.values.player.additional_lives = {2, 3} --May be too obviously cheaty
self.values.player.bleed_out_health_multiplier = {5} --Bleedout health quintupled

--Melee tree of Fugitive
--Frenzy
self.definitions.player_max_health_reduction_2 = {
		name_id = "menu_player_max_health_reduction",
		category = "feature",
		upgrade = {
			value = 2,
			upgrade = "max_health_reduction",
			category = "player"
		}
	} --adds a second max health reduction stage

self.values.player.max_health_reduction = {0.30, 0.25} --Max health reduction now 30 and 25%

self.values.player.health_damage_reduction = {0.85, 0.7} --Damage reduction from frenzy changed to 15 and 30%

--Berserker
self.values.player.melee_damage_health_ratio_multiplier = {4} --melee and saw dmg scales to up to 400% inc dmg
self.values.player.damage_health_ratio_multiplier = {1.5} --all dmg scales up to 150% dmg depending on health missing

--Bloodthirst
self.values.player.melee_damage_stacking = {{
		max_multiplier = 1000,
		melee_multiplier = 1
	}} --Soft uncap melee dmg mult stack
	
self.values.player.melee_kill_increase_reload_speed = {{
		2,
		10
	}} --reload speed is doubled for 10 secs on melee kill

--Pumping Iron (new skill for ace)
self.values.player.melee_damage_multiplier = {2.5} --melee dmg against specials is inc by 150%
self.values.player.non_special_melee_multiplier = {2.5} --melee dmg against normals is inc by 150%

self.values.player.explosive_ram = { true}

self.definitions.player_explosive_ram = {
  name_id = "menu_player_explosive_ram",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "explosive_ram",
    category = "player"
  }
}

--Martial Arts
self.values.player.melee_damage_dampener = {0.25} --75% melee dmg res
self.values.player.melee_knockdown_mul = {1.75} --75% chance to knock down

self.values.player.flat_max_stamina_increase = { 5, 15 } --Add 5/15 max stamina

self.definitions.player_flat_max_stamina_increase_1 = {
  name_id = "menu_player_flat_max_stamina_increase",
  category = "feature",
  upgrade = {
    value = 1,
    upgrade = "flat_max_stamina_increase",
    category = "player"
  }
}
self.definitions.player_flat_max_stamina_increase_2 = {
  name_id = "menu_player_flat_max_stamina_increase",
  category = "feature",
  upgrade = {
    value = 2,
    upgrade = "flat_max_stamina_increase",
    category = "player"
  }
}



--PERKS
--Multiple
self.values.player.armor_piercing_chance = {
	0.2,
	0.5
} --Changes added armor piercing chance from 10/30

--Grinder---------------------------------------------------------------------
self.damage_to_hot_data = {
	tick_time = 0.3,
	works_with_armor_kit = true,
	stacking_cooldown = 0.1,
	total_ticks = 10,
	max_stacks = false,
	armors_allowed = {
		"level_1",
		"level_2"
	},
	add_stack_sources = {
		projectile = true,
		fire = true,
		bullet = true,
		melee = true,
		explosion = true,
		civilian = false,
		poison = true,
		taser_tased = true,
		swat_van = true
	}
}

--Health regen per tick 1.0 = 10
self.values.player.damage_to_hot = {
	0.1,
	0.2,
	0.3,
	0.4
}

-- Extra ticks = extra time based on tick_time
self.values.player.damage_to_hot_extra_ticks = {2} --reduced from 4

--Infiltrator (&Sociopath)-----------------------------------------------------------
--Regen 10% health on melee strike every 1 second
self.values.temporary.melee_life_leech = {{0.1, 0.1}}

--15% dmg red when X enemies within 18m for 10 (norm:7) secs
self.values.temporary.dmg_dampener_outnumbered_strong = {{0.85, 10}}

--dmg red under contition for X active enemies within 18m
self.values.temporary.dmg_dampener_close_contact = {
	{0.9, 10},
	{0.8, 10},
	{0.7, 10}}
	
--Ex-President----------------------------------------------------------------------
self.values.player.armor_max_health_store_multiplier = {2} --increase the capacity of stored health by 100%
--Stored health doesn't get cleared with https://modworkshop.net/mydownloads.php?action=view_down&did=15778
	
--Muscle----------------------------------------------------------------------------
self.values.player.uncover_multiplier = {3} --200% more likely to be attacked instead of crew

--Rogue-----------------------------------------------------------------------------
self.values.weapon.armor_piercing_chance = {0.6} --armor pierce chance default:25%

--Kingpin----------------------------------------------------------------------------
self.values.temporary.chico_injector = {{0.75, 9}} --increases Injector time to 9secs (75% is unchanged)

--Maniac----------------------------------------------------------------------------
--self.max_total_cocaine_stacks = 800 --Change max stacks from 600
self.cocaine_stacks_decay_percentage_per_tick = 0.45 --45% decay + X instead of 60%

--Gambler (taken from Dr. Newbie's Gambler Perk Deck Buff)---------------------------------------------------------------------------
self.loose_ammo_give_team_ratio = 1

self.loose_ammo_give_team_health_ratio = 1

self.loose_ammo_restore_health_values = {
	base = 8,
	cd = 1,
	multiplier = 0.3,
	{0, 8},
	{8, 12},
	{12, 16}
}

self.values.temporary.loose_ammo_restore_health = {}
for i, data in ipairs(self.loose_ammo_restore_health_values) do
	local base = self.loose_ammo_restore_health_values.base
	table.insert(self.values.temporary.loose_ammo_restore_health, {
		{
			base + data[1],
			base + data[2]
		},
		self.loose_ammo_restore_health_values.cd
	})
end

self.values.temporary.loose_ammo_give_team[1] = {
	true,
	2.5
}

self.values.player.loose_ammo_give_team_twice = {true}
self.definitions.player_loose_ammo_give_team_twice = {
	name_id = "menu_player_loose_ammo_give_team_twice",
	category = "feature",
	upgrade = {
		value = 1,
		upgrade = "loose_ammo_give_team_twice",
		category = "player"
	}
}

--Hacker-----------------------------------------------------------------------------
self.values.player.pocket_ecm_jammer_base = {{cooldown_drain = 10, duration = 6}} --Originally 6 drain

self.values.player.pocket_ecm_heal_on_kill = {2} --stays at 20 since is heals armor and health now

self.values.temporary.pocket_ecm_kill_dodge = {{0.23, 30, 1}} --orginally 20% dodge on kill for 30 secs

end
