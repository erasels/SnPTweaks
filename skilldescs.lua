Hooks:Add("LocalizationManagerPostInit", "SnPTweaks_LocalizationManagerPostInit", function(loc)

	loc:add_localized_strings( {
		--SKILLS
		--Body Expertise
		["menu_body_expertise_beta_desc"] = "BASIC: ##$basic##\n##50%## from the bonus headshot damage is permanently applied to hitting enemies on the body except Bulldozers.\n\nFurthermore, all ranged weapons except shotguns can now pierce through enemies.\n\nACE: ##$pro##\n##100%## from the bonus headshot damage is permanently applied to hitting enemies on the body except Bulldozers.",
		--Low Blow
		["menu_backstab_beta_desc"] = "BASIC: ##$basic##\nYou gain ##2%## critical hit chance for every ##3## points of concealment under ##53## up to ##32%##.\n\nACE: ##$pro##\nYou gain ##2%## critical hit chance for every ##1## point of concealment under ##43## up to ##70%##.",
		--Sneaky Bastard
		["menu_jail_diet_beta_desc"] = "BASIC: ##$basic##\nYou gain ##1%## dodge chance for every ##3## points of concealment under ##33## up to ##10%##.\n\nACE: ##$pro##\nYou gain ##1%## dodge chance for every ##2## points of concealment under ##45## up to ##21%##.",
		--One Handed Talent
		["menu_gun_fighter_beta_desc"] = "BASIC: ##$basic##\nThe base damage of all pistols is increased by ##10##.\n\nACE: ##$pro##\nThe base damage of all pistols is increased by ##25##.",
		--Fully Loaded
		["menu_bandoliers_beta_desc"] = "BASIC: ##$basic##\nYour total ammo capacity is increased by ##100%##.\n\nACE: ##$pro##\nIncreases the amount of ammo you gain from ammo boxes by ##75%##. You also gain a ##10%## base chance to get a throwable from an ammo box. The base chance is multiplied by ##10%## for each ammo box you pick up that does not contain a throwable. When a throwable has been found, the chance is reset to its base value.\n\nNote: Does not stack with the perk deck skill Walk-in Closet.",
		--Duck and Cover
		["menu_sprinter_beta_desc"] = "BASIC: ##$basic##\nYour stamina starts regenerating ##75%## earlier and ##50%## faster. You also sprint ##40%## faster.\n\nACE: ##$pro##\nYou have a ##20%## increased chance to dodge while sprinting and a ##7%## increased chance to dodge while crouching. You gain ##15%## chance to dodge while ziplining.",
		--Iron Man
		["menu_juggernaut_beta_desc"] = "BASIC: ##$basic##\nYour total armor value is increased by ##100%##.\n\nACE: ##$pro##\nUnlocks the ability to wear the ##Improved Combined Tactical Vest##.\n\nYour total armor value is increased to ##200%## of its original value.",
		--Hostage taker
		["menu_black_marketeer_beta_desc"] = "BASIC: ##$basic##\nHaving at least one of your own hostage or converted law enforcer makes you regenerate ##7.5%## health every ##5 seconds##.\n\nACE: ##$pro##\nHaving at least one of your own hostage or converted law enforcer makes you regenerate ##18%## health every ##5 seconds##.",
		--Joker
		["menu_joker_beta_desc"] = "BASIC: ##$basic##\nYou can convert a non-special enemy to fight on your side. This cannot be done during stealth and the enemy must have surrendered in order for you to convert them.\n\nYou can only convert one non-special enemy at a time.\n\nACE: ##$pro##\nYour converted enemy deal ##8 times## their base damage. The time taken to convert an enemy is reduced by ##65%##.",
		--Partners In Crime
		["menu_control_freak_beta_desc"] = "BASIC: ##$basic##\nHaving a converted enemy increases your movement speed by ##15%##.\n\nYour converted enemy takes ##45%## less damage.\n\nACE: ##$pro##\nHaving a converted enemy increases your health by ##50%##.\n\nYour converted enemy takes an additional ##54%## less damage.",
		--Bullseye
		["menu_prison_wife_beta_desc"] = "BASIC: ##$basic##\nYou regenerate ##15## armor for each successful headshot. This effect cannot occur more than once every ##2 seconds##.\n\nACE: ##$pro##\nYou regenerate ##35## armor for each successful headshot. This effect cannot occur more than once every ##2 seconds##.",
		--Shotgun CBQ
		["menu_shotgun_cqb_beta_desc"] = "BASIC: ##$basic##\nYou reload shotguns ##25%## faster.\n\nACE: ##$pro##\nYou reload shotguns ##100%## faster. You gain a ##125%## increase steel sight speed when using Shotguns.",
		--Shotgun Impact
		["menu_shotgun_impact_beta_desc"] = "BASIC: ##$basic##\nYour weapon stability with all shotguns is increased by ##8##. You deal ##20%## more damage with shotguns.\n\nACE: ##$pro##\nYou deal ##50%## more damage with shotguns.",
		--Trigger Happy
		["menu_trigger_happy_beta_desc"] = "BASIC: ##$basic##\nFor every hit with a pistol you heal ##5## health.\n\nACE: ##$pro##\nIncrease the healed amount to ##12##.",
		--Resilience
		["menu_oppressor_beta_desc"] = "BASIC: ##$basic##\nIncrease your armor recovery rate by ##30%## and reduce the visual effect duration of Flashbangs by ##25%##.\n\nACE: ##$pro##\nReduce the visual effect duration of Flashbangs by ##90%## and reduce the screen shake effect of being hit by ##50%##.",
		--Hardware Expert
		["menu_hardware_expert_beta_desc"] = "BASIC: ##$basic##\nYou fix drills and saws ##70%## faster. Drills and saws are also silent. Civilians and guards must see the drill or saw in order to become alerted. \n\nACE: ##$pro##\nGives your drills and saws a ##45%## chance to automatically restart after breaking. (##10%## as client to prevent desync)",
		--Drill Expert
		["menu_drill_expert_beta_desc"] = "BASIC: ##$basic##\nYour drill and saw timer is decreased by ##30%##.\n(##15%## as client to prevent desync)\n\nACE: ##$pro##\nYour drill and saw timer is decreased by ##65%##.\n(##30%## as client)",
		--Kickstarter
		["menu_kick_starter_beta_desc"] = "BASIC: ##$basic##\nYour drills and saws gain an additional ##30%## chance to automatically restart after breaking. (##20%## as client to prevent desync)\n\nACE: ##$pro##\nEnables the ability to reset a broken drill or saw with a melee attack. The ability has a ##50%## chance to fix the drill or saw. The ability can only be used once per time the drill or saw is broken.",
		--Optical Illusion
		["menu_optic_illusions_desc"] = "BASIC: ##$basic##\nYou are ##35%## less likely to be targeted by enemies.\n\nACE: ##$pro##\nYou gain ##3## concealment for each silenced weapon you equip and reduces the concealment penalty of silencers by ##6##.",
		--Nine Lives
		["menu_nine_lives_beta_desc"] = "BASIC: ##$basic##\nYou gain a ##500%## increase to bleedout health.\n\nACE: ##$pro##\nYou gain the ability to get downed ##1## more time before going into custody.",
		--Ammo Efficiency
		["menu_single_shot_ammo_return_beta_desc"] = "BASIC: ##$basic##\nGetting ##3## headshots in less than ##7 seconds## will refund ##2## bullets to your used weapon.\n\nACE: ##$pro##\nGetting ##2## headshots in less than ##5 seconds## will refund ##3## bullets to your used weapon.",
		--Feign Death
		["menu_feign_death_desc"] = "BASIC: ##$basic##\nWhen you get downed, you have a ##30%## chance to instantly get revived.\n\nACE: ##$pro##\nYour chance to instantly revive is increased to ##75%##.",
		--The Professional
		["menu_silence_expert_beta_desc"] = "BASIC: ##$basic##\nYou gain ##8## weapon stability, ##12## weapon accuracy and ##100%## snap to zoom speed increase with silenced weapons.\nYou deal ##35%## more damage and have ##50%## chance to pierce enemy armor with all silenced weapons.\n\nACE: ##$pro##\nYou deal an additional ##50%## more damage with silenced weapons and silenced weapons always pierce enemy armor.",
		--Scavenger
		["menu_scavenging_beta_desc"] = "BASIC: ##$basic##\nYour ammo box pick up range is increased by ##75%## and every ##8th## enemy you kill will drop an extra ammo box.\n\nACE: ##$pro##\nEvery ##3rd## enemy you kill will drop an extra ammo box.\n\nNote: Ammo box drop modifications only work as host. As client this skill will only add an extra ammo box drop every ##6th## enemy with it's ##Ace## version.",
		--Up You Go
		["menu_up_you_go_beta_desc"] = "BASIC: ##$basic##\nYou take ##40%## less damage and move ##30%## faster for ##10 seconds## after being revived.\n\nACE: ##$pro##\nYou take ##80%## less damage for ##10 seconds## after being revived.",
		--Running From Death
		["menu_running_from_death_beta_desc"] = "BASIC: ##$basic##\nYou reload and swap weapons ##100%## faster for ##10 seconds## and regain ##20%## more health after being revived.\n\nACE: ##$pro##\nYou reload and swap weapons ##100%## faster for ##20## seconds and regain ##50%## more health after being revived.",
		--High Value Target
		["menu_spotter_teamwork_beta_desc"] = "BASIC: ##$basic##\nEnemies you mark take ##15%## more damage and you can now mark specials by aiming at them with any weapon.\n\nACE: ##$pro##\nEnemies you mark take an additional ##50%## damage when you're not directly touching them. Increases the duration of marked enemies by ##100%##.",
		--Painkillers
		["menu_fast_learner_beta_desc"] = "BASIC: ##$basic##\nCrew members you revive take ##30%## less damage for ##10 seconds##.\n\nACE: ##$pro##\nThe damage reduction is increased to ##80%##.",
		--Swan Song
		["menu_perseverance_beta_desc"] = "BASIC: ##$basic##\nInstead of getting downed instantly, you gain the ability to keep on fighting for ##4 seconds## with a ##50%## movement penalty before going down.\n\nNote: Does not trigger on fall or fire damage.\n\nACE: ##$pro##\nIncreases the duration of Swan Song to ##8 seconds##. Ammunition won't be depleted while the effect is active.",
		--Shockproof
		["menu_insulation_beta_desc"] = "BASIC: ##$basic##\nWhen tased, the shock effect has a ##50%## chance to backfire on the Taser every second for 10 seconds, knocking them back.\n\nACE: ##$pro##\nWhen tased, you are able to free yourself from the taser interacting with it within ##2 seconds## of getting tased.",
		--Martial Arts
		["menu_martial_arts_beta_desc"] = "BASIC: ##$basic##\nYou take ##75%## less damage from all melee attacks. Because of training.\n\nACE: ##$pro##\nYou are ##75%## more likely to knock down enemies with a melee strike.",
		--Pumping Iron
		["menu_steroids_beta_desc"] = "BASIC: ##$basic##\nYour melee attacks against non-special enemies do ##300%## more damage.\n\nACE: ##$pro##\nYour melee attacks against special enemies do ##300%## more damage.",
		--Bloodthirst
		["menu_bloodthirst_desc"] = "BASIC: ##$basic##\nEvery kill you get will increase your next melee attack damage by ##100%##. This effect gets reset when you kill an enemy with a melee attack.\n\nACE: ##$pro##\nWhenever you kill an enemy with a melee attack, you will gain a ##100%## increase in reload speed for ##10 seconds##.",
		--Berserker
		["menu_wolverine_beta_desc"] = "BASIC: ##$basic##\nThe lower your health, the more damage you do. When your health is below 50%, you will do up to ##400%## more melee and saw damage.\n\nACE: ##$pro##\nWhen your health is below 50%, you will do up to ##150%## more damage with ranged weapons as well.\n\nNote: Does not apply to grenade launchers. Entering berserker state negates regeneration effects.",
		--Frenzy
		["menu_frenzy_desc"] = "BASIC: ##$basic##\nYou only get ##30%## of your maximum health and cannot heal above it but you take ##20%## less damage and healing received is reduced by ##75%##.\n\nACE: ##$pro##\nYou only get ##25%## of your maximum health and cannot heal above it but you take ##40%## less damage and healing received isn't reduced anymore.",
		--Saw Massacre
		["menu_carbon_blade_beta_desc"] = "BASIC: ##$basic##\nReduces the ammo cost of the blades on enemies to ##4##. When killing an enemy with the saw, you have a ##50%## chance to cause nearby enemies in a ##30m## radius to panic. Panic will make enemies go into short bursts of uncontrollable fear.\n\nACE: ##$pro##\nYou can now saw through shield enemies with your OVE9000 portable saw. Increases the chance to panic close by enemies when killing one with a saw to ##100%##.",
		--Desperado
		["menu_expert_handling_desc"] = "BASIC: ##$basic##\nEach successful pistol hit gives you a ##10%## increased accuracy bonus for ##10 seconds## and can stack ##4## times.\n\nACE: ##$pro##\nYou gain a ##50%## increased rate of fire with pistols.",
		--Gun Nut
		["menu_dance_instructor_desc"] = "BASIC: ##$basic##\nYour pistol magazine sizes are increased by ##5## bullets.\n\nACE: ##$pro##\nYou reload all pistols ##60%## faster.",
		--Marksman
		["menu_sharpshooter_beta_desc"] = "BASIC: ##$basic##\nYou gain ##8## weapon accuracy with all SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode. Furthermore, you and your crew's weapon stability with pistols is increased by ##4## points.\n\nACE: ##$pro##\nYou gain a ##20%## accuracy bonus while aiming down sights with all SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode. Furthermore, you and your crew's weapon stability with all weapons is increased by ##8## points.",
		--Surefire
		["menu_fast_fire_beta_desc"] = "BASIC: ##$basic##\nYour SMGs, LMGs and Assault Rifles gain ##15## more bullets in their magazine. This does not affect the \"Lock n' Load\" Ace skill.\n\nACE: ##$pro##\nYour ranged weapons can now pierce through enemy body armor and shields. Furthermore, your bullets can now pierce through thin (##40cm##) walls.\n\nNote: Does not apply to throwable weapons or shotguns.",
		--Unseen Strike
		["menu_unseen_strike_beta_desc"] = "BASIC: ##$basic##\nIf you do not lose any armor or health for 4 seconds, you gain ##40%## critical hit chance for ##14 seconds##.\n\nACE: ##$pro##\nIf you do not lose any armor or health for 3 seconds, you gain ##65%## critical hit chance for ##32 seconds##.",
		--Bulletstorm
		["menu_ammo_reservoir_beta_desc"] = "BASIC: ##$basic##\nIncreases the weapon swap speed and fire rate of all weapons by ##15%##.\n\nACE: ##$pro##\nIncreases the reload speed of all weapons by ##20%##.",
		--Portable Saw
		["menu_portable_saw_beta_desc"] = "BASIC: ##$basic##\nUnlocks the ##OVE9000## portable saw for you to use as a secondary weapon. Furthermore, you gain ##1## extra saw blade for it.\n\nACE: ##$pro##\nYou gain another additional saw blade for the OVE9000 portable saw. You replace your saw blades with carbon blades, increasing your saw efficiency by ##40%##.",
		--Underdog
		["menu_underdog_beta_desc"] = "BASIC: ##$basic##\nWhen three or more enemies are within ##18## meters of you, you receive a ##20%## damage bonus that lasts for ##7 seconds##.\n\nACE: ##$pro##\nWhen three or more enemies are within ##18## meters of you, you also receive a ##15%## damage reduction that lasts for ##7 seconds##.",
		--Extra Lead
		["menu_ammo_2x_beta_desc"] = "BASIC: ##$basic##\nYou can now place ##2## ammo bags instead of just one.\n\nAmmo bags placed by you grant players the ability to shoot without depleting their ammunition for up to ##5 seconds## after interacting with it. The more ammo players replenish, the longer the duration of the effect.\n\nACE: ##$pro##\nEach ammo bag contains ##50%## more ammunition.\n\nIncreases the base duration of the conditional infinite ammo effect by up to ##15 seconds##.",
		
		
		--PERKS
		--Grinder
		["menu_deck11_1_desc"] = "Damaging an enemy heals ##2## life points every ##0.3 seconds## for ##3 seconds##. This effect stacks but cannot occur more than once every ##0.1 seconds##, and only while wearing the ##Two-piece Suit## or ##Lightweight Ballistic Vest##.",
		["menu_deck11_3_desc"] = "Damaging an enemy now heals ##2## life points every ##0.3 seconds## for ##3 seconds##.\n\nYou gain ##20%## more health.",
		["menu_deck11_5_desc"] = "Damaging an enemy now heals ##3## life points every ##0.3 seconds## for ##3 seconds##.\n\nIncrease your chance to pierce enemy armor by ##20%##.",
		["menu_deck11_7_desc"] = "Damaging an enemy now heals ##4## life points every ##0.3 seconds## for ##3 seconds##.\n\nYou gain ##20%## more health.",
		["menu_deck11_9_desc"] = "Damaging an enemy now heals ##4## life points every ##0.3 seconds## for ##3.6 seconds##.\n\nIncrease your chance to pierce enemy armor by ##50%##.\n\nDeck Completion Bonus: Your chance of getting a higher quality item during a PAYDAY is increased by ##10%##.",
		--Infiltrator
		["menu_deck8_7_desc"] = "When you are surrounded by three enemies or more, you receive ##20%## less damage from enemies for ##10 seconds##.\n\nYour second and each consecutive melee hit within ##7 seconds## of the last one without missing will deal ##10 times## more damage.",
		["menu_deck8_1_desc"] = "When you are within medium range of an enemy, you receive ##11%## less damage from enemies for ##10 seconds##.\n\nThe lower your health, the more armor recovery rate you have. When your health is below 50%, you will gain up to ##60%## armor recovery rate.",
		["menu_deck8_3_desc"] = "When you are within medium range of an enemy, you receive an additional ##11%## less damage from enemies for ##10 seconds##.", --used for 3 and 5
		["menu_deck8_9_desc"] = "Once every ##1 second## striking an enemy with your melee weapon regenerates ##20%## of your health.\n\nThe lower your health, the more movement speed you gain. When your health is below 100%, you will gain up to ##20%## movement speed.\n\nKilling an enemy at medium range has a ##75%## chance to spread panic among your enemies. This cannot occur more than once every ##1 second##.",
		--Ex-president
		["menu_deck13_1_desc"] = "Every time you and your crew performs a kill you will gain ##5## health and ##5## armor. This cannot occur more than ##4 times## every ##4 seconds##.\n\nWhile your armor is up, you will store ##4## health for every enemy you or your crew kills.\n\nWhen your armor has been completely depleted and then starts to regenerate, you will gain health equal to the stored health amount.",
		["menu_deck13_3_desc"] = "Every ##10%## health missing will increase the amount of armor gained from kills by ##1##.\n\nThe health storage on kill effect is increased to ##8## health per kill.\n\nYou gain ##10%## more health.",
		["menu_deck13_5_desc"] = "Every ##10%## health missing will reduce the 4 second cooldown to kill regen by ##0.1 seconds##.\n\nIncrease the capacity of stored health by ##100%##.\n\nYou gain an additional ##10%## more health.\n\nYour chance to dodge is increased by ##15%##.",
		["menu_deck13_7_desc"] = "Every ##10%## armor missing will increase the amount of health gained from kills by ##1##.\n\nThe health storage on kill effect is increased to ##12## health per kill.\n\nYou gain an additional ##20%## more health.",
		["menu_deck13_9_desc"] = "Every ##10%## armor missing will reduce the 4 second cooldown to kill regen by ##0.1 seconds##.\n\nKilling an enemy speeds up your armor recovery time depending on how much armor you have. The more armor the less recovery speed gained per kill.\n\nArmor recovery speed is reset whenever your armor recovers.",
		--Muscle
		["menu_deck2_1_desc"] = "You gain ##10%## more health and ##20%## more armor.",
		["menu_deck2_3_desc"] = "You are going to be targeted when you are close to your crew members.\n\nYou gain an additional ##10%## more health and armor.",
		["menu_deck2_5_desc"] = "You gain an additional ##20%## more health.\n\nYou gain an additional ##10%## more armor.",
		["menu_deck2_7_desc"] = "All firearms have a chance to spread panic among your enemies.\n\nYour armor recovery rate is increased by ##10%##. When your armor gets depleted, you will be inmune to health damage for ##2 seconds##. This effect cannot occur more often than once every ##15 seconds##.",
		["menu_deck2_9_desc"] = "You gain an additional ##40%## more health. You regenerate ##3%## of your life every ##5 seconds##.\n\nYou gain an additional ##5%## more armor.",
		--Rogue
		["menu_deck4_5_desc"] = "Your chance to dodge is increased by an additional ##15%##.\n\nStanding still and crouching decreases your chances to be targeted by ##10%##.",
		["menu_deck4_7_desc"] = "Your chance to dodge is increased by an additional ##15%##.\n\nDual wielded weapons have a ##-16## stability penalty and ammo capacity is increased by ##50%##.",
		["menu_deck4_9_desc"] = "All your weapons have a ##60%## chance to pierce enemy armor.\n\nThe time between swapping weapons is reduced for you by ##80%##.",
		--Sicario
		["menu_deck18_3_desc"] = "Every time the player gets shot, ##20%## dodge chance is gained. This effect is reset once the player dodges and will not occur for the next ##4 seconds##.\n\nSwapping weapons takes ##80%## less time.",
		["menu_deck18_5_desc"] = "Your chance to dodge is increased by ##15%##.",
		["menu_deck18_7_desc"] = "Dodging will replenish your armor.\n\nYour armor is increased by ##65%## for ballistic vests.",
		["menu_deck18_9_desc"] = "All of your perk deck effects are increased by ##100%## while you are standing in the smoke screen. While any of your allies are standing in the smoke screen, they gain ##10%## dodge chance.",
		--Kingpin
		["menu_deck17_1_desc"] = "Unlocks and equips the Kingpin Injector. Changing to another perk deck will make the Injector unavailable again. The Injector replaces your current throwable, is equipped in your throwable slot and can be switched out if desired.\n\nWhile in game you can use the throwable key to activate the Injector. Activating the Injector will heal you with ##75%## of all damage taken for ##9 seconds##.\n\nThe Injector can only be used once every ##30 seconds##. Every kill reduces the cooldown by ##1 second##.",
		--Maniac
		["menu_deck14_1_desc"] = "##100%## of damage you deal is converted into Hysteria Stacks, up to ##240## every ##4 seconds##. Max amount of stacks is ##600##.\n\nHysteria Stacks:\nYou gain ##1## damage absorption for every ##25## stacks of Hysteria. Hysteria Stacks decays ##30%## + ##40## every ##8 seconds##.\n\nYour teammates benefit from these effects as well.",
		["menu_deck14_3_desc"] = "You grant ##8%## damage reduction for players in your group. This bonus is ##doubled## for you when you are under ##50%## health.\n\nYou and your crew's stamina is increased by ##50%##.\n\nIncreases your shout distance by ##25%##.\n\nWhen you are within medium range of an enemy, you recieve ##6%## less damage from enemies.",
		["menu_deck14_5_desc"] = "You gain ##20%## more health and your crew gains ##10%## more health.\n\nYou gain ##10%## more armor and your crew gains an additional ##5%## more armor.",
		["menu_deck14_7_desc"] = "Ammo packs you pick up also yield medical supplies and heals you for ##32## to ##40## health.\nCannot occur more than once every ##2 seconds##.\nIf the Gambler's current health is lower than another player's, the heal effect on the Gambler is increased by ##20%##. Stacks up to ##three times##.\n\nWhen you pick up ammo, you trigger an ammo pickup for ##50%## of normal pickup to other players in your team. This cannot occur more than once every ##5 seconds##.",
		["menu_deck14_9_desc"] = "Damage absorption from Hysteria Stacks on you is increased by ##100%##.\n\nYou and your crew will gain ##6%## max health and ##12%## stamina for every hostage up to ##4 times##. You and your crew will gain ##8%## damage reduction for having one or more hostages.\n\nWhen you get healed from picking up ammo packs, your teammates also get healed for ##50%## of the amount.\n\nYou gain ##20%## more health.",
		--Anarchist
		["menu_deck15_7_desc"] = "##50%## of your health is converted into ##120%## armor.\n\nEvery time the player gets shot, ##20%## dodge chance is gained. This effect is reset once the player dodges and will not occur for the next ##4 seconds##.",
		--Hacker
		["menu_deck21_1_desc"] = "Unlocks and equips the ##Pocket ECM Device##.\nChanging to another perk deck will make the Pocket ECM Device unavailable again. The Pocket ECM Device replaces your current throwable, it can be switched out if desired. While in game you can use the throwable key to activate the Pocket ECM Device.\n\nActivating the Pocket ECM Device before the alarm is raised will trigger the jamming effect, disabling all electronics and pagers for a ##6 second## duration.\n\nActivating the Pocket ECM Device after the alarm is raised will trigger the feedback effect, granting a chance to stun enemies on the map every second for a ##6 second## duration.\n\nThe Pocket ECM Device has ##2## charges with a ##100 second## cooldown timer, but each kill you perform will shorten the cooldown timer by ##10 seconds##.\n\nNote: Charges run on separate cooldowns. When both charges are used, the second charge will not run its cooldown or have it reduced by kills until the first charge's cooldown finishes.",
		["menu_deck21_5_desc"] = "Killing an enemy while the feedback effect is active will regenerate ##20## health and armor.\n\nIncreases dodge by ##15%##.",
		["menu_deck21_7_desc"] = "Killing at least ##1## enemy while the feedback or jamming effect is active will grant ##23## dodge for ##30 seconds##.\n\nThe time between swapping weapons is reduced for you by ##80%##.",
		["menu_deck21_9_desc"] = "Crew members killing enemies while the feedback effect is active will regenerate ##10## health.\n\nFurther increases dodge to ##30%##."
	} )

end)