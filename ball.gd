extends RigidBody2D
@export var power=200
@export var power_change_rate=100



func _process(delta: float) -> void:
	var power_axis=Input.get_axis("decrease_power", "increase_power")
	power+=power_axis * power_change_rate * delta	
	power=clampf(power,0,1000)
	
	
	if Input.is_action_just_pressed("launch"):
		var x_cor=Input.get_action_strength("move_left") - Input.get_action_strength("move_right")
		var y_cor=Input.get_action_strength("move_up") - Input.get_action_strength("move_down")
		var impulse=Vector2(x_cor,y_cor)*power
		apply_impulse(impulse.rotated(-TAU/8))
