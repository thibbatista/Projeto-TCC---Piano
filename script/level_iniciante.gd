extends TouchScreenButton

export var level = 0



var passou


func _ready():
	#print(SAVE_SCORE.savedata)
	
	GlobalIniciante.read()
	GlobalIniciante.curLevel = level
	
	
	#stars = Global.stars
	
	passou = GlobalIniciante.savedata["level_" + str(level)]
	
	
	
#
#	if CONTROLADOR.unlock == level:
#
#		$lock.hide
	#print(Global.savedata)
	#print(stars)
#	if stars != -1:
#		get_node("brasao").set_texture(load(marker_unlock))
#		if stars != 0:
#			get_node("Stars").show()
#

	if passou == 1:
		$lock.hide()
		








