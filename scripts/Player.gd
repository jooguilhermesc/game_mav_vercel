extends Node2D

var gravity=450
var velocity=Vector2(0, gravity)
var jump_speed=-225

func _physics_process(delta):
	velocity.y += gravity*delta
	velocity = $KinematicBody2D.move_and_slide(velocity, Vector2(0,-1))
	checkCollision()

func _input(event):
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_speed

func checkCollision():
	for i in $KinematicBody2D.get_slide_count():
		var collision = $KinematicBody2D.get_slide_collision(i)
		if collision.collider.name != 'no':
			Globals.alife=false
			self.queue_free()
