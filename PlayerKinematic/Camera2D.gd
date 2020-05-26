extends Camera2D

export var currentZoomIndex = 2
export var zoomValues = [0.1, 0.3, 0.5, 0.7, 1.1, 1.5, 2, 2.8, 3.7, 4.8, 6, 7.5, 9.5, 12, 15, 18, 23, 28, 35, 50]
	
func _ready():
	zoom = Vector2(zoomValues[currentZoomIndex],zoomValues[currentZoomIndex])	

func _input(event):
	if event is InputEventMouseButton && event.is_pressed():
		var newZoomIndex = currentZoomIndex
		if event.button_index == BUTTON_WHEEL_DOWN:
			newZoomIndex = clamp(newZoomIndex + 1, 0, zoomValues.size()-1)
		elif event.button_index == BUTTON_WHEEL_UP:
			newZoomIndex = clamp(newZoomIndex - 1, 0, zoomValues.size()-1)
		currentZoomIndex = newZoomIndex
		zoom = Vector2(zoomValues[newZoomIndex],zoomValues[newZoomIndex])	
