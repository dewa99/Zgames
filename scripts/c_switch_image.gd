extends Node2D

var a = []
var anim
var timer

func _ready():
	a.resize(4)
	a[0]= get_node("../kotak1")
	a[1]= get_node("../kotak2")
	a[2]= get_node("../kotak3")
	a[3]= get_node("../kotak4")
	
	anim = get_node("../kotak1/AnimationPlayer")
	timer = get_node("../Timer")
	
	set_process(true)
	pass

func _process(delta):
	
	pass


func _on_kotak1_pressed():
	anim.play("close")
	timer.start()
	pass # replace with function body

func change_tex(index):
	a[index].set_normal_texture(load('res://UI/button_green.png'))

func _on_Timer_timeout():
	change_tex(0)
	pass # replace with function body
