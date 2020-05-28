extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("FPS").text = "FPS : " + str(Engine.get_frames_per_second())
