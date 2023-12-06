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
	multiplayer.server_disconnected.connect(self.disconnected)


func _process(delta):
	pass

func joined():
	get_tree().change_scene_to_file("res://main.tscn")
	

func disconnected():
	get_tree().change_scene_to_file("res://Lobby/Lobby.tscn")

func change_scene(_state):
	rpc("change_state", _state)

@rpc("any_peer")
func change_state(_state):
	print(str(username, ": ", _state))
	state = _state
	joined()
	
func send_data(data):
	rpc_id(1,"recieve_data", data)

@rpc("call_local", "any_peer")
func recieve_data(data):
	print(data)
	if state == BUTTON:
		pass


