extends CharacterBody2D

const SPEED = 200
const GRAVITY = 800
const DIRECTION_CHANGE_INTERVAL = 1.0 # seconds

var move_direction = 0
var time_since_direction_change = 0.0

func _ready():
	randomize()

func _physics_process(delta):
	# Apply gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	else:
		velocity.y = 0

	# Change direction every interval
	time_since_direction_change += delta
	if time_since_direction_change >= DIRECTION_CHANGE_INTERVAL:
		time_since_direction_change = 0.0
		move_direction = randi() % 3 - 1  # -1, 0, or 1

	velocity.x = move_direction * SPEED

	# Move the character using velocity
	move_and_slide()
