extends Control


func ready():
		if $Buttons/bt_start_game.button_down(): 
			self._on_bt_start_game_pressed()
		elif $Buttons/bt_exit_game.pressed():
			$Buttons/bt_exit_game.connect("pressed",self,"exit")

func change_scene(path):
	SceneChanger.change_scene(path)
	
func exit():
		get_tree().quit()


func _on_bt_start_game_pressed():
	$Buttons/bt_start_game.connect("pressed",self,"change_scene",[$Buttons/bt_start_game.scene_to_open])

