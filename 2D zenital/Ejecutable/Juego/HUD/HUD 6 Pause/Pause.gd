extends Control




func _ready():
	$Pause.set_position(Vector2(get_viewport().size.x/40 , get_viewport().size.y/30))
#	$"Pause-PopUp/Continue".set_position(Vector2(get_viewport().size.x/2 , get_viewport().size.y/2))
	$"Pause-PopUp".set_position(Vector2(get_viewport().size.x/2 , get_viewport().size.y/2))
	pass

#func _process(delta):

#	pass


func _on_Pause_pressed():
	get_tree().paused = true
	$"Pause-PopUp".show()

	pass # replace with function body


func _on_Continue_pressed():
	get_tree().paused = false
	$"Pause-PopUp".hide()
	pass # replace with function body
