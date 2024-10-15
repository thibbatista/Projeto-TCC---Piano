tool

extends Node

var score = 0 
signal acerto
var level_iniciante = false
var erro_notas = 0
var acerto = 0
var level_atual = 0
var next_level_iniciante = 0
var marca_tecla = false
var controle_levelFail = false
var treino_on = false
var unlock = 0
		
func add_acerto(val):
	acerto += val
	emit_signal("acerto")
	
