// Activities
function stc_activity() constructor {
	static start = function() {
		
	}
}

function stc_activity_build(_blueprint) : stc_activity() constructor {
	// Surveyor enters
	// Pick entrance
	// Create surveyor

	// Marks random plot
	// Surveyor leaves
	// Contractors enter
	// Builds building
	// Contractors leave
	// Residents enter
	// Residents enter building
	
	build_blueprint = _blueprint
	
	static start = function() {
		var entrance = get_entrance()
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_surveyor, {
			blueprint : build_blueprint,
		})
	}
}

