
extends Node

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)

func _process(delta):
	if(Input.is_action_pressed("QUIT")):
		print("EXITING")
