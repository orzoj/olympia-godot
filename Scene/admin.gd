extends Node2D

enum {
	BUTTON,
	TEXT,
	FREEZE
}

func _ready():
	Network.player_answer.connect(self.answer)

func _process(delta):
	pass

func answer():
	print("main - receive")


func _on_freeze_button_pressed():
#	rpc("change_scene", FREEZE)
	change_scene(FREEZE)

func _on_button_mode_button_pressed():
#	rpc("change_scene", BUTTON)
	change_scene(BUTTON)
	
func change_scene(_state):
	Network.change_scene(_state)



