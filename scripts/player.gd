extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Only good for one time applied forces
	# apply_force(Vector2(25,0))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# physics process is ran at a fixed rate and not dependent on frame rate
func _physics_process(delta: float) -> void:
	apply_force(Vector2(25,0))
