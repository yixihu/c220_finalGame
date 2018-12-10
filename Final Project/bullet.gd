extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var origin_x = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	origin_x = self.position.x
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= 4
	if self.position.x - origin_x < -200:
		go.destroy(self)
	pass

func go_collision(otherArea):
	go.destroy(self)