extends Node

@onready var _water_layer: CanvasLayer = $TankEnvironment/WaterLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	_set_transparent_bg(true)
	_set_water_layer(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _set_transparent_bg(value: bool) -> void:
	get_tree().get_root().set_transparent_background(value)

func _set_water_layer(value: bool) -> void:
	_water_layer.visible = value
