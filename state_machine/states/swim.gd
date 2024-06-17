@icon("res://state_machine/assets/swim_state_icon.svg")
extends State

class_name SwimState

@export var proximity_range := 10.0

@export_subgroup("Movement")
@export var max_speed := 100
@export var acceleration := 10

@export_subgroup("Graphics")
@export var rotate_character := false

var move_to: Vector2


func apply_logic(character: CharacterBody2D, delta: float) -> void:
	var dir_to := character.position.direction_to(move_to)
	var velocity := character.velocity
	var distance_to := move_to - character.position
	
	if rotate_character:
		assert(false, "Not implemented")
	
	if distance_to.length_squared() < pow(proximity_range, 2):
		if velocity.length_squared() < pow(max_speed, 2):
			velocity += dir_to * acceleration * delta
		
	character.velocity = velocity
	character.move_and_slide()
