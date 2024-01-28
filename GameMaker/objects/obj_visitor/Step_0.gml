/// @description Charge and attack
// Return
if distance_to_point(exit_entrance.x, exit_entrance.y) > 0 {
	move_avoiding(exit_entrance.x, exit_entrance.y, walk_speed)
}
else {
	instance_destroy()
}