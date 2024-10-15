extends Node2D

signal pausa
signal pausa_2
var last_anim_pos_partitura = 0.0
var last_anim_pos_aprender = 0.0
var last_anim = null

func _ready():
	
	if CONTROLADOR.level_iniciante==true:
		
		$aprender_notas2.hide()
		$aprender_notas.play("surgindo")

	CONTROLADOR.marca_tecla= false
	get_tree().set_auto_accept_quit(false)
	

func _on_quit_pressed():
	get_tree().quit()
	

func _on_volume_pressed():
	$volume.hide()
	$mute.show()
	$musica.volume_db = -100
	
func _on_mute_pressed():
	$volume.show()
	$mute.hide()
	$musica.volume_db = 0

	
func continua_animacao_aprender():
	if last_anim_pos_aprender >0:
		$aprender_notas.play("surgindo")
		$aprender_notas.seek(last_anim_pos_aprender)
	else:
		$aprender_notas.play("surgindo")
		$aprender_notas.seek(0)
		
func continua_animation_partitura():
	if last_anim_pos_partitura >0:
		$tocar_partitura.play("surgindo")
		$tocar_partitura.seek(last_anim_pos_partitura)
		
	else:
		$tocar_partitura.play("surgindo")
		$tocar_partitura.seek(0)
		
func pause_animation_partitura():
	last_anim_pos_partitura = $tocar_partitura.current_animation_position
	$tocar_partitura.stop()
	
func pause_animation_aprender():
	last_anim_pos_aprender = $aprender_notas.current_animation_position
	$aprender_notas.stop()
	
func _on_main_screen_pausa():
	pause_animation_partitura()

func _on_home_partitura_pressed():
	continua_animation_partitura()
	last_anim_pos_partitura = 0

func _on_home_aprender_pressed():
	continua_animacao_aprender()
	last_anim_pos_aprender=0

func _on_aprender_notas2_pressed():
	
	$aprender_notas2.hide()
	if last_anim_pos_aprender>0:
		return
	if last_anim_pos_partitura > 0:
		print("animacao tocar partitura em execucao")
		return
	if last_anim_pos_partitura == 0:
		$aprender_notas.play("surgindo")

func _on_main_screen_pausa_2():
	pause_animation_aprender()
	
func transition(nivel: String):
	transition.fade_to("res://cenas/aprender/nivel_" + nivel + "/licao" + nivel + ".tscn")

func _on_level_1_pressed():
	transition("1")
	
func _on_level_2_pressed():
	transition("2")

func _on_level_3_pressed():
	transition("3")

func _on_level_4_pressed():
	transition("4")

func _on_level_5_pressed():
	transition("5")

func _on_level_6_pressed():
	transition("6")

func _on_level_7_pressed():
	transition("7")

func _on_level_8_pressed():
	transition("8")

func _on_level_9_pressed():
	transition("9")

func _on_level_10_pressed():
	transition("10")

func _on_level_11_pressed():
	transition("11")

func _on_level_12_pressed():
	transition("12")

func _on_level_13_pressed():
	transition("13")

func _on_level_14_pressed():
	transition("14")

func _on_level_15_pressed():
	transition("15")

func _on_level_16_pressed():
	transition("16")

func _on_level_17_pressed():
	transition("17")

func _on_level_18_pressed():
	transition("18")

func _on_level_19_pressed():
	transition("19")

func _on_level_20_pressed():
	transition("20")

func _on_level_21_pressed():
	transition("21")

func _on_level_22_pressed():
	transition("22")

func _on_level_23_pressed():
	transition("23")

func _on_level_24_pressed():
	transition("24")

func _on_tocar_partitura_animation_finished(_anim_name):
	$aprender_notas2.show()
	
func _on_aprender_notas_animation_finished(_anim_name):
	$aprender_notas2.show()
	


func _on_Button_pressed():
	pass # Replace with function body.
