extends KinematicBody2D

# esta no lo tengo claro
const UP = Vector2(0,-1)

# var pa movimiento:
var motion = Vector2()
var velocidad  = 8000

# var pa la vida:

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	Global.vida = 100
	pass

func _physics_process(delta):
	#simulación gravedad
#	motion.y += 4

# esto  no se que es
#	print (motion.angle())


	#movimiento: poner valores según entradas curceta lateral
	if Input.is_action_pressed("ui_right"):
		motion.x = velocidad * delta
	elif Input.is_action_pressed("ui_left"):
		motion.x = - velocidad * delta
	else:
		motion.x = 0
	
	if Input.is_action_pressed("ui_up"):
		motion.y = - velocidad * delta
	elif Input.is_action_pressed("ui_down"):
		motion.y = velocidad * delta
	else:
		motion.y = 0

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
		print("cccccccoooooooo")
		#disminuye la vida
		Global.vida -= 1
	

	#mover: poniendo el valor de movimiento motion aqui velo lineal
	motion = move_and_slide(motion,UP)
	#	probar a quintar el UP)
#	giro
	look_at(position + motion)
	print(Global.vida)
#	# Update game logic here.
	pass