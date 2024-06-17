extends Node

class_name State

@export var next_states: Array[State] = []


func apply_logic(_character: CharacterBody2D, _delta: float) -> void:
	pass


func get_transition(_character: CharacterBody2D = null, _delta: float = 0.0) -> State:
	return null


func exit() -> void:
	pass
