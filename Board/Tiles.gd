extends Spatial

func get_next_tile(corner:PlayerCorner) -> Tile:
	var next_index = (corner.get_index() + 1) % 4;
	var next_corner = self.get_child(next_index);
	return next_corner.get_first_tile() as Tile;