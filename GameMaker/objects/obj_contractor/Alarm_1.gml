/// @description Finish construction
// Replace marker with building
instance_create_layer(Marker.x, Marker.y, "Instances", blueprint.structure)
instance_destroy(Marker)
show_speech_build = false

// Storyline flags
obj_conductor.first_house_built = true

// Contractor exits scene
instance_destroy(self)