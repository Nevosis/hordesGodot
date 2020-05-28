extends RichTextLabel

var inventory = "Debug Inventory"
var hp = "Debug HP"
var speed = 0

func showVar(label, ref):
	text += label + " : " + ref + "\n" 

func _process(delta):
	text = ""
	showVar("INVENTORY", inventory)
	showVar("HP", hp)
	showVar("SPEED", str(speed))
