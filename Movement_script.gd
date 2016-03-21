
extends Sprite

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#need to tell godot you want to process each cycle.
	# this means setting process to true.
	# set_process(true)
	set_process_input(true)

func _input(event):
   # if user left clicks
   if(event.type == InputEvent.MOUSE_BUTTON):
      if(event.button_index == 1):
         self.set_pos(Vector2(event.x,event.y)) 
