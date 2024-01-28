// Activities
function stc_activity() constructor {
	static start = function() {
		
	}
}

function stc_activity_build(_blueprint) : stc_activity() constructor {
	// Blueprint of structure to build
	build_blueprint = _blueprint
	
	static start = function() {
		var entrance = get_entrance(true, false)
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_contractor, {
			blueprint : build_blueprint,
		})
	}
}

function stc_activity_mow() : stc_activity() constructor {
	static start = function() {
		var entrance = get_entrance(false, true)
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_mower)
	}
}

function stc_activity_respond() : stc_activity() constructor {
	static start = function() {
		var entrance = get_entrance(true, false)
		instance_create_layer(entrance.x, entrance.y, "Instances", obj_responder)
	}
}

function stc_activity_attack(_amount=1) : stc_activity() constructor {
	amount =_amount
	static start = function() {
		repeat amount {
			var entrance = get_entrance(true, false)
			instance_create_layer(entrance.x, entrance.y, "Instances", obj_soldier)
		}
	}
}

function stc_activity_visit(_amount=1) : stc_activity() constructor {
	amount =_amount
	static start = function() {
		repeat amount {
			var entrance = get_entrance(true, true)
			var _exit_entrance = get_entrance(true, true)
			instance_create_layer(entrance.x, entrance.y, "Instances", obj_visitor, {
				exit_entrance : _exit_entrance,
			})
		}
	}
}