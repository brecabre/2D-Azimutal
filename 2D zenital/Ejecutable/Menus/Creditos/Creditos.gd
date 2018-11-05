extends Node

#var MenuPrin = preload("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()

func _on_MenuPrincipal_pressed():
	get_node("/root/Global Menus").add_child("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn".instance())
	$".".queue_free()
	pass