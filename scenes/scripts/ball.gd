extends RigidBody2D

var velocity: Vector2 = Vector2.ZERO
var direction = Vector2(0, 0)
var screen_size
var x_pos
var y_pos
 
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	x_pos = get_viewport_rect().size.x
	y_pos = get_viewport_rect().size.y - 50
	position = Vector2(x_pos/2, y_pos)
		
func _physics_process(delta):
	# Set direction based on whether lauch is initiated
	if Input.is_action_just_pressed("launch"):
		# Apply an impulse to make the body jump
		direction = Vector2(0, 100)
		apply_central_impulse(direction)
