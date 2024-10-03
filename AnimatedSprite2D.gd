extends AnimatedSprite2D


var Bullet = preload( "res://character_body_2d.tscn"")
var bulletDamage = 5
var pathname = NavigationRegion2D
var currTargets = [Imp.gd , Alduin.gd]
var curr
var sprite = get_node("TowerDefense")