extends Node2D

var pointed = false 

func _on_VisibilityNotifier2D_screen_exited():
	pass 

func _physics_process(delta):
	if Globals.alife:
		self.position.x-=250*delta
