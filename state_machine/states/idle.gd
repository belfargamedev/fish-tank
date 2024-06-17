@icon("res://state_machine/assets/idle_state_icon.svg")
extends State

class_name IdleState

func get_transition(_character: CharacterBody2D = null, _delta: float = 0.0) -> State:
	return next_states[0]
