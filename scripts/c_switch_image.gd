extends Node2D

var a = []
var anim = []
var b = []
var index = 0
var qs 
var as 
var destroy = false
var combo_pressed = 0
var get_index = []
var timer
var timer_2
var finish_state
var level_finish_indicator = 0
<<<<<<< HEAD
var can_change_tex
=======
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8

func _ready():
	a.resize(6)
	anim.resize(6)
	get_index.resize(6)
	b.resize(6)
	
<<<<<<< HEAD
	can_change_tex = true
=======
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
	
	
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
	
	b[0] = get_node("../kotak1/Label")
	b[1] = get_node("../kotak2/Label")
	b[2] = get_node("../kotak3/Label")
	b[3] = get_node("../kotak4/Label")
	b[4] = get_node("../kotak5/Label")
	b[5] = get_node("../kotak6/Label")
	
	finish_state = get_node("../UI/Level_done")
	
	timer = get_node("../turn_off")
	timer_2 = get_node("../turn_on")
	
	finish_state.hide()
	
	set_process(true)
	pass

func _process(delta):
	pass

func _on_kotak1_pressed():
<<<<<<< HEAD
	if combo_pressed!=2:
		qs = 0
		can_change_tex(0)
		cek_jawaban(qs,as,combo_pressed)
	pass 
	
func _on_kotak2_pressed():
	if combo_pressed!=2:
		qs = 1
		can_change_tex(1)
		cek_jawaban(qs,as,combo_pressed)
	pass 

func _on_kotak3_pressed():
	if combo_pressed!=2:
		as = 0
		can_change_tex(2)
		cek_jawaban(qs,as,combo_pressed)
	pass 

func _on_kotak4_pressed():
	if combo_pressed!=2:
		as = 2
		can_change_tex(3)
		cek_jawaban(qs,as,combo_pressed)
=======
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
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
	pass 


func _on_kotak5_pressed():
<<<<<<< HEAD
	if combo_pressed!=2:
		qs = 2
		can_change_tex(4)
		cek_jawaban(qs,as,combo_pressed)
=======
	change_tex(4)
	qs = 2
	combo_pressed +=1
	get_index[4]=1
	cek_jawaban(qs,as,combo_pressed)
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
	pass # replace with function body


func _on_kotak6_pressed():
<<<<<<< HEAD
	if combo_pressed!=2:
		as = 1
		can_change_tex(5)
		cek_jawaban(qs,as,combo_pressed)
	pass # replace with function body

func change_tex(index):
	if combo_pressed!=2:
		anim[index].play("close")
		yield(anim[index],"finished")
		anim[index].play("open")
		a[index].set_normal_texture(load("res://UI/button_green.png"))
		b[index].show()
=======
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
	b[index].show()
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
	
	
func cek_jawaban(a,b,c):
	if a == b and c==2:
		print("true")
		timer_2.start()
<<<<<<< HEAD
=======
		combo_pressed=0
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
		as = rand_range(1,10)
		qs = rand_range(1,10)
		level_finish_indicator += 1
	
	
	
	if a!=b and c==2:
		print("false")
		timer.start()
		jawaban_salah()
<<<<<<< HEAD
=======
		combo_pressed=0
>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
		as = rand_range(1,14)
		qs = rand_range(1,14)
	
func image_default(index):
	a[index].set_normal_texture(load("res://UI/back_button.png"))
	b[index].hide()
<<<<<<< HEAD

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
	combo_pressed=0

=======

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

>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8
func level_finished():
	if level_finish_indicator == 3:
		finish_state.show()
		get_tree().set_pause(true)

func _on_turn_off_timeout():
	for i in range(0,6,1):
		image_default(i)
	pass # replace with function body



func _on_turn_on_timeout():
	for i in range(0,6,1):
		if get_index[i]==1:
			a[i].hide()
	jawaban_benar()
<<<<<<< HEAD
	combo_pressed=0
	level_finished()
	pass # replace with function body

func can_change_tex(index_texture):
	change_tex(index_texture)
	combo_pressed +=1
	get_index[index_texture]=1
=======
	level_finished()
	pass # replace with function body


>>>>>>> 8ee581f640cdee1a439030aa2deeeb26bf6f02c8


