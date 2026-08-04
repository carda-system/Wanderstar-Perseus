/obj/item/organ/ob_snout
	name = "snout"
	desc = "You know, usually these are attached to their owner."
	icon_state = "snout"
	zone = BODY_ZONE_HEAD
	slot = ORGAN_SLOT_EXTERNAL_SNOUT
	external_bodyshapes = BODYSHAPE_SNOUTED
	restyle_flags = EXTERNAL_RESTYLE_FLESH
	bodypart_overlay = /datum/bodypart_overlay/mutant/ob/ob_snout
	organ_flags = parent_type::organ_flags | ORGAN_EXTERNAL
	dna_block = /datum/dna_block/feature/accessory/ob_snout
	/// Offset to apply to equipment worn on the mouth we give to the head.
	var/datum/worn_feature_offset/worn_mask_offset

/obj/item/organ/ob_snout/on_bodypart_insert(obj/item/bodypart/head/limb)
	. = ..()
	if(isnull(limb.worn_mask_offset))
		worn_mask_offset = limb.worn_mask_offset = new(
			attached_part = limb,
			feature_key = OFFSET_FACEMASK,
			offset_x = list("east" = 1, "west" = -1),
		)

/obj/item/organ/ob_snout/on_bodypart_remove(obj/item/bodypart/head/limb, movement_flags)
	if(worn_mask_offset)
		QDEL_NULL(worn_mask_offset)
		limb.worn_mask_offset = null
	return ..()

/datum/dna_block/feature/accessory/ob_snout
	feature_key = FEATURE_OB_SNOUT

/datum/dna_block/feature/ob_snout_color
	block_length = DNA_BLOCK_SIZE_COLOR
	feature_key = FEATURE_OB_SNOUT_COLOR

/datum/dna_block/feature/ob_snout_color/create_unique_block(mob/living/carbon/human/target)
	return sanitize_hexcolor(target.dna.features[FEATURE_OB_SNOUT_COLOR], include_crunch = FALSE)

/datum/dna_block/feature/ob_snout_color/apply_to_mob(mob/living/carbon/human/target, dna_hash)
	target.dna.features[FEATURE_OB_SNOUT_COLOR] = sanitize_hexcolor(get_block(dna_hash))
	target.update_body_parts()

/datum/bodypart_overlay/mutant/ob/ob_snout
	layers = list(EXTERNAL_ADJACENT = BODY_ADJ_LAYER)
	feature_key = FEATURE_OB_SNOUT
	draw_on_husks = HUSK_OVERLAY_GRAYSCALE
	offset_location = UPPER_BODY
	dna_color_source = FEATURE_OB_SNOUT_COLOR

/datum/bodypart_overlay/mutant/ob/ob_snout/can_draw_on_bodypart(obj/item/bodypart/bodypart_owner, mob/living/carbon/owner)
	return ..() && !(bodypart_owner.owner?.obscured_slots & HIDESNOUT)
