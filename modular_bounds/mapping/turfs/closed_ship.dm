/turf/closed/indestructible/ship_interior
	name = "interior plating"
	desc = "Interior hull panels used to divide rooms where the other side of the wall isn't exposed to the exterior of the ship."
	icon = 'icons/~outerbounds/turfs/closed/perseus_interior.dmi'
	icon_state = "perseus_interior-0"
	base_icon_state = "perseus_interior"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_WALLS + SMOOTH_GROUP_CLOSED_TURFS
	canSmoothWith = SMOOTH_GROUP_WALLS

/turf/closed/indestructible/ship_interior/white
	icon = 'icons/~outerbounds/turfs/closed/perseus_interior_white.dmi'
	icon_state = "perseus_interior_white-0"
	base_icon_state = "perseus_interior_white"

/turf/closed/indestructible/perseus
	name = "hull plating"
	desc = "The exterior hull plating of the Wanderstar Perseus, all that stands between you and enemy fire when on a mission. Say your thanks."
	icon = 'icons/~outerbounds/turfs/closed/perseus_exterior.dmi'
	icon_state = "perseus_exterior-0"
	base_icon_state = "perseus_exterior"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_DIAGONAL_CORNERS
	smoothing_groups = SMOOTH_GROUP_WALLS + SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_PLASTINUM_WALLS
	canSmoothWith = SMOOTH_GROUP_PLASTINUM_WALLS

/turf/closed/indestructible/perseus/nodiagonal
	icon_state = MAP_SWITCH("perseus_exterior-0", "perseus_exterior-15")
	smoothing_flags = SMOOTH_BITMASK

/turf/closed/indestructible/leo
	name = "dropship hull"
	desc = "The desert-tan painted exterior of the dropship Leo. It was repainted once back when crews were still required to repaint \
		dropships in new mission areas back in 2524, and never changed again once the requirement was dropped."
	icon = 'icons/~outerbounds/turfs/closed/leo_exterior.dmi'
	icon_state = "leo_exterior-0"
	base_icon_state = "leo_exterior"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_DIAGONAL_CORNERS
	smoothing_groups = SMOOTH_GROUP_WALLS + SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_TITANIUM_WALLS
	canSmoothWith = SMOOTH_GROUP_TITANIUM_WALLS

/turf/closed/indestructible/leo/nodiagonal
	icon_state = MAP_SWITCH("leo_exterior-0", "leo_exterior-15")
	smoothing_flags = SMOOTH_BITMASK

/turf/closed/indestructible/diogenes
	name = "dropship hull"
	desc = "The navy blue exterior of the dropship Diogenes, named after the shipmind that pilots it. While crews are not required to repaint \
		their ships from factory standard, Diogenes prefers the style it adds."
	icon = 'icons/~outerbounds/turfs/closed/diogenes_exterior.dmi'
	icon_state = "diogenes_exterior-0"
	base_icon_state = "diogenes_exterior"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_DIAGONAL_CORNERS
	smoothing_groups = SMOOTH_GROUP_WALLS + SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_TITANIUM_WALLS
	canSmoothWith = SMOOTH_GROUP_TITANIUM_WALLS

/turf/closed/indestructible/diogenes/nodiagonal
	icon_state = MAP_SWITCH("diogenes_exterior-0", "diogenes_exterior-15")
	smoothing_flags = SMOOTH_BITMASK
