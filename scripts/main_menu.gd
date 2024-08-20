class_name MainMenu
extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var levels_button = $MarginContainer/HBoxContainer/VBoxContainer/Levels_button as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_button as Button

@onready var start_level = preload("res://scenes/levels/lvl-1.tscn") as PackedScene


func _ready():
	start_button.button_down.connect(on_start_pressed)
	levels_button.button_down.connect(on_level_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	



func on_start_pressed():
	get_tree().change_scene_to_packed(start_level)
	
func on_level_pressed():
	pass # Replace with function body.
	
func on_exit_pressed():
	get_tree().quit()
	
	
	
	
	
	
