extends KinematicBody2D

const SPEED = 170

const FLOOR = Vector2(0,-1)
const GRAVITY = 970
const JUMP_POWER = 400


var fish = 0
var Health = 100
var velocity = Vector2()

func _physics_process(delta):
	if position.y > 800:
		position.y = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite.flip_h = false
		if is_on_floor():
		 $AnimatedSprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.flip_h = true
		if is_on_floor():
			$AnimatedSprite.play("walk")
	else:
		velocity.x = 0
		if is_on_floor():
			$AnimatedSprite.play('idle')
		
	if Input.is_action_pressed("ui_up") && is_on_floor():
		velocity.y = -JUMP_POWER
		$AnimatedSprite.play("jump")
	position.x = clamp(position.x,0,1600)
func _process(delta):
	print(fish)
	pass
	
		
		
		
		
	velocity.y +=(GRAVITY * delta)
	velocity = move_and_slide(velocity, FLOOR)
func ApplyDMG(dmg:int):
	Health -= dmg
		
	if Health <= 0:
		get_tree().reload_current_scene()
		




	
	pass # Replace with function body.

















func _on_TP2_body_entered(body):
	get_tree().change_scene("res://1 try/level3.tscn")
	pass # Replace with function body.


func _on_tp1_body_entered(body):
	get_tree().change_scene("res://1 try/level2.tscn")
	pass # Replace with function body.
