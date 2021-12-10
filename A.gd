extends Node2D

export var SCENE_NAME = ""

var scene = preload("res://SceneManager.tscn").instance()
var text
var root
var root_text
var is_end
# Called when the node enters the scene tree for the first time.
func _ready():
	text = scene.scene_dictionary[SCENE_NAME][scene.LIST.TEXT]
	root = scene.scene_dictionary[SCENE_NAME][scene.LIST.ROOT]
	root_text = scene.scene_dictionary[SCENE_NAME][scene.LIST.ROOT_TEXT]
	is_end = scene.scene_dictionary[SCENE_NAME][scene.LIST.END]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
