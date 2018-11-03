extends KinematicBody2D

# esta no lo tengo claro
const UP = Vector2(0,-1)

# var pa movimiento:
var motion = Vector2()
var velocidad  = 5000

# var pa la vida:
var vidika = 100

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
	if  is_on_floor():
		print("en el suelo")
		if Input.is_action_pressed("ui_up"):
			motion.y = - 300

	#mover: poniendo el valor de movimiento motion aqui velo lineal
	motion = move_and_slide(motion,UP)
	print(motion)
	look_at(position + motion)
#	move_and_slide(motion, UP)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass