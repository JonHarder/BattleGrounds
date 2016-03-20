
extends Sprite

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _process(delta):
   if(Input.is_action_pressed("MOVE_HORIZONTAL")):
      var cur_pos = self.get_pos()
      cur_pos.x += 1
      self.set_pos(cur_pos)
