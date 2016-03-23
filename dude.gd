
extends KinematicBody2D

var speed = 200
var gravity = 3.0
const TERMINAL_VEL = 50
var dy = 0

var max_move_distance = 3

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	
func _fixed_process(delta):
	if(Input.is_action_pressed("MOVE_LEFT")):
		move(Vector2(-speed*delta,0))
	if(Input.is_action_pressed("MOVE_RIGHT")):
		move(Vector2(speed*delta, 0))
	if(Input.is_action_pressed("JUMP")):
		move(Vector2(0, -speed*delta))
		
		
	# figure out how to count collisions only for bottom edge
	if(!is_colliding()):
		if(dy < TERMINAL_VEL):
			dy += gravity*delta	
	else:
		dy = 0
	move(Vector2(0,dy))

func move_num_tiles():
	