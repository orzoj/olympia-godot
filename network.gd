extends Node


var username: String = "user"
var isAdmin: bool = false
enum {
	BUTTON,
	TEXT,
	FREEZE
}
var state = FREEZE

func _ready():
	multiplayer.connected_to_server.connect(self.joined)


func _process(delta):
	pass

func joined():
	get_tree().change_scene_to_file("res://main.tscn")

func change_scene(_state):
	rpc("change_state", _state)

@rpc("any_peer")
func change_state(_state):
	print(str(username, ": ", _state))
	state = _state
	joined()


