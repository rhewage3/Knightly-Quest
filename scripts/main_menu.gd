class_name MainMenu
extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var levels_button = $MarginContainer/HBoxContainer/VBoxContainer/Levels_button as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_button as Button
@onready var options_button = $MarginContainer/HBoxContainer/VBoxContainer/Options_button as Button
@onready var level_1_button = $MarginContainer/HBoxContainer/VBoxContainer/level_1 as Button
@onready var level_2_button = $MarginContainer/HBoxContainer/VBoxContainer/level_2 as Button
@onready var back = $MarginContainer/HBoxContainer/VBoxContainer/back as Button



@onready var level_1 = preload("res://scenes/levels/lvl-1.tscn") as PackedScene
@onready var level_2 = preload("res://scenes/levels/lvl-1.tscn") as PackedScene
@onready var option_menu = preload("res://scenes/Menu/option_menu.tscn") as PackedScene
@onready var main_menu = preload("res://scenes/Menu/main_menu.tscn") as PackedScene


func _ready():
	start_button.button_down.connect(on_start_pressed)
	levels_button.button_down.connect(on_level_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
	



func on_start_pressed():
	get_tree().change_scene_to_packed(level_1)
	
func on_level_pressed():
	get_tree().change_scene_to_packed(option_menu)
	
func on_exit_pressed():
	get_tree().quit()
	
	
	
