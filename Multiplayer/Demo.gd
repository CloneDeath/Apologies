extends Node2D

const port = 34628;

func _on_Server_pressed():
	var peer = NetworkedMultiplayerENet.new();
	peer.create_server(port, 2);
	get_tree().network_peer = peer
	_set_things_up();

func _on_Client_pressed():
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client("127.0.0.1", port)
	get_tree().network_peer = peer;
	_set_things_up();

func _set_things_up():
	$lblMyId/Value.text = str(get_tree().get_network_unique_id());
	get_tree().connect("network_peer_connected", self, "_on_network_peer_connected");
	get_tree().connect("network_peer_disconnected", self, "_on_network_peer_disconnected");

func _on_network_peer_connected(id):
	print("peer connected ", id);
	$lblUpdate.text = "peer connected " + str(id);

func _on_network_peer_disconnected(id):
	print("peer disconnected ", id);
	$lblUpdate.text = "peer disconnected " + str(id);
