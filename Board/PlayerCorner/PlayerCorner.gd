extends Spatial

class_name PlayerCorner

func get_next_tile() -> Tile:
	return get_parent().get_next_tile(self);

func get_first_tile() -> Tile:
	return $Tiles.get_child(0) as Tile;