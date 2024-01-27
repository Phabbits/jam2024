/// @description Finish construction
instance_create_layer(Marker.x, Marker.y, "Instances", blueprint.structure)
instance_destroy(Marker)
instance_destroy(self)