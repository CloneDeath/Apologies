extends Spatial

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		move_piece();
		
func move_piece():
	var new_parent = get_parent().get_next_tile();
	get_parent().remove_child(self);
	new_parent.add_child(self);
	self.global_transform = Transform.IDENTITY;
	self.global_transform.origin = get_parent().global_transform.origin;
