extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
const UP = Vector2(0,-1)
var motion = Vector2()


func _physics_process(delta):
	#simulación gravedad
#	motion.y += 4

	#movimiento: poner valores según entradas curceta lateral
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	elif Input.is_action_pressed("ui_up"):
		motion.y = -100
	elif Input.is_action_pressed("ui_down"):
		motion.y = +100
	else:
		motion.x = 0
		motion.y = 0


	if  is_on_floor():
		print("en el suelo")
		if Input.is_action_pressed("ui_up"):
			motion.y = - 300

	#mover: poniendo el valor de movimiento motion
	motion = move_and_slide(motion, UP)
#	move_and_slide(motion, UP)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass