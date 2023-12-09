extends Node2D

enum {
	BUTTON,
	TEXT,
	FREEZE
}

func _ready():
	Network.someone_send_data.connect(self.answer)

func _process(delta):
	pass

func answer(data):
	print("main - receive", data)


func _on_freeze_button_pressed():
#	rpc("change_scene", FREEZE)
	change_scene(FREEZE)

func _on_button_mode_button_pressed():
#	rpc("change_scene", BUTTON)
	change_scene(BUTTON)
	
func _on_text_modee_button_pressed():
	change_scene(TEXT)
	
func change_scene(_state):
	Network.change_scene(_state)



