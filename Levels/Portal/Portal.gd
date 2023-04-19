extends Area2D

var entered = false

func _on_Portal_body_entered(body: PhysicsBody2D):
	entered = true


func _on_Portal_body_exited(body: PhysicsBody2D):
	entered = false

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene("res://Levels/Level_2.tscn")
