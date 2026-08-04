/datum/bodypart_overlay/mutant/ob
	/// If we have a dna color source to check
	var/dna_color_source

/datum/bodypart_overlay/mutant/ob/color_image(image/overlay, obj/item/bodypart/limb, layer_index)
	if(dna_color_source && !isnull((limb.owner?.dna.features[dna_color_source])))
		overlay.color = limb.owner.dna.features[dna_color_source]
	else
		overlay.color = sprite_datum.color_src ? (dye_color || draw_color) : null
