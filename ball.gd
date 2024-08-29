extends RigidBody2D
@export var power_change_rate=100
@export var power=200


func _process(_delta: float) -> void:
	
	if Input.is_action_pressed("increase_power"):
		power+=10* _delta
	elif Input.is_action_pressed("decrease_power"):
		power -= 10* _delta
	
	print(power)
	
	
	if Input.is_action_just_pressed("launch"):
		var impulse=Vector2(1,0)*power
		apply_impulse(impulse.rotated(-TAU/8))
