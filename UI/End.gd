extends Control


func _ready():
	pass


func _on_Play_Again_pressed():
	Global.reset()
	var _scene = get_tree().change_scene("res://Levels/Level_1.gd")


func _on_Quit_pressed():
	get_tree().quit()
