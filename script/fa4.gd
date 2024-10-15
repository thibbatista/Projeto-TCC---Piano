extends Area2D

func _on_fa4_body_entered(body):
	add_to_group(str(body)+"fa4")
	
func _on_fa4_body_exited(body):
	
	if CONTROLADOR.acerto == 0:
		if CONTROLADOR.treino_on == false:
			Input.vibrate_handheld(250)
			CONTROLADOR.vidas(-1)
			CONTROLADOR.add_erros(-1)
	CONTROLADOR.acerto = 0
	
	remove_from_group(str(body)+"fa4")
	
