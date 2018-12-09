extends Node

var score = 0
var gameover = false
var xpos = 0
var ypos = 0
var enemyRemaining = 8

#booleans for checking which direction the player character is facing.
var facingRight = true
var facingLeft = false

var defending = false

func defendStart():
	defending = true

func defendEnd():
	defending = false