
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
		
		
#Input handler, listen for ESC to exit app
func _input(event):
   if(event.is_pressed()):
      if(event.scancode == KEY_ESCAPE):
         get_tree().quit() 
