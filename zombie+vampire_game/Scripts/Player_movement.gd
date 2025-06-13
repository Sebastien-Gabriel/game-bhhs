extends CharacterBody2D

# Declare a reference to the player
var player

const SPEED = 200
const JUMP_VELOCITY = -400
const GRAVITY = 800

func _physics_process(delta):
	# Apply gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Horizontal movement
	var direction = 0
	if Input.is_action_pressed("ui_right"):
		direction += 1
	if Input.is_action_pressed("ui_left"):
		direction -= 1


	velocity.x = direction * SPEED
	# Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()
