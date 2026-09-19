extends Node2D

@onready var pipes : PackedScene = preload("res://Scenes/pipes.tscn")

func _ready() -> void:
	Autoload.score = 0
	
func _process(_delta: float) -> void:
	$CanvasLayer/Control/Label.text = str(Autoload.score)

func _on_timer_timeout() -> void:
	var pipesInst = pipes.instantiate()
	pipesInst.position.x = 1152
	pipesInst.position.y = randi_range(100, 550)
	add_child(pipesInst)
	$Timer.start()
	
