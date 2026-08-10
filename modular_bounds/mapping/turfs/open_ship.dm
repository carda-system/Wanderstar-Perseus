/turf/open/indestructible/ship_plating
	name = "interior floor plating"
	desc = "The floor of a ship, usually covering a terrible spider's web of piping and wiring below deck."
	icon = 'modular_bounds/mapping/turfs/icons/floors_ship.dmi'
	icon_state = "perseus_catwalk_below"
	footstep = FOOTSTEP_CATWALK
	barefootstep = FOOTSTEP_CATWALK
	clawfootstep = FOOTSTEP_CATWALK
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_turf = FALSE

/turf/open/floor/catwalk_floor/ship
	name = "floor grate"
	desc = "A grated floor panel to allow view of infrastructure underneath, covering air ducts, or the draining of messes."
	icon = 'modular_bounds/mapping/turfs/icons/floors_ship.dmi'
	icon_state = "perseus_catwalk_above"
	catwalk_type = "perseus_catwalk"
	baseturfs = /turf/open/indestructible/ship_plating
	floor_tile = null

/turf/open/floor/ship_tile
	name = "floor panel"
	desc = "A floor panel, made to stop people like you from chewing on the wires."
	icon = 'modular_bounds/mapping/turfs/icons/floors_ship.dmi'
	icon_state = "perseus_tile"
	base_icon_state = "perseus_tile"
	baseturfs = /turf/open/indestructible/ship_plating
	tiled_turf = FALSE

/turf/open/floor/ship_tile/white
	icon_state = "perseus_tile_white"
	base_icon_state = "perseus_tile_white"

/turf/open/floor/ship_tile/nonslip
	name = "high-grip floor cover"
	desc = "A floor panel with a rubber grid overtop to hopefully help people like you against slipping and cracking their heads on the ground."
	icon_state = "perseus_nonslip"
	base_icon_state = "perseus_nonslip"
