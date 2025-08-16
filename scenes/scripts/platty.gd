extends CharacterBody2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 500
var screen_size
var x_pos
var y_pos
var platty_size
 
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	x_pos = get_viewport_rect().size.x
	y_pos = get_viewport_rect().size.y
	pos = Vector2(x_pos/2, y_pos)
	position = pos
	platty_size = $Platty_Sprite2D.texture.get_size()/2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# User input.
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
	position = position.clamp(Vector2.ZERO+platty_size, screen_size-platty_size)
