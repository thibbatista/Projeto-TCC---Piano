extends Node2D
signal notas_menu
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	play_menu(2)
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func play_menu(notas):
	for d in range(notas):
		var nota = get_child(d)
		nota.play_menu()
		yield(nota  , "finished")
		emit_signal("notas_menu")
