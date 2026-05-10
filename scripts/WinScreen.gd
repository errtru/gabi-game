extends Control

func _ready() -> void:
	$VBox/PlayAgainButton.pressed.connect(_on_play_again)
	# Małe animacje gwiazd
	var tween: Tween = create_tween()
	tween.set_loops()
	tween.tween_property($VBox/Trophy, "rotation_degrees", 10.0, 0.5)
	tween.tween_property($VBox/Trophy, "rotation_degrees", -10.0, 0.5)

func _on_play_again() -> void:
	GameManager.start_game()
