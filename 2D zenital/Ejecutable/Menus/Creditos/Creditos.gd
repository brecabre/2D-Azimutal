extends Node

var preMenuPrin = load("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn")
var MenuPrin

func _on_MenuPrincipal_pressed():
	MenuPrin = preMenuPrin.instance()
	get_node("/root/Global Menus").add_child(MenuPrin)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass
