extends RigidBody2D

onready var forward_point := $ForwardPoint


func movement():
	if Input.is_action_pressed("move_right"):
		linear_velocity.x += 1
	if Input.is_action_pressed("move_left"):
		linear_velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		linear_velocity.y += 1
	if Input.is_action_pressed("move_up"):
		linear_velocity.y -= 1
	if Input.is_action_pressed("rot_left"):
		angular_velocity -= 0.05
	if Input.is_action_pressed("rot_right"):
		angular_velocity += 0.05
		
	if Input.is_action_pressed("stabilize_vel"):
		linear_velocity = Vector2.ZERO
		angular_velocity = 0
		
		
func _physics_process(delta: float) -> void:
	movement()
	
