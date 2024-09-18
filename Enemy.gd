extends CharacterBody2D
class_name Enemy

@export var speed = 50
@export var damage = 40
@export var health = 20
@export var can_fly = "true" 

var accel =7
@onready var nav: NavigationAgent2D = $NavigationAgent2D 
func _process (delta):
    var direction = Vector3()
    nav.target_position = Vector2(575, 115 )

    direction = nav.get_next_path_position()-global_position 
    direction = direction.normalized()

    velocity = velocity.lerp(direction*speed*2,accel*delta)
    move_and_slide()

    
