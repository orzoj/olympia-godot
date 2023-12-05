extends Node2D


func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		rpc("send_msg", Network.username, $text_input.text)
		$text_input.text = ""
		
@rpc ("any_peer", "call_local")
func send_msg(user, data):
	$log.text += str(user, ": ", data, "\n")
