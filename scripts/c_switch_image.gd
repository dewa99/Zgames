extends Node2D

var a = []
var anim = []
var timer
var index = 0

func _ready():
	a.resize(4)
	anim.resize(4)
	a[0]= get_node("../kotak1")
	a[1]= get_node("../kotak2")
	a[2]= get_node("../kotak3")
	a[3]= get_node("../kotak4")
	
	anim[0] = get_node("../kotak1/AnimationPlayer")
	anim[1] = get_node("../kotak2/AnimationPlayer")
	anim[2] = get_node("../kotak3/AnimationPlayer")
	anim[3] = get_node("../kotak4/AnimationPlayer")
	
	
	set_process(true)
	pass

func _process(delta):
	#cek_jawaban()
	pass

func _on_kotak1_pressed():
	change_tex(0)
	pass 
	
func _on_kotak2_pressed():
	change_tex(1)
	pass 

func _on_kotak3_pressed():
	change_tex(2)
	pass 

func _on_kotak4_pressed():
	change_tex(3)
	
	pass 



func change_tex(index):
	anim[index].play("close")
	yield(anim[index],"finished")
	anim[index].play("open")
	a[index].set_normal_texture(load("res://UI/button_green.png"))
