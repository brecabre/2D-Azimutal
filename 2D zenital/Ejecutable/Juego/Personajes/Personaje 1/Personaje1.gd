extends Node2D

onready var pos = $"Personaje".position
onready var punto
var velocidad = 1

func _ready():

	set_process(true)
	punto = Vector2($"Personaje".position.x,$"Personaje".position.x + 100)
	pass

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		pos = Vector2(pos.x, pos.y - velocidad)
		punto = Vector2(pos.x, pos.y - 2*velocidad)
	if Input.is_action_pressed("ui_down"):
		pos = Vector2(pos.x, pos.y + velocidad)
		punto = Vector2(pos.x, pos.y + 2*velocidad)
	if Input.is_action_pressed("ui_right"):
		pos = Vector2(pos.x + velocidad, pos.y)
		punto = Vector2(pos.x + 2*velocidad, pos.y)
	if Input.is_action_pressed("ui_left"):
		pos = Vector2(pos.x - velocidad, pos.y)
		punto = Vector2(pos.x - 2*velocidad, pos.y)
		
		
	set_position(Vector2(pos)) 
	#	orientacion, vale así?
	look_at(Vector2(punto))
	pass
	
	
	
#	pero to esto que es ¡¡¡¡¡¡¡
# 

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
