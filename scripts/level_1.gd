extends Node2D

# starts inside the maze. On exit, the maze will emit a signal
# that we can handle here
func _on_maze_1_body_exited(body: Node2D) -> void:
	get_tree().reload_current_scene()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
