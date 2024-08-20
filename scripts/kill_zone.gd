extends Area2D


@onready var timer = $Timer


func _on_body_entered(body):
	print("you died")
	Engine.time_scale = 0.5
	
	# Access the autoloaded GameData instance and making the score 0
	var game_data = get_tree().root.get_node("/root/GameData")
	if game_data:
		game_data.reset_score()
	else:
		print("Error: GameData not found")
   
	
	#when player (body) enters the on_body we remove the collsionshape node from it so it 
	#will fall from the platform and tiles
	#palyer_animation.play("dead")
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
	

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
