function setup_particles(){
	global.particle_system = part_system_create()		//Create the particle system
	part_system_depth(global.particle_system, -100)
	global.emit_burst = part_emitter_create(global.particle_system) //Create particle emitter
	
	//Cloud particles
	global.p_cloud = part_type_create()				//Create the first particle
	part_type_shape(global.p_cloud, pt_shape_cloud)	//Make the particle a cloud
	part_type_scale(global.p_cloud, 6, 6)			//Set the scale of the particle
	part_type_size(global.p_cloud, .2, .3, -.01, 0)	//Set the size of the particle
	part_type_color2(global.p_cloud, c_grey, c_dkgray)//Set the changing color of particle
	part_type_alpha2(global.p_cloud, 1, 1)			//Set the changing alpha of particle
	part_type_speed(global.p_cloud, -3, 3, 0, 0)	//Set the random speed of particle
	part_type_life(global.p_cloud, 20, 40)			//How long the particle will last

	//Spark particle
	global.p_spark = part_type_create()				//Create the first particle
	part_type_shape(global.p_spark, pt_shape_spark)	//Make the particle a square
	part_type_scale(global.p_spark, 1, 1)			//Set the scale of the particle
	part_type_size(global.p_spark, .2, .3, -.01, 0)	//Set the size of the particle
	part_type_color2(global.p_spark, c_red, c_yellow)//Set the changing color of particle
	part_type_alpha2(global.p_spark, 1, 1)			//Set the changing alpha of particle
	part_type_speed(global.p_spark, 1.5, 2, 0, 0)	//Set the random speed of particle
	part_type_life(global.p_spark, 20, 40)			//How long the particle will last
}