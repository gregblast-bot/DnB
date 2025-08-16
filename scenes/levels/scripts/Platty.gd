extends Sprite2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 500
 
# Called when the node enters the scene tree for the first time.
func _ready():
	pos = Vector2(600, 650)
	position = pos
#	Input.is_action_just_pressed("left")
#	Input.is_action_just_pressed("right")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# User input.
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
