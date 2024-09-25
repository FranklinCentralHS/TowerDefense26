extends Area2D

var hp=50
func _on_area_entered(_body):
	hp-=100
	if hp<=0:
		get_tree().change_scene_to_file("res://dead.tscn")
func destroyed(): 
	self.queue_free()
