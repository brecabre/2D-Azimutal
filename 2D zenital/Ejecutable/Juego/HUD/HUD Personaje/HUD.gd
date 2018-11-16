extends Node

var MiNodoHUD
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
	MiNodoHUD = get_children()
	MiNodoHUD[4].set_name("Text_Tiempo")
	GarfTiempo = get_node("/root/partida/HUD/Text_Tiempo/Label_datos_comunes")
	GarfTiempo.set_position(Vector2(posi1vida.x , posi1vida.y+60))
	
	add_child(prePuntos)
	MiNodoHUD = get_children()
	MiNodoHUD[5].set_name("Text_Puntos")
	GrafPuntos = get_node("/root/partida/HUD/Text_Puntos/Label_datos_comunes")
	GrafPuntos.set_position(Vector2(posi1vida.x , posi1vida.y+80))


func _process(delta):
	#Actualizo valor de pantalla "La vida: 
	GraficaVida.set_text("La vida: "+ str(Global.vida)+" con scrip")
	#Actualizo valor de pantalla "Tiempo transcurrido:
	tiempoPartida = get_node("/root/partida/HUD/HUD2tiempoNodo").get("start_time")
	GarfTiempo.set_text("Tiempo transcurrido: "+ str((OS.get_ticks_msec() - tiempoPartida)/1000)+" s (scrip)")
	##Actualizo valor de pantalla "Los puntos:
	GrafPuntos.set_text("Los puntos: "+ str(Global.puntos)+" con scrip")
	
	pass
