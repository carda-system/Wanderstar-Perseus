/datum/round_operation_type
	abstract_type = /datum/round_operation_type
	/// The name of the operation as displayed to players
	var/operation_name = "Operation Untitled"
	/// A brief description of the operation and what it may contain
	var/operation_description = "Intelligence reports have no data for this operation. Proceed with caution."
	/// List of mission datums in order of when they will be run
	var/list/missions_queue = list()
	/// The mission we are currently running
	var/datum/lazy_template/mission_type/current_mission
	/// The time that the operation started in world.time
	var/operation_start_time
	/// The file path for text replacements used in operation names
	var/text_replace_path = "~outerbounds/operations_missions.json"

/datum/round_operation_type/New()
	set_up_operation_presentation()
	build_mission_queue()
	operation_start_time = world.time
	START_PROCESSING(SSoperations_manager, src)

/datum/round_operation_type/process(seconds_per_tick)
	if(!isnull(current_mission))
		if(current_mission.mission_status == MISSION_STATUS_RUNNING)
			current_mission.tick(seconds_per_tick)

/// Loads the current mission's map into the world and starts the mission
/datum/round_operation_type/proc/start_current_mission()
	current_mission.lazy_load()
	current_mission.mission_status = MISSION_STATUS_RUNNING

/// Should be used for anything visual or player-facing for the operation, such as title, description, or an icon
/datum/round_operation_type/proc/set_up_operation_presentation()
	SHOULD_CALL_PARENT(FALSE)
	CRASH("Operation [src] has not properly implmeneted a set_up_operation_presentation().")

/// Constructs a list of mission type datums depending on operation length, must be overwritten by children
/datum/round_operation_type/proc/build_mission_queue()
	SHOULD_CALL_PARENT(FALSE)
	CRASH("Operation [src] has not properly implmeneted a build_mission_queue().")
