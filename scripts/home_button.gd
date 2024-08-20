extends CanvasLayer

@onready var button = $Button
@onready var main_menu = preload("res://scenes/Menu/main_menu.tscn") as PackedScene




func _on_button_pressed():
	get_tree().change_scene_to_packed(main_menu)
