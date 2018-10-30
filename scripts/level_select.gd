extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Level_select_pressed():
	get_tree().change_scene("res://level_selection.tscn")
	get_tree().set_pause(false)
	pass # replace with function body
