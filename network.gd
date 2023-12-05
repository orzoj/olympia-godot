extends Node


var username: String


# Called when the node enters the scene tree for the first time.
func _ready():
	multiplayer.connected_to_server.connect(self.joined)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func joined():
#	print(username)
	get_tree().change_scene_to_file("res://main.tscn")
