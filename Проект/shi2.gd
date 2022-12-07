extends Area2D




func _ready():
	pass # Replace with function body.



func _on_shi2_body_entered(body):
	
	if body.name == "Player":
		body.ApplyDMG(1000)
	
	pass # Replace with function body.
