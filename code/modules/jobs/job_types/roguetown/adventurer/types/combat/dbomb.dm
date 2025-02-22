/datum/advclass/dbomb
	name = "Vagrant"
	tutorial = "Dwarves like to blow things up."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(/datum/species/dwarf/mountain)
	outfit = /datum/outfit/job/roguetown/adventurer/dbomb
	traits_applied = list(TRAIT_HEAVYARMOR)
	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/dbomb/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/horned
	pants = /obj/item/clothing/under/roguetown/trou
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/rogueweapon/huntingknife
	beltr = /obj/item/flashlight/flare/torch
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/iron
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	backl = /obj/item/storage/backpack/rogue/backpack
	backpack_contents = list(/obj/item/bomb = 1, /obj/item/flint = 1, /obj/item/reagent_containers/glass/mortar = 1, /obj/item/pestle = 1, /obj/item/natural/rock/coal = 3)
	if(prob(50))
		beltr = /obj/item/rogueweapon/pick
	else
		beltr = /obj/item/rogueweapon/hammer
	H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.change_stat("strength", 1)
	H.change_stat("endurance", 1)

	for(var/datum/quirk/nobag/NB in H.roundstart_quirks)
		backpack_contents = null
		backl = null
		break
