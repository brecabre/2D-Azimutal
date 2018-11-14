extends Node2D
var ballPos = $".".position
var bola_velocidad = 80
var direccion = Vector2(-1, 0)



func _ready():
	ballPos = get_viewport().size/2
#	print("hola")
	
	pass

func _process(delta):
	
	$".".set_position(ballPos)
	ballPos += direccion * bola_velocidad * delta
#	print($RigidBody2D/CollisionShape2D.one_way_collision())
#	print(is_one_way_collision_enabled())
	pass


func _on_RigidBody2D_area_entered(area):
	
	bola_velocidad = bola_velocidad * (1)
	pass # replace with function body
