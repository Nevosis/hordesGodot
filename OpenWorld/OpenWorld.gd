extends Node2D

export var xMax = 100
export var yMax = 100


var dirtScn = preload("res://BasicTerrain/Dirt/Dirt.tscn")
var grassScn = preload("res://BasicTerrain/Grass/Grass.tscn")
var waterScn = preload("res://BasicTerrain/Water/Water.tscn")
var player = preload("res://PlayerKinematic/PlayerK.tscn")

var playerInstance

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(xMax):
		for j in range(yMax):
			var nodeTerrain
			if i == 0 ||i == xMax-1 || j == 0||j == yMax-1 :
				nodeTerrain = waterScn.instance()
			elif randi()%2+1 == 1:
				nodeTerrain = dirtScn.instance()
			else:
				nodeTerrain = grassScn.instance()
			nodeTerrain.position = Vector2(i*16,j*16)
			add_child(nodeTerrain)

	playerInstance = player.instance()
	playerInstance.position = Vector2(50, 50)
	add_child(playerInstance)
	
	for x in get_children():
		if x.is_in_group("Terrain"):
			if x.filename.find("Grass") >= 0:
				x.connect("body_entered", self, "_on_Grass_entered")
			elif x.filename.find("Dirt") >= 0:
				x.connect("body_entered", self, "_on_Dirt_entered")

func _on_Grass_entered(_body):
	print("grass")
	playerInstance._on_grass()
	
func _on_Dirt_entered(_body):
	print("dirt")
	playerInstance._on_dirt()
