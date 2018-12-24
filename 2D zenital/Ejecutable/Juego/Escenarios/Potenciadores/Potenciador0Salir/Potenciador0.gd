extends Node2D

var preGameOver = preload("res://Ejecutable/Menus/Win/Win.tscn").instance()
var Personaje1Muerto

func _on_Area2D_body_entered(body):
	#esto es una prueba pa a apagar la partida 
	if get_tree().get_nodes_in_group("Enemigo").size() == 0:
		get_node("/root/Global Menus").add_child(preGameOver)
		$".".queue_free()
		get_tree().get_root() # Access via scene main loop.
		Personaje1Muerto = get_parent().queue_free()
	pass 
