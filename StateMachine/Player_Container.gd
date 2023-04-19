extends Node2D

onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(200,200)


func _physics_process(_delta):
	var player = get_node_or_null("Player")
	if player == null:
		player = Player.instance()
		player.position = starting_position
		player.name = "Player"
		add_child(player)
