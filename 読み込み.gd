extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Data1_button_down():
	$Panel/Label2.text = $Data1.text
	Data_disable()


func _on_Data2_button_down():
	$Panel/Label2.text = $Data2.text
	Data_disable()


func _on_Data3_button_down():
	$Panel/Label2.text = $Data3.text
	Data_disable()

func Data_disable():
	$Data1.disabled = true
	$Data2.disabled = true
	$Data3.disabled = true
	$Panel.show()


func _on_Yes_button_down():
	#load_data() #セーブデータを取得する
	pass # Replace with function body.


func _on_No_button_down():
	Data_enabled()
	
func Data_enabled():
	$Panel.hide()
	$Data1.disabled = false
	$Data2.disabled = false
	$Data3.disabled = false


func _on_Prev_button_down():
	get_node(".").queue_free()
	get_tree().get_root().add_child(load("res://タイトル.tscn").instance())

