PROCESSING_SUBSYSTEM_DEF(operations_manager)
	name = "Operations Manager"
	ss_flags = SS_BACKGROUND
	wait = 5 SECONDS
	can_fire = FALSE
	/// List of every possible operation we can pick from
	var/list/all_operations = list()
	/// The currently running operation for this round, if any
	var/datum/round_operation_type/running_operation

/datum/controller/subsystem/processing/operations_manager/Initialize()
	collect_operations_list()
	return SS_INIT_SUCCESS

/// Collects every possible operation type into one list for picking from
/datum/controller/subsystem/processing/operations_manager/proc/collect_operations_list()
	all_operations = valid_subtypesof(/datum/round_operation_type)

/datum/controller/subsystem/processing/operations_manager/fire()
	if(isnull(running_operation))
		return // If we aren't running an operation, don't bother firing
