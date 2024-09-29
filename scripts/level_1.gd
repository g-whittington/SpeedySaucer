extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# The player starts inside the maze. On exit, the maze will emit a signal
# that we can handle here
func _on_maze_1_body_exited(body: Node2D) -> void:
	get_tree().reload_current_scene()
