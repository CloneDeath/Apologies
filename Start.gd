extends Button
signal start_game

func _on_Start_pressed():
	self.hide();
	print("Hello World");
	emit_signal("start_game");
