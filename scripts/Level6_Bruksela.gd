## Level 6: Bruksela 🇧🇪 — turyści, budynki EU, waffle i czekolada
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 6 — Bruksela 🇧🇪"
	scene_width = 3840.0
	bg_color = Color(0.75, 0.82, 0.95, 1)
	super._ready()

func _get_animals() -> Array:
	return [
		{emoji="🐮", pos=Vector2(200, 400)},
		{emoji="🐑", pos=Vector2(380, 420)},
		{emoji="🐄", pos=Vector2(560, 405)},
		{emoji="🦌", pos=Vector2(740, 395)},
		{emoji="🐮", pos=Vector2(920, 415)},
		{emoji="🐑", pos=Vector2(1100, 405)},
		{emoji="🐄", pos=Vector2(1280, 420)},
		{emoji="🦌", pos=Vector2(1460, 395)},
		{emoji="🐮", pos=Vector2(1640, 410)},
		{emoji="🐑", pos=Vector2(1820, 400)},
		{emoji="🐄", pos=Vector2(2000, 415)},
		{emoji="🦌", pos=Vector2(2180, 395)},
		{emoji="🐮", pos=Vector2(2360, 408)},
		{emoji="🐑", pos=Vector2(2540, 420)},
		{emoji="🐄", pos=Vector2(2720, 400)},
		{emoji="🦫", pos=Vector2(2880, 410), is_capybara=true},
		{emoji="🦌", pos=Vector2(3100, 395)},
		{emoji="🐮", pos=Vector2(3340, 415)},
		{emoji="🐑", pos=Vector2(3580, 405)},
	]
