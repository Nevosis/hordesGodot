extends KinematicBody2D


export var defaultSpeed = 75
var speed = defaultSpeed
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _physics_process(delta):
	var velocity = Vector2()  # The player's movement vector.
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
			velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	move_and_slide(velocity)
	



func _on_dirt():
	print("onDirt")
	speed = defaultSpeed / 2


func _on_grass():
	print("onGrass")
	speed = defaultSpeed
