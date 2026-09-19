extends Node2D

var speed : float = 400

func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	
func _on_area_2d_body_entered(_body: Node2D) -> void:
	scene_switcher.switchScene("res://Scenes/menu.tscn")

func _on_score_body_entered(_body: Node2D) -> void:
	Autoload.score += 1
