extends KinematicBody2D

var x =200
var y = 200
var inicio = 0
var passou = 0
var level = 1
var shake = 1
var treme_tela = false
var erro = 0


func _ready():
	erro =0
	info()
	GlobalIniciante.curLevel = level
	GlobalIniciante.passou = passou
	posicao(x,y)
	
	
func _process(_delta):
	if treme_tela ==true:
		vibra_tela()
	if inicio==1:
		marca_nota("do4",320,530)
		marca_nota("re4",407,530)
		marca_nota("mi4", 495,530)
		marca_nota("fa4", 586,530)

func info():
	$info/Popup.show()
	yield(get_tree().create_timer(1.0), "timeout" ) 
	$info/Popup/primeira_nota.show()

func marca_nota(nota:String, _x:int, _y:int):
	if get_tree().get_nodes_in_group(str(self)+nota).size()>0:
		pos_marca(_x,_y)
		$Particles2D.show()
	
func acertou(nota:String) -> void:
	if get_tree().get_nodes_in_group(str(self)+nota).size()>0:
		CONTROLADOR.add_acerto(1)
		x = x+150
		posicao(x,y)
		
func errou(nota:String) -> void:
	if not get_tree().get_nodes_in_group(str(self)+nota).size()>0:
		treme_tela = true
		$temporizador.start()
		Input.vibrate_handheld(250)
		erro +=1
		$info/Popup/voce_errou/erros.text = str(erro)
	
func vibra_tela():
	$Camera2D.set_offset(Vector2(rand_range(-1.0,1.0)*shake, rand_range(-1.0,1.0)*shake))

func pos_marca(marc_x:int, marc_y:int):
	var marca = $Particles2D
	marca.position = Vector2(marc_x, marc_y)
	
func posicao(_x,_y):
	_x = x
	_y = y
	var seta = $player
	seta.position = Vector2(_x, _y)

func _on_start_pressed():
	$start2.stop()
	$start.hide()
	$START2.hide()
	$tela_1.play("tela_1")
	$notas_1.show()
	yield(get_tree().create_timer(1.0), "timeout" ) 
	$info/Popup/primeira_nota.hide()
	$info/Popup.hide()

func _on_tela_1_animation_finished(_tela_1):
	$player.show()

func _on_nova_animacao_body_entered(_body):
	$Particles2D.hide()
	if inicio ==1:
		$notas_1.hide()
		$sai_tela1.play("sai_tela1")
		$info/Popup.show()
		$info/Popup/vamos_dificultar.show()
		yield(get_tree().create_timer(3.0), "timeout" ) 
		$info/Popup/vamos_dificultar.hide()
		$info/Popup/sem_ajuda.show()
		yield(get_tree().create_timer(3.0), "timeout" ) 
		$info/Popup/sem_ajuda.hide()
		$info/Popup.hide()
		$notas_2.show()
		$tela_2.play("tela_2")
		
	if inicio == 2:
		$info/Popup.show()
		$info/Popup/parabens.show()
		$info/Popup/parabens.hide()
		
		if erro==0:
			$info/Popup/parabens.show()
			yield(get_tree().create_timer(2.0), "timeout" ) 
			$info/Popup/perfeito.show()
			yield(get_tree().create_timer(5.0), "timeout" ) 
			
		elif erro > 0:
			$info/Popup/parabens.show()
			yield(get_tree().create_timer(2.0), "timeout" ) 
			$info/Popup/poderia_melhorar.show()
			yield(get_tree().create_timer(2.0), "timeout" ) 
			$info/Popup/voce_errou.show()
			yield(get_tree().create_timer(5.0), "timeout" ) 
		$Particles2D.hide()
		$player.hide()
		$notas_2.hide()
		yield(get_tree().create_timer(1.0), "timeout" ) 
		passou = 1
		GlobalIniciante.save_level(GlobalIniciante.curLevel , passou)
		CONTROLADOR.level_iniciante=true
		level_iniciante()

func _on_tela_2_animation_finished(_tela_2):
	$player.show()
	x = 200
	posicao(x,y)
	
func _on_inicio_body_entered(_body):
	inicio +=1

func _on_C4_pressed():
	acertou("do4")
	errou("do4")

func _on_D4_pressed():
	acertou("re4")
	errou("re4")

func _on_E4_pressed():
	acertou("mi4")
	errou("mi4")

func _on_F4_pressed():
	acertou("fa4")
	errou("fa4")
	
func _on_temporizador_timeout():
	treme_tela =false
	
func _on_A4_pressed():
	errou("la4")
	
func _on_D5_pressed():
	errou("re5")

func _on_C5_pressed():
	errou("do5")

func _on_G4_pressed():
	errou("sol4")

func _on_G3_pressed():
	errou("sol3")

func _on_F5_pressed():
	errou("fa5")

func _on_A3_pressed():
	errou("la3")

func _on_B4_pressed():
	errou("si4")

func _on_E5_pressed():
	errou("mi5")
	
func _on_G5_pressed():
	errou("sol5")
	
func _on_C5sus_pressed():
	errou("do5_sus")
	
func _on_A4sus_pressed():
	errou("la4_sus")

func _on_D5sus_pressed():
	errou("re5_sus")
	
func _on_G4sus_pressed():
	errou("sol4_sus")

func _on_F4sus_pressed():
	errou("fa4_sus")

func _on_D4sus_pressed():
	errou("re4_sus")

func _on_C4sus_pressed():
	errou("do4_sus")
	
func _on_B3_pressed():
	errou("si3")
	
func _on_A3sus_pressed():
	errou("la3_sus")
	
func _on_G3sus_pressed():
	errou("sol3_sus")
	
func _on_F5sus_pressed():
	errou("fa5_sus")
	
func level_iniciante():
	if GlobalIniciante.curLevel >=1 and GlobalIniciante.curLevel <= 8:
		CONTROLADOR.next_level_iniciante = 1
		CONTROLADOR.level_iniciante =true
		transition.fade_to("res://cenas/main_screen.tscn")
	elif  GlobalIniciante.curLevel >=9 and GlobalIniciante.curLevel <= 16:
		CONTROLADOR.next_level_iniciante = 2
		CONTROLADOR.level_iniciante =true
		transition.fade_to("res://cenas/main_screen.tscn")
	elif  GlobalIniciante.curLevel >=17 and GlobalIniciante.curLevel <= 24:
		CONTROLADOR.next_level_iniciante = 3
		CONTROLADOR.level_iniciante =true
		transition.fade_to("res://cenas/main_screen.tscn")
	
