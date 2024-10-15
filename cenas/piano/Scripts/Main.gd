extends Node2D

var D4sus = false
var E4 = false
var G3 =false
var G3sus = false
var A3 = false
var A3sus = false
var B3 = false
var C4 = false
var C4sus = false
var D4 = false
var F4 = false
var F4sus = false
var G4 = false
var G4sus = false
var A4 = false
var A4sus = false
var B4 = false
var C5 = false
var C5sus = false
var D5 = false
var D5sus = false
var E5 = false
var F5 = false
var F5sus = false
var G5 = false

#propriedades Tween
export var initial_val = 0
export var final_val = -80
export var duration: float = 1.00
export var trans_type = 0
export var ease_type = 2
export var delay: float = 0
export var transition_duration = 1.00
export var transition_type = 1 # TRANS_SINE

func _ready():
	$sobreposta/G3_DOWN.hide()
	$sobreposta/A3_down.hide()
	$sobreposta/B3_down.hide()
	$sobreposta/C4_DOWN.hide()
	$sobreposta/D4_down.hide()
	$sobreposta/E4_down.hide()
	$sobreposta/F4_DOWN.hide()
	$sobreposta/G4_DOWN.hide()
	$sobreposta/A4_down.hide()
	$sobreposta/B4_DOWN.hide()
	$sobreposta/C5_DOWN.hide()
	$sobreposta/D5_DOWN.hide()
	$sobreposta/E5_DOWN.hide()
	$sobreposta/F5_DOWN.hide()
	$sobreposta/G5_DOWN.hide()
	
	
func _on_C4_pressed():
	$sobreposta/C4_DOWN.show()
	$sobreposta/C4_UP.hide()
	tween_out($Sounds/GrandPiano/C4)
	$Sounds/GrandPiano/C4.volume_db=0
	$Sounds/GrandPiano/C4.play()
	C4 =true


func _on_C4_released():
	fade_out($Sounds/GrandPiano/C4)
	$sobreposta/C4_UP.show()
	$sobreposta/C4_DOWN.hide()
	C4=false
	



func _on_D4_pressed():
	$sobreposta/D4_down.show()
	$sobreposta/D4_up.hide()
	tween_out($Sounds/GrandPiano/D4)
	$Sounds/GrandPiano/D4.volume_db=0
	$Sounds/GrandPiano/D4.play()
	D4 =true
	pass # Replace with function body.


func _on_G3_pressed():
	$sobreposta/G3_DOWN.show()
	$sobreposta/G3_UP.hide()
	tween_out($Sounds/GrandPiano/G3)
	$Sounds/GrandPiano/G3.volume_db=0
	$Sounds/GrandPiano/G3.play()
	G3 =true
	pass # Replace with function body.


func _on_A3_pressed():
	$sobreposta/A3_down.show()
	$sobreposta/A3_up.hide()
	tween_out($Sounds/GrandPiano/A3)
	$Sounds/GrandPiano/A3.volume_db=0
	$Sounds/GrandPiano/A3.play()
	A3 =true
	pass # Replace with function body.


func _on_B3_pressed():
	$sobreposta/B3_down.show()
	$sobreposta/B3_up.hide()
	tween_out($Sounds/GrandPiano/B3)
	$Sounds/GrandPiano/B3.volume_db=0
	$Sounds/GrandPiano/B3.play()
	B3 =true
	pass # Replace with function body.


func _on_E4_pressed():
	$sobreposta/E4_down.show()
	$sobreposta/E4_up.hide()
	tween_out($Sounds/GrandPiano/E4)
	$Sounds/GrandPiano/E4.volume_db=0
	$Sounds/GrandPiano/E4.play()
	
	E4 =true
	
	pass # Replace with function body.


func _on_F4_pressed():
	$sobreposta/F4_DOWN.show()
	$sobreposta/F4_UP.hide()
	tween_out($Sounds/GrandPiano/F4)
	$Sounds/GrandPiano/F4.volume_db=0
	$Sounds/GrandPiano/F4.play()
	F4 =true
	pass # Replace with function body.


func _on_G4_pressed():
	$sobreposta/G4_DOWN.show()
	$sobreposta/G4_UP.hide()
	tween_out($Sounds/GrandPiano/G4)
	$Sounds/GrandPiano/G4.volume_db=0
	$Sounds/GrandPiano/G4.play()
	G4 =true
	pass # Replace with function body.


func _on_A4_pressed():
	$sobreposta/A4_down.show()
	$sobreposta/A4_up.hide()
	tween_out($Sounds/GrandPiano/A4)
	$Sounds/GrandPiano/A4.volume_db=0
	$Sounds/GrandPiano/A4.play()
	A4 =true
	pass # Replace with function body.


