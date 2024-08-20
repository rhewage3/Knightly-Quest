extends Node

@onready var hub = $HUB
@onready var score_label = hub.get_node("ScoreLabel")

func _ready():
	update_score()

func add_points():
	GameData.score += 1
	update_score()

func update_score():
	score_label.text = "Score: " + str(GameData.score)
