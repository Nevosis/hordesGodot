extends Panel

func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	
func _on_Button_pressed():
	get_tree().change_scene("res://OpenWorld/OpenWorld.tscn")
