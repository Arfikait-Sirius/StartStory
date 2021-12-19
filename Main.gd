extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var utils = load("res://Utils.gd").new()

var text_timer = 0
var text_row = 0
var now_scene
export var TEXT_SPEED = 30
# Called when the node enters the scene tree for the first time.
func _ready():
	VisualServer.set_default_clear_color(Color(0.3,0.3,0.3,1.0))
	now_scene = load("res://街.tscn").instance()
	add_child(now_scene)
	$Dialog.text = now_scene.text[0]
	$Button.text = now_scene.route_text[0]
	$Button2.text = now_scene.route_text[1]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text_timer += delta * TEXT_SPEED
	$Dialog.visible_characters = text_timer



func _on_Next_button_down():
	$SE_Next.play()
	if text_row <  now_scene.text.size() - 1:
		$NextSE.play()
		text_row += 1
		$Dialog.text = now_scene.text[text_row]
		text_timer = 0
	else:
		text_timer = $Dialog.text.length()
		if !now_scene.is_end:
			$Button.show()
			$Button2.show()
		else:
			get_node(".").queue_free()
			var next_scene = "res://スタッフロール.tscn"
			now_scene = load(next_scene).instance()
			get_tree().get_root().add_child(now_scene)


func _on_Button_button_down():
	load_scene(now_scene.route[0])


func _on_Button2_button_down():
	load_scene(now_scene.route[1])
	
func _on_Button_Save_button_down():
	utils.save(now_scene)
	
func load_scene(next):
	text_row = 0
	text_timer = 0
	now_scene.queue_free()
	var next_scene = "res://" + next + ".tscn"
	now_scene = load(next_scene).instance()
	add_child(now_scene)
	$Dialog.text = now_scene.text[text_row]
	$Button.text = now_scene.route_text[0]
	$Button2.text = now_scene.route_text[1]
	$Button.hide()
	$Button2.hide()
