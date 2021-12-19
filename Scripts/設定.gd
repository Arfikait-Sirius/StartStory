extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$BGMSlider.value = 50

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Prev_button_down():
	get_node(".").queue_free()
	get_tree().get_root().add_child(load("res://Scenes/タイトル.tscn").instance())
