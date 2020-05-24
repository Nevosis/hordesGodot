extends Node2D

func _ready():
	$Timer.connect("timeout",self,"_on_Timer_timeout")

func _on_Timer_timeout():
	# Note: the `$` operator is a shorthand for `get_node()`,
    # so `$Sprite` is equivalent to `get_node("Sprite")`.
    $Sprite.visible = !$Sprite.visible



signal my_signal
