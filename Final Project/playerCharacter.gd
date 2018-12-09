extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# animation codes start here===============================================================
	# attacking 
	if Input.is_action_just_released("attack_light"):
		$movementManager.play("attacking")
		#play the attack animation
		if global.facingLeft:
			print("Facing Left Attack")
		elif global.facingRight:
			print("Facing Right Attack")
	
	# defending
	if Input.is_action_just_pressed("attack_defend"):
#		global.defending = true
		$AnimationPlayer.play("Defending")
	# animation codes end here===============================================================
	
	if $AnimationPlayer.is_playing():
		global.defending = true
	else:
		global.defending = false
#	global.defending = false
	
	# testing
#	if Input.is_action_just_released("test"):
#		print("test")
	pass

func go_collision(otherArea):
	
	if otherArea.get_parent().is_in_group("Bullet") and not global.defending:
		#go.destroy(otherArea.get_parent())
		global.gameover = true
		global.xpos = self.position.x
		global.ypos = self.position.y
		go.destroy(self)