extends Area2D

signal found

# Czy kapibara jest "aktywna" (może być kliknięta)
var _active: bool = true

func _ready() -> void:
	input_pickable = true
	connect("input_event", _on_input_event)

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if not _active:
		return
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			_active = false
			emit_signal("found")
			_play_found_animation()

func _play_found_animation() -> void:
	# Proste animacje kapibarki po znalezieniu
	var tween: Tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 0.15)
	tween.tween_property(self, "modulate", Color(1.0, 0.9, 0.2, 1.0), 0.15)
	await tween.finished
	var tween2: Tween = create_tween()
	tween2.set_parallel(true)
	tween2.tween_property(self, "scale", Vector2(1.2, 1.2), 0.1)
	tween2.tween_property(self, "modulate", Color(1, 1, 1, 1), 0.1)
