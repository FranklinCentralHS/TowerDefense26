extends Node2D
class_name tower

var map_node = true
var build_valid = false
var build_location
var build_type

func initiate_build_mode (tower_type)
build_type= tower_type + "tier_1`"
build_mode = true 
get_node

func _process(delta):
    pass