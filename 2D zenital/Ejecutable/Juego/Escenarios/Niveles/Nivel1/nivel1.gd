extends Node2D

onready var Fondo = $Fondo

func _ready():
	centrar_Fondo()
	pass

func _process(delta):
#	print (Position2D.)
	print ("position: " + str(position))
	print ("global position: " + str(global_position))
	pass

func centrar_Fondo():
	set_position(get_viewport().size/2)
	pass