extends Area2D


# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass





func _on_la3_sus_body_entered(body):
	add_to_group(str(body)+"la3_sus")
	#print("entrou_do")
	pass # replace with function body


func _on_la3_sus_body_exited(body):
	
	if CONTROLADOR.acerto == 0:
		if CONTROLADOR.treino_on == false:
			Input.vibrate_handheld(250)
#			$error.play()
#			yield(get_tree().create_timer(0.5), "timeout" ) 
#			$error.stop()
			CONTROLADOR.vidas(-1)
			CONTROLADOR.add_erros(-1)
	CONTROLADOR.acerto = 0
	remove_from_group(str(body)+"la3_sus")
	#print("saiu_do")
	pass # replace with function body


