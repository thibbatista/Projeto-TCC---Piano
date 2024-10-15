extends Node

var savefile = File.new()
var savepath = "user://passou1.save"
var savedata = {"level_1": 0,"level_2": 0,"level_3": 0,"level_4": 0,"level_5": 0,"level_6": 0,"level_7": 0,"level_8": 0,
"level_9": 0,"level_10": 0,"level_11": 0,"level_12": 0,"level_13": 0,"level_14": 0,"level_15": 0,"level_16": 0}

var curLevel = 1
var passou = 0

func _ready():
	
	if not savefile.file_exists(savepath):
		save()
	read()
	

func save():
	savefile.open(savepath, File.WRITE)
	savefile.store_var(savedata)
	savefile.close()

func read():
	savefile.open(savepath, File.READ)
	savedata = savefile.get_var()
	savefile.close()

# warning-ignore:shadowed_variable
func save_level(level, iniciante):
	if level > 80: return 
	savedata["level_" + str(level)] = iniciante
	
	save()
