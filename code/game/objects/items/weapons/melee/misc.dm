/obj/item/weapon/melee/whip
	name = "whip"
	desc = "A generic whip."
	icon_state = "chain"
	item_state = "chain"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 10
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 4)
	attack_verb = list("flicked", "whipped", "lashed")


/obj/item/weapon/melee/whip/abyssal
	name = "abyssal whip"
	desc = "A weapon from the abyss. Requires 70 attack to wield."
	icon_state = "whip"
	item_state = "whip"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 16 //max hit with 60 strength and no equipment. Duel Arena no No forfeit - Snapshot
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 4)
	attack_verb = list("flicked", "whipped", "lashed")

/obj/item/weapon/melee/whip/chainofcommand
	name = "chain of command"
	desc = "A tool used by great men to placate the frothing masses."
	attack_verb = list("flogged", "whipped", "lashed", "disciplined")
	icon_state = "chain"
	item_state = "whip"


/obj/item/weapon/melee/whip/captainsdaughter
	name = "captain's daughter"
	desc = "Used to discipline disobediant spacers who've let the cat out of the bag."
	attack_verb = list("flogged", "whipped", "lashed", "disciplined")
	icon = 'icons/urist/items/uristweapons.dmi'
	item_icons = DEF_URIST_INHANDS
	icon_state = "catwhip"
	item_state = "catwhip"


/obj/item/weapon/material/sword/replica/officersword
	name = "fleet officer's sword"
	desc = "A polished sword issued to officers of the fleet."
	icon_state = "officersword"
	item_state = "officersword"
	slot_flags = SLOT_BELT
	applies_material_colour = FALSE

/obj/item/weapon/material/sword/replica/officersword/army
	name = "army NCO's sword"
	desc = "A polished sword issued to SCG Army NCOs."
	icon_state = "armysword"

/obj/item/weapon/material/sword/replica/officersword/armyofficer
	name = "army officer's sword"
	desc = "A curved sword issued to SCG Army officers."
	icon_state = "armyofficersword"
	item_state = "armyofficersword"

/obj/item/weapon/material/sword/replica/officersword/pettyofficer
	name = "chief petty officer's cutlass"
	desc = "A polished cutlass issued to chief petty officers of the fleet."
	icon_state = "pettyofficersword"
	item_state = "pettyofficersword"
