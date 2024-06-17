@icon("res://state_machine/assets/state_machine_icon.svg")
extends Node

class_name StateMachine

@export var character: CharacterBody2D = null

@export var _curr_state: State = null:
	set(value):
		_previous_state = _curr_state
		_curr_state = value

var _previous_state: State = null


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta) -> void:
	if _curr_state != null:
		_curr_state.apply_logic(character, delta)
		
		var transition := _curr_state.get_transition(character, delta)
		if transition != null:
			_curr_state = transition
