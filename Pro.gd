extends CharacterBody2D
@export var spd : = 2
@onready var flip = $Marker2D
@onready var col = $CollisionPolygon2D
@onready var tree = $AnimationTree.get("parameters/playback")
@onready var pine = $AnimationTree
@onready var pos = $Nava
func input():
	var dtor = Input.get_vector('ui_left','ui_right','ui_up','ui_down')
	velocity = dtor*spd
	GlobalDash.player_x+=flip.position.x
	GlobalDash.player_y+=flip.position.y
func specs():
	if Input.is_action_pressed("Attack"):
		tree.travel("Attack")
	if Input.is_action_pressed("Bite"):
		tree.travel("Bite")
func anima():
	if velocity[0] > 0:
		flip.scale.x=1
		tree.travel("Move")
		specs()
	if velocity[0] < 0:
		flip.scale.x=-1
		tree.travel("Move")
		specs()
	if bool(velocity[1]):
		tree.travel("Move")
		specs()
	if velocity[0] == 0:
		tree.travel("RESET")
		specs()
func _physics_process(float):
	input()
	anima()
	move_local_x(velocity[0])
	move_local_y(velocity[1])
