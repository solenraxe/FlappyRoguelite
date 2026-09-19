extends Node

var currentScene = null
func _ready() -> void:
	var root = get_tree().root
	currentScene = root.get_child(root.get_child_count() - 1)

func switchScene(path):
	call_deferred("_deferredSwitchScene", path)
	
func _deferredSwitchScene(path):
	currentScene.free()
	var s = load(path)
	currentScene = s.instantiate()
	get_tree().root.add_child(currentScene)
	get_tree().current_scene = currentScene
