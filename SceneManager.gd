extends Node2D

enum LIST {
	TEXT = 0,
	ROOT = 1,
	ROOT_TEXT = 2,
	END = 3
}

var text_list = [
	["Aにいる", "BとCどちらに行く？"],
	["Bにいる", "DとEどちらに行く？"],
	["Cにいる", "FとGどちらに行く？"],
	["Dに来た", "これで終わりだ"],
	["Eに来た", "これで終わりだ"],
	["Fに来た", "これで終わりだ"],
	["Gに来た", "お宝があった"],
]

var root_list = [
	["B", "C"],
	["D", "E"],
	["F", "G"],
	["A", ""],
	["A", ""],
	["A", ""],
	["A", ""],
]

var root_text_list = [
	["Bに行く", "Cに行く"],
	["Dに行く", "Eに行く"],
	["Fに行く", "Gに行く"],
	["最初から", ""],
	["最初から", ""],
	["最初から", ""],
	["最初から", ""],
]

var scene_dictionary = {
	"A":[text_list[0], root_list[0], root_text_list[0], false],
	"B":[text_list[1], root_list[1], root_text_list[1], false],
	"C":[text_list[2], root_list[2], root_text_list[2], false],
	"D":[text_list[3], root_list[3], root_text_list[3], true],
	"E":[text_list[4], root_list[4], root_text_list[4], true],
	"F":[text_list[5], root_list[5], root_text_list[5], true],
	"G":[text_list[6], root_list[6], root_text_list[6], true],
}
