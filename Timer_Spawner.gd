extends Timer

var antag1 = preload("res://busher.tscn")
var antag2 = preload("res://striker.tscn")

func _on_timeout():
	#randomize()
	var antag=[antag1,antag2]
	var k=antag[randi()%antag.size()]
	var ant = k.instantiate()
	ant.position = Vector2(randi_range(505,654), randi_range(-166,154))
	add_child(ant)
	#wait_time = randi_range(0,1)
