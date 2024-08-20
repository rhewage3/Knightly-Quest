class_name OptionMenu
extends Control


@onready var level_1_button = $MarginContainer/HBoxContainer/VBoxContainer/level_1 as Button
@onready var level_2_button = $MarginContainer/HBoxContainer/VBoxContainer/level_2 as Button
@onready var back = $MarginContainer/HBoxContainer/VBoxContainer/back as Button



@onready var level_1 = preload("res://scenes/levels/lvl-1.tscn") as PackedScene
@onready var level_2 = preload("res://scenes/levels/lvl-2.tscn") as PackedScene
@onready var main_menu = preload("res://scenes/Menu/main_menu.tscn") as PackedScene


func _ready():
	level_1_button.button_down.connect(on_change_lvl1_pressed)
	level_2_button.button_down.connect(on_change_lvl2_pressed)
	back.button_down.connect(on_back_pressed)
	

	
func on_change_lvl1_pressed():
	get_tree().change_scene_to_packed(level_1)

func on_change_lvl2_pressed():
	get_tree().change_scene_to_packed(level_2)

func on_back_pressed():
	get_tree().change_scene_to_packed(main_menu)
	
	
