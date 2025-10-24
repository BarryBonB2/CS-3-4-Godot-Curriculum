extends Node
class_name Inventory

@export var my_Inventory: Array [Inventory_item] 
var current_item : int = 0
var maxsize = 5

func _process(delta: float) -> void:
	pass

func print_inventory (item,int):
	pass

func add_item (item: Inventory_item):
	pass

func remove_item (item: Inventory_item):
	pass
