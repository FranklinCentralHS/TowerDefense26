extends CharacterBody2D
class_name Enemy

@export var hp= 10
@export var speed=50 
@export var  dammage=10 
@export var can_fly= "false"
@export var Name= "Enemy"
@export var can_be_hit= "true"

var accel =7
@onready var nav: NavigationAgent2D = $NavigationAgent2D 
func _process (delta):
    var direction = Vector3()
    nav.target_position = Vector2(575, 115)

    direction = nav.get_next_path_position()-global_position 
    direction = direction.normalized()

    velocity = velocity.lerp(direction*speed*2,accel*delta)
    move_and_slide()

    
