## Level 3: Dom 🏠 — przytulny dom, domowe zwierzaki
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 3 — Dom 🏠"
	scene_width = 3840.0
	bg_color = Color(0.95, 0.88, 0.76, 1)
	super._ready()

func _get_animals() -> Array:
	return [
		{emoji="🐈", pos=Vector2(200, 400)},
		{emoji="🐕", pos=Vector2(380, 420)},
		{emoji="🐇", pos=Vector2(560, 440)},
		{emoji="🐹", pos=Vector2(740, 410)},
		{emoji="🐈", pos=Vector2(920, 395)},
		{emoji="🦜", pos=Vector2(1100, 300)},
		{emoji="🐕", pos=Vector2(1280, 430)},
		{emoji="🐇", pos=Vector2(1460, 445)},
		{emoji="🐈", pos=Vector2(1640, 400)},
		{emoji="🐹", pos=Vector2(1820, 415)},
		{emoji="🦜", pos=Vector2(2000, 305)},
		{emoji="🐕", pos=Vector2(2180, 420)},
		{emoji="🐈", pos=Vector2(2360, 400)},
		{emoji="🐇", pos=Vector2(2540, 440)},
		{emoji="🐹", pos=Vector2(2720, 410)},
		{emoji="🦫", pos=Vector2(2920, 430), is_capybara=true},
		{emoji="🐈", pos=Vector2(3120, 400)},
		{emoji="🐕", pos=Vector2(3360, 425)},
		{emoji="🦜", pos=Vector2(3600, 300)},
	]
