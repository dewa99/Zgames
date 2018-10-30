extends Node2D

var waktu
var time_label
var time_left_label
<<<<<<< HEAD
var game_over
=======
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8


func _ready():
	
	waktu = get_node("../Level_timer")
	time_label = get_node("../UI/time")
	time_left_label = get_node("../UI/Level_done/TIME_LEFT")
<<<<<<< HEAD
	game_over = get_node("../UI/Level_Game_over")
	
	game_over.hide()
=======
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
	
	waktu.start()
	
	set_process(true)
	pass

func _process(delta):
	time_label.set_text(str(int(waktu.get_time_left())))
	time_left_label.set_text(str(int(waktu.get_time_left())))
<<<<<<< HEAD
	

func _on_Level_timer_timeout():
	get_tree().set_pause(true)
	game_over.show()
	pass # replace with function body
=======
	
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
