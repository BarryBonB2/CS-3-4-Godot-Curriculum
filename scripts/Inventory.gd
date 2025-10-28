extends Node2D
class_name Inventory

@export var my_Inventory: Array [Inventory_item] 
var current_item : int = 0
var maxsize = 5

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed ("inventory_up"):
		current_item -= 1
		if current_item <0 :
			current_item=my_Inventory.size()-1
		print_inventory (current_item)
	if Input.is_action_just_pressed ("inventory_down"):
		current_item += 1
		if current_item > my_Inventory.size()-1:
			current_item=0
		print_inventory (current_item)

func print_inventory (_item,_int):
	
	print("the current item is " + my_Inventory[current_item].name)
	print(str(my_Inventory[current_item].description))

func add_item (item: Inventory_item):
	if my_Inventory.size() <maxsize:
		my_Inventory.append(item)
		print("something has been added to inventory")
	else: print("inventory is too full")

func remove_item (_index: int):
	if Input.is_action_just_pressed ("inventory_remove"):
		my_Inventory.remove_at(current_item) 
