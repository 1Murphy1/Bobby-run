extends Area2D




func _on_Ship_body_entered(body):
	
	if body.name == "Player":
		body.ApplyDMG(1000)
	
	pass # Replace with function body.
