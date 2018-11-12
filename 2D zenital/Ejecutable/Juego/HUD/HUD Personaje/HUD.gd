extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var preDatos = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
var GraficaVida
var posi1vida = Vector2(55,555)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	GraficaVida = add_child(preDatos)
#	GraficaVida.set_position(Vector2(posi1vida))
	set_process(true)
	pass


func _process(delta):
#	GraficaVida.set_position(Vector2(posi1vida))
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass
