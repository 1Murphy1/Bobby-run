extends CanvasLayer
signal scene_changed()
onready var animation_player = $AnimationPlayer
onready var black = $ColorRect
func change_scene(path, delay = 0.5):
	yield( get_tree().create_timer(delay),"timeout")
	animation_player.play("dissolve")
	yield(animation_player,"animation_finished")
	assert(get_tree().change_scene(path) == OK)
	animation_player.play_backwards("dissolve")
	emit_signal("scene_changed")
