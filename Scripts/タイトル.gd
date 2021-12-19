extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	VisualServer.set_default_clear_color(Color(0.0,0.0,0.0,1.0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewGame_button_down():
	get_node(".").queue_free()
	get_tree().get_root().add_child(preload("res://Scenes/Main.tscn").instance())


func _on_LoadGame_button_down():
	get_node(".").queue_free()
	get_tree().get_root().add_child(preload("res://Scenes/読み込み.tscn").instance())


func _on_Option_button_down():
	get_node(".").queue_free()
	get_tree().get_root().add_child(preload("res://Scenes/設定.tscn").instance())
