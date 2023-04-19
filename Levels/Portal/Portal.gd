extends Area2D

var entered = false

func _on_Portal_body_entered(_body: PhysicsBody2D):
	entered = true


func _on_Portal_body_exited(_body: PhysicsBody2D):
	entered = false

func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene("res://Levels/Level_2.tscn")
