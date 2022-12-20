extends Area2D


var entered = false
func _on_tp_body_entered(body: PhysicsBody2D):
	entered = true


func _on_tp_body_exited(body):
	entered = false
func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene("res://1 try/level2.tscn")
