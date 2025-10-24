extends Node2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

@export var label : String = ""

func _ready() -> void:
	orientation()


func orientation():
	if label == "front":
		animated_sprite.play("front")
		return true
	elif label == "side":
		animated_sprite.play("side")
		return true
	else: return false
