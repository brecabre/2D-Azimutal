extends KinematicBody2D

# esta no lo tengo claro
const UP = Vector2(0,1)

# var pa movimiento:
var motion = Vector2()
var velocidad  = 10000



# var pa la vida:

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	Global.vida = 100
	set_process(true)
	pass

func _process(delta):
	#simulación gravedad
#	motion.y += 4

# esto  no se que es
	print ("angulo en radianes: " + str( motion.angle()))


	#movimiento: poner valores según entradas curceta lateral
	if Input.is_action_pressed("ui_right"):
		print("derecha")
		motion.x = velocidad * delta
	elif Input.is_action_pressed("ui_left"):
		print("izquierda")
		motion.x = - velocidad * delta
	else:
		motion.x = 0
	
	if Input.is_action_pressed("ui_up"):
		print("arriba")
		motion.y = - velocidad * delta
	elif Input.is_action_pressed("ui_down"):
		print("abajo")
		motion.y = velocidad * delta
	else:
		motion.y = 0
		
# Limites para el movimiento
	if position.x > get_viewport().size.x:
		position.x = get_viewport().size.x
	if position.x < 0:
		position.x = 0
	if position.y < 0:
		position.y = 0
	print ("pos X: " + str(position.x))
	print ("pos Y: " + str(position.y))

#esto es una prueba pa la colision
#esto me gusta pa platarformas
	if  is_on_floor():
		print("en el suelo")
		Global.vida -= 1
	if is_on_wall():
		print("pared")
		Global.vida -= 1
		
#esto detecta collision
	if is_on_ceiling():
		print("colision!!")
		#disminuye la vida
		Global.vida -= 1
	

#mover: poniendo el valor de movimiento motion aqui velo lineal
	motion = move_and_slide(motion,UP)
#	probar a quintar el UP)
#	giro
	look_at(position + motion)
	print("Vida: " + str(Global.vida))
#	# Update game logic here.
	pass