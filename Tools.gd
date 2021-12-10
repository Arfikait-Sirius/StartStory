extends Node

var DEFAULT_SAVE_FILE_NAME = "user://save_data.dat"

func save( data, file_name = DEFAULT_SAVE_FILE_NAME ):
	var file = File.new()
	file.open( file_name, _File.WRITE )
	file.store_string( data )
	file.close()

func load( file_name = DEFAULT_SAVE_FILE_NAME ):
	var file = File.new()
	file.open( file_name )
	var data = file.get_as_text()
	file.close()
	return data

