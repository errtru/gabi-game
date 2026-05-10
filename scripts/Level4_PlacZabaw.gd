## Level 4: Plac Zabaw 🛝 — kolorowe zwierzaki na placu
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 4 — Plac Zabaw 🛝"
	scene_width = 3840.0
	bg_color = Color(0.6, 0.88, 0.6, 1)
	super._ready()

func _get_animals() -> Array:
	return [
		{emoji="🐰", pos=Vector2(200, 420)},
		{emoji="🐻", pos=Vector2(380, 400)},
		{emoji="🐼", pos=Vector2(560, 415)},
		{emoji="🦊", pos=Vector2(740, 400)},
		{emoji="🐰", pos=Vector2(920, 430)},
		{emoji="🐻", pos=Vector2(1100, 395)},
		{emoji="🦁", pos=Vector2(1280, 405)},
		{emoji="🐼", pos=Vector2(1460, 420)},
		{emoji="🦊", pos=Vector2(1640, 400)},
		{emoji="🐰", pos=Vector2(1820, 425)},
		{emoji="🐻", pos=Vector2(2000, 410)},
		{emoji="🦁", pos=Vector2(2180, 395)},
		{emoji="🐼", pos=Vector2(2360, 415)},
		{emoji="🦊", pos=Vector2(2540, 400)},
		{emoji="🐰", pos=Vector2(2720, 430)},
		{emoji="🦫", pos=Vector2(2890, 405), is_capybara=true},
		{emoji="🐻", pos=Vector2(3100, 395)},
		{emoji="🦁", pos=Vector2(3340, 408)},
		{emoji="🐰", pos=Vector2(3580, 425)},
	]
