extends Area2D

func _on_sol3_sus_body_entered(body):
	add_to_group(str(body)+"sol3_sus")
	
func _on_sol3_sus_body_exited(body):
	CONTROLADOR.acerto = 0
	remove_from_group(str(body)+"sol3_sus")

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
