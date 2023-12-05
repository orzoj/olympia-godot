extends Node2D

func _ready():
	multiplayer.connection_failed.connect(self.connection_failed)

func _on_host_pressed():
	var peer = ENetMultiplayerPeer.new()
	peer.create_server(1027)
	multiplayer.multiplayer_peer = peer
	Network.username = $name_input.text
	Network.joined()

func _on_join_pressed():
	var peer = ENetMultiplayerPeer.new()
	peer.create_client("127.0.0.1",1027)
	multiplayer.multiplayer_peer = peer
	Network.username = $name_input.text
	
func connection_failed():
	print("fail")
