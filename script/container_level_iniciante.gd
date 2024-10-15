extends Node2D

var next_level_iniciante =1
var soma1 = 0
var soma2 = 0

func _ready():

	CONTROLADOR.marca_tecla= false
	get_tree().set_auto_accept_quit(false)
	nivel_level_iniciante()
	chama_level_iniciante()
	soma()
	GlobalIniciante.read()

func _physics_process(delta):
	
	match next_level_iniciante:
		1:
			$next_.show()
			$back_.hide()
			$nivel_1.show()
			$nivel_2.hide()

		2:
	
			$next_.show()
			$back_.show()
			$nivel_1.hide()
			$nivel_2.show()

func soma():
	soma1 = GlobalIniciante.savedata.level_1 +GlobalIniciante.savedata.level_2 +GlobalIniciante.savedata.level_3 +GlobalIniciante.savedata.level_4 +GlobalIniciante.savedata.level_5 +GlobalIniciante.savedata.level_6 +GlobalIniciante.savedata.level_7 +GlobalIniciante.savedata.level_8
	soma2 = GlobalIniciante.savedata.level_9 +GlobalIniciante.savedata.level_10 +GlobalIniciante.savedata.level_11 +GlobalIniciante.savedata.level_12 +GlobalIniciante.savedata.level_13 +GlobalIniciante.savedata.level_14 +GlobalIniciante.savedata.level_15 +GlobalIniciante.savedata.level_16

func chama_level_iniciante():
	soma()
	if soma1 ==8:
		next_level_iniciante=2
	
func nivel_level_iniciante():
	if CONTROLADOR.next_level_iniciante==1:
		next_level_iniciante = 1
	elif CONTROLADOR.next_level_iniciante ==2:
		next_level_iniciante = 2
	elif CONTROLADOR.next_level_iniciante ==3:
		next_level_iniciante = 3

func _on_next__pressed():
	if next_level_iniciante >=2:
		return
	next_level_iniciante +=1
	
func _on_back__pressed():
	if next_level_iniciante <=1:
		return
	next_level_iniciante -=1
	

