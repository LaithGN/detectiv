extends Control

var l="res://Scenes/scenes_one/scene_one.tscn"
var a

func ready():
	pass


func _on_bt_start_game_pressed():
	SceneChanger.change_scene(l)


func _on_bt_exit_game_pressed():
	get_tree().quit()
