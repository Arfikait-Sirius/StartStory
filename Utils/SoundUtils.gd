extends Node


var bgm = null
var se_map = {}


func init_bgm( node, stream ):
	bgm = node
	bgm.stream = load(stream)


func play_bgm():
	bgm.play()


func stop_bgm():
	bgm.stop()


func change_bgm( stream ):
	bgm.stop()
	bgm.stream = load(stream)
	bgm.play()


func add_se( key, node, stream ):
	node.stream = load(stream)
	se_map[key] = node


func play_se( key ):
	se_map.get( key ).play()
