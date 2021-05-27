extends Node2D

func _physics_process(delta):
	$ParallaxBackground.scroll_offset+=Vector2(-20*delta,0)
