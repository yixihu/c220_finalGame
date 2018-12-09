extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.gameover:
		$"GameOver".position.x = 512#global.xpos
		$"GameOver".position.y = 300#global.ypos
		$"GameOver".visible = true
		
		if Input.is_action_just_pressed("RestartGame"):
			go.restart_scene()
			global.gameover = false
			global.score = 0
			
	pass
