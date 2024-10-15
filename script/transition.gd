extends CanvasLayer


var next_path

func fade_to(patch):
	next_path = patch
	get_node("anin").play("fade")
	
func change_scene():
	if next_path != null:
		get_tree().change_scene(next_path)
