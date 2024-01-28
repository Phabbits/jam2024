// Events are activites after time
function stc_event(_timer, _activity, _prerequisites=function(){return true}) constructor {
	timer = _timer
	activity = _activity
	// Function that when calculated returns whether prerequisites are satisfied
	prerequisites = _prerequisites
}