extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func animated():
var anim = "idle"

if velocity.y > 0 and not $RayCast2D.is_colloging();
	anim = "cat"
	if velocity.x > 0;
		$Sprite.flip_h = false
	else:
		$Sprite.flip_h = true
		
		
