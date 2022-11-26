extends Area2D


func _on_end_body_entered(body):
	if body.name == "Player":
		body.ApplyDMG(100)
	
	
	
	pass # Replace with function body.
