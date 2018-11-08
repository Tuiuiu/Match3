extends Node2D

var tablematrix = []
enum GemTypes {
	blue = 0, 
	green = 1, 
	red = 2 
}

func _ready():
	for x in range(5):
		tablematrix.append([])
		for y in range(5):
			var generated_gem = generate_node()
			generated_gem.update_color(get_random_color())
			generated_gem.position = Vector2(x*50, y*50)
			$Gems.add_child(generated_gem)
			tablematrix[x].append(generated_gem)
	for x in range(5):
		print (tablematrix[x])
	
func get_input():
	if Input.is_action_just_pressed("ui_right"):
		changecolor()

func _process(delta):
	get_input()

func changecolor():
	$Background.modulate = Color(1,1,1,1)

func get_random_color():
	return (randi() % 3)
	
func generate_node():
	var gem_resource = load("res://GameTable/Gem.tscn")
	var new_gem = gem_resource.instance()
	return new_gem
	