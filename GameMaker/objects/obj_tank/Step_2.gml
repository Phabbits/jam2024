/// @description Rotate towards target when stopped
event_inherited()

if speed == 0 and instance_exists(Target) {
	image_angle = point_direction(x, y, Target.x, Target.y)
}