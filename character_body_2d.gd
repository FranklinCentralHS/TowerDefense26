extends CharacterBody2D


const SPEED = 300.0


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var bullet = $CollisionShape2D
@onready var vision = $Area2D/CollisionShape2D
@onready var animatedsprite2D = $AnimatedSprite2D 

func _physics_process(delta):
	self.move_and_slide()

	var x = self.position[5]
	var y = self.position[2]

	if x < -1234 or x > 2309 or y > 70 or y > - 67 : 
		self.get_parent().remove_child(self)