func _on_B4_pressed():
	$sobreposta/B4_DOWN.show()
	$sobreposta/B4_UP.hide()
	tween_out($Sounds/GrandPiano/B4)
	$Sounds/GrandPiano/B4.volume_db=0
	$Sounds/GrandPiano/B4.play()
	B4 =true
	pass # Replace with function body.


func _on_C5_pressed():
	$sobreposta/C5_DOWN.show()
	$sobreposta/C5_UP.hide()
	tween_out($Sounds/GrandPiano/C5)
	$Sounds/GrandPiano/C5.volume_db=0
	$Sounds/GrandPiano/C5.play()
	C5 =true
	pass # Replace with function body.


func _on_D5_pressed():
	$sobreposta/D5_DOWN.show()
	$sobreposta/D5_UP.hide()
	tween_out($Sounds/GrandPiano/D5)
	$Sounds/GrandPiano/D5.volume_db=0
	$Sounds/GrandPiano/D5.play()
	D5 =true
	pass # Replace with function body.


func _on_E5_pressed():
	$sobreposta/E5_DOWN.show()
	$sobreposta/E5_UP.hide()
	tween_out($Sounds/GrandPiano/E5)
	$Sounds/GrandPiano/E5.volume_db=0
	$Sounds/GrandPiano/E5.play()
	E5 =true
	pass # Replace with function body.


func _on_F5_pressed():
	$sobreposta/F5_DOWN.show()
	$sobreposta/F5_UP.hide()
	tween_out($Sounds/GrandPiano/F5)
	$Sounds/GrandPiano/F5.volume_db=0
	$Sounds/GrandPiano/F5.play()
	F5 =true
	pass # Replace with function body.


func _on_G5_pressed():
	$sobreposta/G5_DOWN.show()
	$sobreposta/G5_UP.hide()
	tween_out($Sounds/GrandPiano/G5)
	$Sounds/GrandPiano/G5.volume_db=0
	$Sounds/GrandPiano/G5.play()
	G5 =true
	pass # Replace with function body.


func _on_G3sus_pressed():
	
	G3sus=true
	tween_out($Sounds/GrandPiano/G3sus)
	$Sounds/GrandPiano/G3sus.volume_db=0
	$Sounds/GrandPiano/G3sus.play()
	
	pass # Replace with function body.


func _on_A3sus_pressed():
	A3sus=true
	tween_out($Sounds/GrandPiano/A3sus)
	$Sounds/GrandPiano/A3sus.volume_db=0
	$Sounds/GrandPiano/A3sus.play()
	pass # Replace with function body.


func _on_C4sus_pressed():
	C4sus=true
	tween_out($Sounds/GrandPiano/C4sus)
	$Sounds/GrandPiano/C4sus.volume_db=0
	$Sounds/GrandPiano/C4sus.play()
	pass # Replace with function body.


func _on_D4sus_pressed():
	D4sus=true
	tween_out($Sounds/GrandPiano/D4sus)
	$Sounds/GrandPiano/D4sus.volume_db=0
	

	$Sounds/GrandPiano/D4sus.play()
	
	pass # Replace with function body.


func _on_F4sus_pressed():
	F4sus=true
	tween_out($Sounds/GrandPiano/F4sus)
	$Sounds/GrandPiano/F4sus.volume_db=0
	$Sounds/GrandPiano/F4sus.play()
	pass # Replace with function body.


func _on_G4sus_pressed():
	G4sus=true
	tween_out($Sounds/GrandPiano/G4sus)
	$Sounds/GrandPiano/G4sus.volume_db=0
	$Sounds/GrandPiano/G4sus.play()
	pass # Replace with function body.


func _on_A4sus_pressed():
	A4sus=true
	tween_out($Sounds/GrandPiano/A4sus)
	$Sounds/GrandPiano/A4sus.volume_db=0
	$Sounds/GrandPiano/A4sus.play()
	pass # Replace with function body.


func _on_C5sus_pressed():
	C5sus=true
	tween_out($Sounds/GrandPiano/C5sus)
	$Sounds/GrandPiano/C5sus.volume_db=0
	$Sounds/GrandPiano/C5sus.play()
	pass # Replace with function body.


func _on_D5sus_pressed():
	D5sus=true
	tween_out($Sounds/GrandPiano/D5sus)
	$Sounds/GrandPiano/D5sus.volume_db=0
	$Sounds/GrandPiano/D5sus.play()
	pass # Replace with function body.


func _on_F5sus_pressed():
	F5sus=true
	tween_out($Sounds/GrandPiano/F5sus)
	$Sounds/GrandPiano/F5sus.volume_db=0
	$Sounds/GrandPiano/F5sus.play()
	pass # Replace with function body.





func _on_E4_released():
	fade_out($Sounds/GrandPiano/E4)
	$sobreposta/E4_up.show()
	$sobreposta/E4_down.hide()
	E4=false
	
	
	
	pass # Replace with function body.


