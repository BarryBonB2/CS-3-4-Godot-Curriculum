extends Area2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@export var has_key: bool = false
func animate_opening() -> void:
	animated_sprite.stop()

func _on_detection_radius_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_detection_radius_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
