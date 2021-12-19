extends Node2D

var scene = preload("res://SceneManager.tscn").instance()
var text
var route
var route_text
var is_end
# Called when the node enters the scene tree for the first time.
func _ready():
	text = scene.scene_dictionary[self.name][scene.LIST.TEXT]
	route = scene.scene_dictionary[self.name][scene.LIST.ROUTE]
	route_text = scene.scene_dictionary[self.name][scene.LIST.ROUTE_TEXT]
	is_end = scene.scene_dictionary[self.name][scene.LIST.END]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
