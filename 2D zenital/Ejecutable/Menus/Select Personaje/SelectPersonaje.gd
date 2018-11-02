extends Node

func _load_scene(personaje):
	Global.personaje = load(personaje).instance()
	Global.personaje.set_name("personaje")
#	Global.coche.connect("pressed", self, "_back")
#	print ("coche seleccionado: " + str(car))
	get_tree().change_scene("res://Ejecutable/Menus/Select Niveles/SelectNiveles.tscn")




func _on_Player_1_pressed():
	_load_scene("res://Ejecutable/Juego/Personajes/Personaje 1/Personaje1.tscn")
	pass # replace with function body


func _on_Player_2_pressed():
	_load_scene("res://Ejecutable/Juego/Personajes/Personaje 2/Personaje2.tscn")
	pass # replace with function body
