tool
extends Node2D

export(Texture) var textura
export var lifes = 3 setget set_lifes

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _draw():
	
	
	for l in range(lifes):
		draw_texture_rect_region(textura, Rect2(l*142,0,142,227), Rect2(0,0,142,227), Color(1,1,1,1), false)
		
func set_lifes(val):
	lifes=val
	update()

	
#	if CONTROLADOR.erros !=null:
#		print("menos_um")
#
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
	pass
		
