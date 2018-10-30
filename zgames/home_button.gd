extends TextureButton



func _ready():
	pass


func _on_home_pressed():
	get_tree().change_scene("res://main_menu.tscn")
	get_tree().set_pause(false)
	pass # replace with function body
