extends Node2D

@onready var top_boundary = $"Top_StaticBody2D/Top_CollisionShape2D"
@onready var left_boundary = $"Left_StaticBody2D/Left_CollisionShape2D"
@onready var right_boundary = $"Right_StaticBody2D/Right_CollisionShape2D"

func _ready():
	var viewport_size = get_viewport_rect().size

	# Create a new PlaneShape2D for each boundary
	var top_plane_shape = WorldBoundaryShape2D.new()
	var left_plane_shape = WorldBoundaryShape2D.new()
	var right_plane_shape = WorldBoundaryShape2D.new()

	# Top boundary
	top_plane_shape.normal = Vector2(0, 1) # Points upward
	top_plane_shape.distance = 0
	top_boundary.shape = top_plane_shape

	# Left boundary
	left_plane_shape.normal = Vector2(1, 0) # Points right
	left_plane_shape.distance = 0
	left_boundary.shape = left_plane_shape

	# Right boundary
	right_plane_shape.normal = Vector2(-1, 0) # Points left
	right_plane_shape.distance = viewport_size.x
	right_boundary.shape = right_plane_shape
