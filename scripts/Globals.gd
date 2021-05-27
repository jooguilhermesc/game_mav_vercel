extends Node

var alife = false
var points = 0

func add_points():
	points += 1 
	
func restart():
	alife = false
	points = 0
	get_tree().reload_current_scene()
