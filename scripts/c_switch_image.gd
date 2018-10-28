extends Node2D

var a = []
var anim = []
var index = 0
var qs 
var as 
var destroy = false
var combo_pressed = 0
var get_index = []
var timer
var timer_2

func _ready():
	a.resize(6)
	anim.resize(6)
	get_index.resize(6)
	
	as = null
	qs = null
	
	a[0]= get_node("../kotak1")
	a[1]= get_node("../kotak2")
	a[2]= get_node("../kotak3")
	a[3]= get_node("../kotak4")
	a[4]= get_node("../kotak5")
	a[5]= get_node("../kotak6")
	
	anim[0] = get_node("../kotak1/AnimationPlayer")
	anim[1] = get_node("../kotak2/AnimationPlayer")
	anim[2] = get_node("../kotak3/AnimationPlayer")
	anim[3] = get_node("../kotak4/AnimationPlayer")
	anim[4] = get_node("../kotak5/AnimationPlayer")
	anim[5] = get_node("../kotak6/AnimationPlayer")
	
	timer = get_node("../turn_off")
	timer_2 = get_node("../turn_on")
	
	set_process(true)
	pass

func _process(delta):
	pass

func _on_kotak1_pressed():
	change_tex(0)
	qs = 0
	combo_pressed +=1
	get_index[0] = 1
	cek_jawaban(qs,as,combo_pressed)
	pass 
	
func _on_kotak2_pressed():
	change_tex(1)
	qs = 1
	combo_pressed +=1
	get_index[1]=1
	cek_jawaban(qs,as,combo_pressed)
	pass 

func _on_kotak3_pressed():
	change_tex(2)
	as = 0
	combo_pressed +=1
	get_index[2]=1
	cek_jawaban(qs,as,combo_pressed)
	pass 

func _on_kotak4_pressed():
	change_tex(3)
	as = 1
	combo_pressed +=1
	get_index[3]=1
	cek_jawaban(qs,as,combo_pressed)
	pass 


func _on_kotak5_pressed():
	change_tex(4)
	qs = 2
	combo_pressed +=1
	get_index[4]=1
	cek_jawaban(qs,as,combo_pressed)
	pass # replace with function body


func _on_kotak6_pressed():
	change_tex(5)
	as = 2
	combo_pressed +=1
	get_index[5]=1
	cek_jawaban(qs,as,combo_pressed)
	pass # replace with function body

func change_tex(index):
	anim[index].play("close")
	yield(anim[index],"finished")
	anim[index].play("open")
	a[index].set_normal_texture(load("res://UI/button_green.png"))
	yield(anim[index],"finished")
	
func cek_jawaban(a,b,c):
	if a == b and c==2:
		print("true")
		timer_2.start()
		combo_pressed=0
		as = rand_range(1,10)
		qs = rand_range(1,10)
	
	if a!=b and c==2:
		print("false")
		timer.start()
		jawaban_salah()
		combo_pressed=0
		as = rand_range(1,10)
		qs = rand_range(1,10)
	
func image_default(index):
	a[index].set_normal_texture(load("res://UI/back_button.png"))

func jawaban_benar():
	for i in range(0,6,1):
		if get_index[i]==1:
			get_index[i]=0
	print(as)
	print(qs)

func jawaban_salah():
	for i in range(0,6,1):
		if get_index[i]==1:
			get_index[i]=0

func _on_turn_off_timeout():
	for i in range(0,6,1):
		image_default(i)
	pass # replace with function body



func _on_turn_on_timeout():
	for i in range(0,6,1):
		if get_index[i]==1:
			a[i].hide()
	jawaban_benar()
	pass # replace with function body




