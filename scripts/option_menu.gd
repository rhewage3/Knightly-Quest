extends Control

@onready var back = $MarginContainer/HBoxContainer/VBoxContainer/Back
@onready var main_menu = preload("res://scenes/Menu/main_menu.tscn") as PackedScene

var music_bus = AudioServer.get_bus_index("Music")
var master_bus = AudioServer.get_bus_index("Master")

var previous_master_volume = 0.0
var previous_music_volume = 0.0


func _on_master_value_changed(value):
	previous_master_volume = value
	AudioServer.set_bus_volume_db(master_bus, value)

func _on_music_value_changed(value):
	previous_music_volume = value
	AudioServer.set_bus_volume_db(music_bus, value)

func _on_check_box_toggled(toggled_on):
	if toggled_on:
		# Mute both buses
		AudioServer.set_bus_volume_db(master_bus, -80.0) # Effectively mute
		AudioServer.set_bus_volume_db(music_bus, -80.0)
	else:
		# Restore previous volumes
		AudioServer.set_bus_volume_db(master_bus, previous_master_volume)
		AudioServer.set_bus_volume_db(music_bus, previous_music_volume)


func _on_back_pressed():
	get_tree().change_scene_to_packed(main_menu)
