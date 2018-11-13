extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var preDatos = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
var GraficaVida
var posi1vida = Vector2(815,40)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	add_child(preDatos)
	GraficaVida = get_node("/root/partida/HUD/Datos_comunes/Label_datos_comunes")
	GraficaVida.set_text("Aquí pondré la vida actualizada")
	GraficaVida.set_position(posi1vida)
	#
#	GraficaVida.set_position(Vector2(posi1vida))
	set_process(true)
	pass


func _process(delta):
#	GraficaVida.set_position(Vector2(posi1vida))
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	GraficaVida.set_text("La vida: "+ str(Global.vida)+" con scrip")
	pass
