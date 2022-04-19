extends Control


func ready():
	for button in $Buttons.get_children():
		if $Buttons/bt_start_game.pressed(): 
			$Buttons/bt_start_game.connect("pressed",self,"change_scene",[$Buttons/bt_exit_game.scene_to_open])
		elif $Buttons/bt_exit_game.pressed():
			$Buttons/bt_exit_game.connect("pressed",self,"exit")
		else:
			get_tree().wait()
			
func change_scene(path):
	SceneChanger.change_scene(path)
	
func exit():
		get_tree().quit()
