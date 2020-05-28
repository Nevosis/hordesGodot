extends Node2D

var OpenWorld = preload("res://OpenWorld/OpenWorld.tscn")
var debugNode

func _ready():
	debugNode = get_node("CanvasLayer/Control/Logs")
	add_child(OpenWorld.instance())
	pass
