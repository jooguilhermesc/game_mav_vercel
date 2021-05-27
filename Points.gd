extends Control

func _physics_process(delta):
	$ColorRect/RichTextLabel.bbcode_text=str(Globals.points)
