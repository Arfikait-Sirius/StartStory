extends Node2D


onready var utils = load("res://Utils/Utils.gd").new()

var text_timer = 0
var text_row = 0
var now_scene
export var TEXT_SPEED = 30

var bgm_resource_list = ["res://Sounds/BGM/StartStory_BGM_main.wav", "res://Sounds/BGM/StartStory_BGM_trap.wav"]
var se_resource_list = ["res://Sounds/SE/StartStory_SE_next.wav", "res://Sounds/SE/StartStory_SE_prev.wav", "res://Sounds/SE/StartStory_SE_log.wav"]

# Called when the node enters the scene tree for the first time.
func _ready():
	now_scene = load("res://街.tscn").instance()
	add_child(now_scene)
	$Dialog.text = now_scene.text[0]
	$Button.text = now_scene.root_text[0]
	$Button2.text = now_scene.root_text[1]
	utils.sound.init_bgm($BGM, bgm_resource_list[0])
	utils.sound.play_bgm()
	utils.sound.add_se("next", $NextSE, se_resource_list[0])
	utils.sound.add_se("prev", $PrevSE, se_resource_list[1])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text_timer += delta * TEXT_SPEED
	$Dialog.visible_characters = text_timer



func _on_Next_button_down():
	utils.sound.play_se("next")
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
			$Button.show()


func _on_Prev_button_down():
	utils.sound.play_se("prev")
	pass


func _on_Button_button_down():
	load_scene(now_scene.root[0])


func _on_Button2_button_down():
	load_scene(now_scene.root[1])

	
func _on_Button_Save_button_down():
	utils.config.save("store")

	
func load_scene(next):
	text_row = 0
	text_timer = 0
	now_scene.queue_free()
	var next_scene = "res://" + next + ".tscn"
	now_scene = load(next_scene).instance()
	add_child(now_scene)
	$Dialog.text = now_scene.text[text_row]
	$Button.text = now_scene.root_text[0]
	$Button2.text = now_scene.root_text[1]
	$Button.hide()
	$Button2.hide()
	utils.sound.change_bgm(bgm_resource_list[1])
