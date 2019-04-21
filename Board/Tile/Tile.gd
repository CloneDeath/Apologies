extends Spatial

class_name Tile

func get_next_tile() -> Tile:
	return get_parent().get_next_tile(self) as Tile;