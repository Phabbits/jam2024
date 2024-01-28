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
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_contractor, {
			blueprint : build_blueprint,
		})
	}
}

function stc_activity_mow() : stc_activity() constructor {
	static start = function() {
		var entrance = get_entrance()
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_mower)
	}
}

function stc_activity_respond() : stc_activity() constructor {
	static start = function() {
		var entrance = get_entrance()
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_responder)
	}
}

function stc_activity_attack() : stc_activity() constructor {
	static start = function() {
		var entrance = get_entrance()
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_soldier)
	}
}