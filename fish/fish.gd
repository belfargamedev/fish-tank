@icon("res://fish/assets/fish_icon.svg")
extends CharacterBody2D

class_name Fish

var _target: Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every physics frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta) -> void:
	pass


func move_to_point(position: Vector2) -> void:
	pass
