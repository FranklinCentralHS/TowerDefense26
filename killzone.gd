extends Area2D

@export var hp= 50

func _process(_delta):
	if hp<=0:
		get_tree().change_scene_to_file("res://dead.tscn")
func destroyed(): 
	self.queue_free()

#func hit():

