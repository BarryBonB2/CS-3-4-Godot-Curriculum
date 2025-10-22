extends Area2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@export var has_key: bool = false
func _ready():
	animated_sprite.play("default")

func _on_detection_radius_body_entered(body: Node2D) -> void:
	if body is Player and has_key:
		animated_sprite.play("open")

func _on_detection_radius_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
