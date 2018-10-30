extends Node2D

var waktu
var time_label
var time_left_label


func _ready():
	
	waktu = get_node("../Level_timer")
	time_label = get_node("../UI/time")
	time_left_label = get_node("../UI/Level_done/TIME_LEFT")
	
	waktu.start()
	
	set_process(true)
	pass

func _process(delta):
	time_label.set_text(str(int(waktu.get_time_left())))
	time_left_label.set_text(str(int(waktu.get_time_left())))
	