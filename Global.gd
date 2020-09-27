extends Node

var score = 0
var health = 100
var level = 0

func _process(_delta):
	if Input.is_action_pressed("quit"):	
		get_tree().quit()
