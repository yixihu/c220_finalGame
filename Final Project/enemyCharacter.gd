extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("test"):
		go.destroy(self)
	pass

func shoot():
	go.spawn_instance("bullet", self.position.x - 30, self.position.y-23)

func go_collision(otherArea):
#	print(otherArea.get_parent())
	if otherArea.is_in_group("ATTACK"):
#	if otherArea.is_in_group("Player"):
		global.enemyRemaining -= 1
		go.destroy(self)