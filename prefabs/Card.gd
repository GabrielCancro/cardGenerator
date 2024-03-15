extends ColorRect

var CARDS = {
	"c1": {
		"name":"El rey", "type":"personaje", 
		"img":preload("res://icon.png"), 
		"acc":[
			{"tx":"Preguntar por su novia","dec":"rrs","add":"vvv"}
		]
	}
}

# Called when the node enters the scene tree for the first time.
func _ready():
	set_card("c1")

func set_card(code):
	var data = CARDS[code]
	$lb_title.text = data.name
	$lb_type.text = data.type
	$img.texture = data.img
	$lb_desc.text = data.acc[0].tx
