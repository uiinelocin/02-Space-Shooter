extends Control

var loadScene

func _on_Play_pressed():
	loadScene = get_tree().change_scene("res://Game.tscn")

func _on_Quit_pressed():
  get_tree().quit()
