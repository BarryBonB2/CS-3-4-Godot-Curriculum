
extends AnimatableBody2D


@export var is_open: bool = false

func _on_detection_radius_body_entered(body: Node2D) -> void:
	if body is Player:
		is_open = true
		if is_open:
			$AnimatedSprite2D.frame = 2
			collision_layer = 0
			$LightOccluder2D.visible = false

func _on_detection_radius_body_exited(body: Node2D) -> void:
	if body is Player:
		is_open = false
		$AnimatedSprite2D.frame = 0
		collision_layer = 1
		$LightOccluder2D.visible = true
