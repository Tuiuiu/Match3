extends Node2D

var color = 0
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	
func update_color(newcolor):
	color = newcolor
	if color == 0:
		$Sprite.modulate = Color(0,0,1,1)
	elif color == 1:
		$Sprite.modulate = Color(0,1,0,1)
	elif color == 2:
		$Sprite.modulate = Color(1,0,0,1)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
