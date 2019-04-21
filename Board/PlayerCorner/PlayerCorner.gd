extends Spatial

class_name PlayerCorner

func get_next_tile(tile:Tile) -> Tile:
	var next_index = tile.get_index() + 1;
	if(next_index >= self.get_child_count()):
		return get_parent().get_next_tile(self);
	return get_child(next_index) as Tile;
	
func get_first_tile() -> Tile:
	return get_child(0) as Tile;