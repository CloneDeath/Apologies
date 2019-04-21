extends Control

func _on_Start_pressed():
	$MainMenu.visible = false;
	get_tree().change_scene("res://Board/Board.tscn");
