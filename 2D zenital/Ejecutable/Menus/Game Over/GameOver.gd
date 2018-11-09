extends Node

var tope = 120
var contador = 0
var MenuPrincipal = preload("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()


func _ready():
	set_process(true)
	pass

func _process(delta):
	contador += 100*delta
	if contador > tope:
		print("fuera")
		get_node("/root/Global Menus").add_child(MenuPrincipal)
		$".".queue_free()
	pass
