extends RigidBody2D

@export var move_force := 500

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
	
	# Basic player movement checking if/when keys are pressed
	if Input.is_action_pressed("up"):
		apply_force(Vector2(0,-move_force))
	if Input.is_action_pressed("down"):
		apply_force(Vector2(0,move_force))
	if Input.is_action_pressed("left"):
		apply_force(Vector2(-move_force,0))
	if Input.is_action_pressed("right"):
		apply_force(Vector2(move_force,0))
