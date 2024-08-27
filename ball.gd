extends RigidBody2D

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("launch"):
		var impulse=Vector2(1,-1)*200
		apply_impulse(impulse,Vector2.ZERO)
