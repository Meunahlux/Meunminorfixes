var/global/list/empty_playable_ai_cores = list()

/hook/gamemode_selected/proc/spawn_empty_ai(var/datum/game_mode/mode)
	if("AI" in mode.disabled_jobs)
		return 1	// Don't make empty AI's if you can't have them (also applies to Malf)
	for(var/obj/effect/landmark/start/S in landmarks_list)
		if(S.name != "AI")
			continue
		if(locate(/mob/living) in S.loc)
			continue
		empty_playable_ai_cores += new /obj/structure/AIcore/deactivated(get_turf(S))

	return 1

/hook/gamemode_start_failed/proc/despawn_empty_ai(var/datum/game_mode)
	for(var/obj/structure/AIcore/deactivated/core in empty_playable_ai_cores)
		empty_playable_ai_cores -= core
		qdel(core)
	return 1

/mob/living/silicon/ai/verb/wipe_core()
	set name = "Wipe Core"
	set category = "OOC"
	set desc = "Wipe your core. This is functionally equivalent to cryo or robotic storage, freeing up your job slot."

	if(istype(loc, /obj/item))
		to_chat(src, "You cannot wipe your core when you are on a portable storage device.")
		return

	// Guard against misclicks, this isn't the sort of thing we want happening accidentally
	if(alert("WARNING: This will immediately wipe your core and ghost you, removing your character from the round permanently (similar to cryo and robotic storage). Are you entirely sure you want to do this?",
					"Wipe Core", "No", "No", "Yes") != "Yes")
		return

	if(istype(loc, /obj/item))
		to_chat(src, "You cannot wipe your core when you are on a portable storage device.")
		return

	if(is_special_character(src))
		log_and_message_admins("removed themselves from the round via Wipe Core")

	// We warned you.
	empty_playable_ai_cores += new /obj/structure/AIcore/deactivated(loc)
	GLOB.global_announcer.autosay("[src] has been moved to intelligence storage.", "Artificial Intelligence Oversight")

	//Handle job slot/tater cleanup.
	clear_client()
