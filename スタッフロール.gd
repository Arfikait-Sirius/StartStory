extends Node2D

var time = 0

func _ready():
	VisualServer.set_default_clear_color(Color(0.0,0.0,0.0,1.0))

func _process(delta):
	time += delta
	if time > 3:
		get_node(".").queue_free()
		get_tree().get_root().add_child(preload("res://タイトル.tscn").instance())
