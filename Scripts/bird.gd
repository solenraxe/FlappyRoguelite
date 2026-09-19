extends CharacterBody2D

var gravity : float = 3000
var jumpForce : float = 1200

func _physics_process(delta: float) -> void:
	velocity.y = velocity.y * 0.95 + gravity * delta
	
	if Input.is_action_just_pressed("jump"):
		velocity.y -= jumpForce
		
	move_and_slide()
