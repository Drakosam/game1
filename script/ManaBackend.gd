extends Node


var max_mana = 10
var current_mana = 0

func _ready():
	pass # Replace with function body.

func up_mana_lvl():
	if current_mana < max_mana:
		current_mana += 1
