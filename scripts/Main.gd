extends Node2D

onready var obs = preload("res://scenes/obstacle.tscn")
onready var spl = preload("res://scenes/Splash.tscn")
var rng = RandomNumberGenerator.new()
var ob 
var ob2
var ob3
var ob4
var ob5
var ob6
var splash

func _ready():
	Globals.alife=true
	spawn_obst()

func _physics_process(delta):
	if Globals.alife:
		if ob.position.x<$Player.position.x:
			Globals.points+=1
			spawn_obst()
	if not Globals.alife and not splash:
		splash = spl.instance()
		add_child(splash)

func spawn_obst():
	rng.randomize()
	var rndval = rng.randi_range(-300,300)
	
	ob = obs.instance()
	ob.position = Vector2(300,250+rndval)
	add_child(ob)
	
	ob2 = obs.instance()
	ob2.position = Vector2(400,370+rndval)
	add_child(ob2)
	
	ob3 = obs.instance()
	ob3.position = Vector2(300,420+rndval)
	add_child(ob3)
	
	ob4 = obs.instance()
	ob4.position = Vector2(400,580+rndval)
	add_child(ob4)
	
	ob5 = obs.instance()
	ob5.position = Vector2(300,620+rndval)
	add_child(ob5)
	
	ob6 = obs.instance()
	ob6.position = Vector2(400,710+rndval)
	add_child(ob6)

func _input(event):
	if Input.is_action_just_pressed("ui_down"):
		Globals.restart()
