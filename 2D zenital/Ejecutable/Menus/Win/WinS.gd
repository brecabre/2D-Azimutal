extends Node

var tope = 160
var contador = 0
onready var MenuPrincipal = preload("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()
onready var SelecNivel = preload("res://Ejecutable/Menus/Select Niveles/SelectNiveles.tscn").instance()



func _ready():
	set_process(true)
	print($".".get_node("AudioWin").play())
	pass

func _process(delta):
	contador += 100*delta
	if contador > tope:
		print("fuera")

		get_node("/root/Global Menus").add_child(SelecNivel)
		get_parent().get_node("Musica Menus").play()
		$".".queue_free()
#		print (Global.personaje.name)
	pass