func _on_D4sus_released():
	fade_out($Sounds/GrandPiano/D4sus)
	
	D4sus = false
	pass # Replace with function body.


func _on_A4_released():
	fade_out($Sounds/GrandPiano/A4)
	$sobreposta/A4_up.show()
	$sobreposta/A4_down.hide()
	A4=false
	pass # Replace with function body.


func _on_D5_released():
	fade_out($Sounds/GrandPiano/D5)
	$sobreposta/D5_UP.show()
	$sobreposta/D5_DOWN.hide()
	D5=false
	pass # Replace with function body.


func _on_F4_released():
	fade_out($Sounds/GrandPiano/F4)
	$sobreposta/F4_UP.show()
	$sobreposta/F4_DOWN.hide()
	F4=false
	pass # Replace with function body.


func _on_C5_released():
	fade_out($Sounds/GrandPiano/C5)
	$sobreposta/C5_UP.show()
	$sobreposta/C5_DOWN.hide()
	C5=false
	pass # Replace with function body.


func _on_G4_released():
	fade_out($Sounds/GrandPiano/G4)
	$sobreposta/G4_UP.show()
	$sobreposta/G4_DOWN.hide()
	G4=false
	pass # Replace with function body.


func _on_D4_released():
	fade_out($Sounds/GrandPiano/D4)
	
	$sobreposta/D4_up.show()
	$sobreposta/D4_down.hide()
	D4=false
	pass # Replace with function body.


func _on_G3_released():
	fade_out($Sounds/GrandPiano/G3)
	$sobreposta/G3_UP.show()
	$sobreposta/G3_DOWN.hide()
	G3=false
	pass # Replace with function body.


func _on_F5_released():
	fade_out($Sounds/GrandPiano/F5)
	$sobreposta/F5_UP.show()
	$sobreposta/F5_DOWN.hide()
	F5=false
	pass # Replace with function body.


func _on_A3_released():
	fade_out($Sounds/GrandPiano/A3)
	$sobreposta/A3_up.show()
	$sobreposta/A3_down.hide()
	A3=false
	pass # Replace with function body.


func _on_B4_released():
	fade_out($Sounds/GrandPiano/B4)
	$sobreposta/B4_UP.show()
	$sobreposta/B4_DOWN.hide()
	B4=false
	pass # Replace with function body.


func _on_E5_released():
	fade_out($Sounds/GrandPiano/E5)
	$sobreposta/E5_UP.show()
	$sobreposta/E5_DOWN.hide()
	E5=false
	pass # Replace with function body.


func _on_G5_released():
	fade_out($Sounds/GrandPiano/G5)
	$sobreposta/G5_UP.show()
	$sobreposta/G5_DOWN.hide()
	G5=false
	pass # Replace with function body.


func _on_B3_released():
	fade_out($Sounds/GrandPiano/B3)
	$sobreposta/B3_up.show()
	$sobreposta/B3_down.hide()
	B3=false
	pass # Replace with function body.


func _on_C5sus_released():
	fade_out($Sounds/GrandPiano/C5sus)
	C5sus = false
	pass # Replace with function body.


func _on_A4sus_released():
	fade_out($Sounds/GrandPiano/A4sus)
	A4sus = false
	pass # Replace with function body.


func _on_D5sus_released():
	fade_out($Sounds/GrandPiano/D5sus)
	D5sus = false
	pass # Replace with function body.


func _on_G4sus_released():
	fade_out($Sounds/GrandPiano/G4sus)
	G4sus = false
	pass # Replace with function body.


func _on_F4sus_released():
	fade_out($Sounds/GrandPiano/F4sus)
	F4sus = false
	pass # Replace with function body.



func _on_C4sus_released():
	fade_out($Sounds/GrandPiano/C4sus)
	C4sus = false
	pass # Replace with function body.


func _on_A3sus_released():
	fade_out($Sounds/GrandPiano/A3sus)
	pass # Replace with function body.


func _on_G3sus_released():
	fade_out($Sounds/GrandPiano/G3sus)
	G3sus = false
	pass # Replace with function body.


func _on_F5sus_released():
	fade_out($Sounds/GrandPiano/F5sus)
	F5sus = false
	
	pass # Replace with function body.


func fade_out(audio: AudioStreamPlayer):
	var tween := Tween.new()
	add_child(tween)
	var nomeChild = audio.to_string()
	nomeChild.erase(3,30)
	tween.interpolate_property(audio, "volume_db", initial_val, final_val, transition_duration, trans_type, ease_type, delay)
	tween.start()
	tween.name = nomeChild
	
	
func tween_out(audio):
	var nomeChild : String = audio.name
	nomeChild.erase(3,30)
	for i in get_children():
		if i.name == nomeChild:
			get_node(i.name).stop(audio)
			remove_child(i)
		
	

