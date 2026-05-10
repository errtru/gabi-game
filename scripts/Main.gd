extends Control

func _ready() -> void:
	$VBox/PlayButton.pressed.connect(_on_play_pressed)
	var lvl := GameManager.current_level_index
	if lvl > 0:
		$VBox/LevelLabel.text = "Poziom %d / %d ukończony!" % [lvl, GameManager.LEVELS.size()]

func _on_play_pressed() -> void:
	GameManager.start_game()
