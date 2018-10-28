extends Node2D

onready var pos = $".".position
var velocidad = 5

func _ready():

	set_process(true)
	pass

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		pos = Vector2(pos.x, pos.y - velocidad)
	if Input.is_action_pressed("ui_down"):
		pos = Vector2(pos.x, pos.y + velocidad)
	if Input.is_action_pressed("ui_right"):
		pos = Vector2(pos.x + velocidad, pos.y)
	if Input.is_action_pressed("ui_left"):
		pos = Vector2(pos.x - velocidad, pos.y)
	set_position(Vector2(pos))
	print ($Player1.get_floor_velocity() )
	print (look_at(Vector2(0,0)))
#	pass
