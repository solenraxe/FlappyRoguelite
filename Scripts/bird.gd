extends CharacterBody2D

var gravity : float = 981
var jumpForce : float = 400

func _physics_process(delta: float) -> void:
	velocity.y  += gravity * delta
