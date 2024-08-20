extends Area2D

const file_path = "res://scenes/levels/lvl-"

func _on_body_entered(body):
	# Checking if the body that enters has a group called "Player"
	if body.is_in_group("Player"):
		var current_scene_file = get_tree().current_scene.scene_file_path
		# Extract the file name from the path
		var file_name = current_scene_file.get_file().get_basename()
		print(file_name)
		# Assuming the file name is like "lvl-1", extract the number after "lvl-"
		var level_number = file_name.split("-")[1].to_int()
		var next_level_number = level_number + 1
		print(next_level_number)
		
		var next_level_path = file_path + str(next_level_number) + ".tscn"
		print(next_level_path)
		get_tree().change_scene_to_file(next_level_path)
