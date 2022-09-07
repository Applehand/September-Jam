extends KinematicBody2D

export (int) var speed = 500

var velocity = Vector2.ZERO
const acceleration = 0.3

func get_input():
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	if not Input:
		velocity *= acceleration

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
