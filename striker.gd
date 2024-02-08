extends CharacterBody2D
'''
@onready var skr = $CharacterBody2D
var dx = (skr.position.x - GlobalDash.player_x)
var dy = (skr.position.y - GlobalDash.player_y)
var ptr =atan2(dy,dx)

func move():
	var ptr =atan2(dy,dx)
	skr.position.x += 2*sin(ptr)
	skr.position.y += 2*cos(ptr)

func _physics_process(delta):
	move()
'''
