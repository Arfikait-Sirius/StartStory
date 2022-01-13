extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var my_dictionary = {}   #辞書

# Called when the node enters the scene tree for the first time.
func initRead():
	pass # Replace with function body.
	
	# ファイルオブジェクト作成
	var f = File.new()

	# "data.txt" ファイルを開く
	f.open("res://Story/StoryData.txt", File.READ)

	# CSVを1行ずつ読み込む
	var line = f.get_csv_line()
	while line.size() >= 3: # 横方向の項目数が足りない場合は終了
		var story_data = load("res://Entity/StoryData.gd").new()
		story_data.setText1(line[1])
		story_data.setText2(line[2])
		story_data.setText3(line[3])
		story_data.setText4(line[4])
		
		print("seq: %s"%line[0])
		print("text1:   %s"%story_data.getText1())
		print("text2:   %s"%story_data.getText2())
		print("text3:   %s"%story_data.getText3())
		print("text4:   %s"%story_data.getText4())
		my_dictionary[line[0]] = story_data
		line = f.get_csv_line()

	# ファイルを閉じる
	f.close()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
