/// @description Pocket

if place_meeting(x, y, obj_pocket){
	instance_destroy()
}

if fire_delay <= 0{
	//Create fire particles
	part_emitter_region(global.particle_system, global.emit_burst, x-8, x+8, y-8, y+8, ps_shape_rectangle, ps_distr_linear) //Set emitter region
	part_type_direction(global.p_spark, 0, 359, 0, 0)
	part_emitter_burst(global.particle_system, global.emit_burst, global.p_spark, 1)
	fire_delay = fire_delay_max
}
fire_delay -= 1