/// @description Create cloud
if alarm[1] > 0{
	part_emitter_region(global.particle_system, global.emit_burst, x-4, x+4, y-2, y+2, ps_shape_rectangle, ps_distr_linear) //Set emitter region
	part_type_direction(global.p_cloud, 0, 359, 0, 0)
	part_emitter_burst(global.particle_system, global.emit_burst, global.p_cloud, 1)
}
