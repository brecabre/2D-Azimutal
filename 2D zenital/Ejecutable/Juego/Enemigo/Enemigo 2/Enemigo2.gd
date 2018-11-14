extends KinematicBody2D

onready var bala = preload("res://Ejecutable/Juego/Enemigo/ComunesEmenigo/bala/bala.tscn").instance()
onready var posP1 
var posEnemigo = $".".position


func _ready():

	set_process(true)
	pass

func _process(delta):
#	Mirar al player
	posP1 = get_parent().get_parent().get_node("PosicionSalida/personaje/Personaje").position
	look_at(Vector2(posP1))
	pass
	
#	Disparar cada cierto tiempo
func _on_tiempo_de_disparo_timeout():
	get_parent().add_child(bala)
	print ("Disparo Enemigo")
	pass 
	
	