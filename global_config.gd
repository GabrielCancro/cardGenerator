extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func export_node_to_png(node):
	var region
	if "position" in node:
		region = Rect2(node.position.x, node.position.y, node.size.x, node.size.y)
	if "rect_position" in node:
		region = Rect2(node.rect_position.x, node.rect_position.y, node.rect_size.x, node.rect_size.y)
		print(region)
	var image = get_viewport().get_texture().get_data()
	image.flip_y()
	image.get_rect( region ).save_png(node.name+".png")
