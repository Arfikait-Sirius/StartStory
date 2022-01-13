extends Node


# Declare member variables here. Examples:

var text1 setget setText1, getText1
var text2 setget setText2, getText2
var text3 setget setText3, getText3
var text4 setget setText4, getText4

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#text1
func setText1(value):
	text1 = value
func getText1():
	return text1

#text2
func setText2(value):
	text2 = value
func getText2():
	return text2
	
#text3
func setText3(value):
	text3 = value
func getText3():
	return text3
	
#text4
func setText4(value):
	text4 = value
func getText4():
	return text4
