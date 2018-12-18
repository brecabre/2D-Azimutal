extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var graf_vida
var Enemigo

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	Enemigo = get_parent().get_node("Enemigo")
	graf_vida = get_node("/root/partida/HUD/HUD1vidaNodo/Datos_comunes/Label_datos_comunes")
	graf_vida.set_text("Aquí pondré la vida actualizada")
	graf_vida.set_position(Vector2(Enemigo.global_position.x-50 , global_position.y-60))
#	print (Enemigo.vidaMalo)
#	print (Enemigo.position)
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	graf_vida.set_text("La vida: "+ str(Enemigo.vidaMalo) + " con nodos")
	print (Enemigo.vidaMalo)
	
#	pass

