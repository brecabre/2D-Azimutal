extends Node

var tope = 120
var contador = 0
var prePrincipal = preload("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	set_process(true)
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	contador += 100*delta
	if contador > tope:
		print("fuera")
		get_node("/root/Global Menus").add_child(prePrincipal)
		$".".queue_free()
	pass
