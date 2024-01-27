/// @description Shoot ball

if selected{
	physics_apply_impulse(contact_x, contact_y, (contact_x - mouse_x)*hit_scalar, (contact_y - mouse_y)*hit_scalar)
	contact_x = -1
	contact_y = -1
	selected = false
}







