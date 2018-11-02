extends Node

var partida 



func _load_scene(nivel):
	partida = load(nivel).instance()
	Global.nivel = partida.get_name()
	partida.set_name("partida")
#	print ("pista seleccionada: " + str(road))
#	print("pista "+ str(partida))
	partida.get_node("PosicionSalida").add_child(Global.personaje)
	get_parent().add_child(partida)
	
#	var fantasma = 
#	get_parent().add_child(fantasma)
#	carrera.get_node("PosicionSalida").add_child(load(fantasma_escena).instance())
#	get_parent().add_child(carrera)

	get_tree().get_root().get_node("SelectNiveles").queue_free()

### carga el diccionario y instancia la escena del fantasma ###


func _on_Nivel1_pressed():
	_load_scene("res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/nivel1.tscn")
	pass # replace with function body
