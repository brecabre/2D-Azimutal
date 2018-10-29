extends Node

func _load_scene(personaje):
	Global.personaje = load().instance()
	Global.personaje.set_name("personaje")
#	Global.coche.connect("pressed", self, "_back")
#	print ("coche seleccionado: " + str(car))
	get_tree().change_scene("res://Menus/SelectNivel/Selec")




func _on_Player_1_pressed():
	pass # replace with function body


func _on_Player_2_pressed():
	pass # replace with function body
