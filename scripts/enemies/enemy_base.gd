extends npc

@onready var sprite: Sprite2D = $Sprite2D

@export var damage_amount: int = -25
@export var damage_cooldown: float = 1.0

var can_damage: bool = true



func _ready() -> void:
	super._ready()
	

func _physics_process(delta: float) -> void:
	super._physics_process(delta)
	pass


func _on_detection_radius_body_entered(body: Node2D) -> void:
	super._on_detection_radius_body_entered(body)
	if body is Player:
		is_hostile = true
	
	pass # Replace with function body.


func _on_detection_radius_body_exited(body: Node2D) -> void:
	super._on_detection_radius_body_exited(body)
	if body is Player:
		is_hostile = false
	pass # Replace with function body.

func _on_hit_radius_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is Player and can_damage:
		is_hostile = true
		print("Player was attacked by a slime! Dealing " + str(damage_amount) + " damage")
		
		if body.has_method("change_health"):
			body.change_health(damage_amount)


func _on_hit_radius_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is Player:
		can_damage = false
