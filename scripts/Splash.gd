extends Control

func _ready():
	$ColorRect/RichTextLabel.bbcode_text="[center] Score: "+str(Globals.points)+" [/center] "

func _on_TouchScreenButton_pressed():
	Globals.restart()
