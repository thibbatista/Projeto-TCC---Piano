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




func _on_si4_body_entered(body):
	add_to_group(str(body)+"si4")
	pass # replace with function body


func _on_si4_body_exited(body):
	CONTROLADOR.acerto = 0
	remove_from_group(str(body)+"si4")
	pass # replace with function body


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # replace with function body
