/datum/lazy_template/mission_type
	abstract_type = /datum/lazy_template/mission_type
	key = null
	map_dir = "_maps/outer_bounds/missions"
	map_name = null
	/// List of all mission objectives to get completed before this mission is considered a success
	var/list/objectives = list()
	/// List of non-critical secondary objectives we keep track of
	var/list/secondary_objectives = list()
	/// The current status of the mission
	var/mission_status = MISSION_STATUS_LOADING

/datum/lazy_template/mission_type/New()
	. = ..()
	create_objectives_lists()

/// Deletes the map that the mission generated
/datum/lazy_template/mission_type/proc/scrub_mission_map()
	if(length(reservations))
		var/datum/turf_reservation/reservation = reservations[1]
		reservation.Release()

/datum/lazy_template/mission_type/proc/tick(seconds_per_tick)
	SHOULD_CALL_PARENT(FALSE)
	CRASH("Mission type [src] has not properly implemented tick()")

/datum/lazy_template/mission_type/proc/create_objectives_lists()
	SHOULD_CALL_PARENT(FALSE)
	CRASH("Mission type [src] has not properly implemented create_objectives_lists().")
