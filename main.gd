extends Node2D

enum {
	BUTTON,
	TEXT,
	FREEZE
}

func _ready():
	if Network.isAdmin == true:
		get_tree().change_scene_to_file("res://Scene/admin.tscn")
	
func _process(delta):
	if Network.isAdmin == true:
		return
	
	if Network.state == FREEZE:
		return
	if Network.state == BUTTON:
		get_tree().change_scene_to_file("res://Scene/button_scene.tscn")
	if Network.state == TEXT:
		get_tree().change_scene_to_file("res://Scene/text_scene.tscn")
		
