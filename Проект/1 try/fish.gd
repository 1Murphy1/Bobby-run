extends Area2D


func _on_Area2D_body_entered(body):
	
	if body.name == "Player":
		body.fish +=1
		queue_free()


	pass # Replace with function body.
