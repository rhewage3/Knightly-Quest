extends Area2D


@onready var timer = $Timer


func _on_body_entered(body):
	print("you died")
	Engine.time_scale = 0.5
	#when player (body) enters the on_body we remove the collsionshape node from it so it 
	#will fall from the platform and tiles
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
	


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
