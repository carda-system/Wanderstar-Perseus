/datum/preference/choiced/species_feature/colorable/snout
	savefile_key = "feature_ob_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE
	relevant_organ = /obj/item/organ/ob_snout
	color_preference = /datum/preference/color/mutant_part_color/snout

/datum/preference/color/mutant_part_color/snout
	savefile_key = "feature_ob_snout_color"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_inherent_trait = TRAIT_MUTANT_COLORS
	target_feature = FEATURE_OB_SNOUT_COLOR
