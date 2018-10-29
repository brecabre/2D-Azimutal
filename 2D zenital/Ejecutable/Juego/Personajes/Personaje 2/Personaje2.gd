extends Node2D

onready var pos = $"Personaje".position
var velocidad = 1

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
	
#	print ($Player1.get_floor_velocity() )
#	print (look_at(Vector2(0,0)))
	pass

#	var velocity = Vector2() # The player's movement vector.
#	if Input.is_action_pressed("ui_right"):
#        velocity.x += 1
#	if Input.is_action_pressed("ui_left"):
#        velocity.x -= 1
#	if Input.is_action_pressed("ui_down"):
#        velocity.y += 1
#	if Input.is_action_pressed("ui_up"):
#        velocity.y -= 1
#	if velocity.length() > 0:
#        velocity = velocity.normalized() * velocidad
#	set_position(Vector2(velocity))
#        $".".play()
#	else:
#        $".".stop()
