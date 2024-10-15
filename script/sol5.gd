extends Area2D


# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass






func _on_sol5_body_entered(body):
	add_to_group(str(body)+"sol5")
	#print("entrou_do")
	pass # replace with function body


func _on_sol5_body_exited(body):
	
	if CONTROLADOR.acerto == 0:
		if CONTROLADOR.treino_on == false:
			Input.vibrate_handheld(250)
#			$error.play()
#			yield(get_tree().create_timer(0.5), "timeout" ) 
#			$error.stop()
			CONTROLADOR.vidas(-1)
			CONTROLADOR.add_erros(-1)
	CONTROLADOR.acerto = 0
	remove_from_group(str(body)+"sol5")
	#print("saiu_do")
	pass # replace with function body



	
	
