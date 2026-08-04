/datum/preference/choiced/species_feature/colorable
	abstract_type = /datum/preference/choiced/species_feature/colorable
	savefile_key = null
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = null
	should_generate_icons = TRUE
	relevant_organ = null
	/// The associated bodypart color preference
	var/datum/preference/color_preference = /datum/preference/color

/datum/preference/choiced/species_feature/colorable/icon_for(value)
	return generate_lizard_side_shot(get_accessory_for_value(value), relevant_organ.bodypart_overlay.feature_key, include_snout = FALSE)

/datum/preference/choiced/species_feature/colorable/compile_constant_data()
	var/list/data = ..()
	data[SUPPLEMENTAL_FEATURE_KEY] = color_preference::savefile_key
	return data
