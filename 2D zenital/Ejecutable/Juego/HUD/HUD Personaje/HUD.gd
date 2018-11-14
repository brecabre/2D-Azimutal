extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var NumInstan
var preDatos = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
var GraficaVida
var posi1vida = Vector2(815,40)

var preTime = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
var GarfTiempo
var tiempoPartida

var prePuntos = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
var GrafPuntos


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	add_child(preDatos)
	GraficaVida = get_node("/root/partida/HUD/Datos_comunes/Label_datos_comunes")
	GraficaVida.set_text("Aquí pondré la vida actualizada")
	GraficaVida.set_position(posi1vida)
	
	add_child(preTime)
	GarfTiempo = get_node("/root/partida/HUD/@Datos_comunes@2/Label_datos_comunes")
	GarfTiempo.set_position(Vector2(posi1vida.x , posi1vida.y+60))
	add_child(prePuntos)
	GrafPuntos = get_node("/root/partida/HUD/@Datos_comunes@3/Label_datos_comunes")
	GrafPuntos.set_position(Vector2(posi1vida.x , posi1vida.y+80))


func _process(delta):
#	GraficaVida.set_position(Vector2(posi1vida))
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	GraficaVida.set_text("La vida: "+ str(Global.vida)+" con scrip")
	
#	
	tiempoPartida = get_node("/root/partida/HUD/HUD2tiempoNodo").get("start_time")
	GarfTiempo.set_text("Tiempo transcurrido: "+ str((OS.get_ticks_msec() - tiempoPartida)/1000)+" s (scrip)")
#
	GrafPuntos.set_text("Los puntos: "+ str(Global.puntos)+" con scrip")
	
	pass
