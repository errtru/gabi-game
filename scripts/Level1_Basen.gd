## Level 1: Basen 🏊 — niebieska woda, zwierzaki kąpiące się
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 1 — Basen 🏊"
	scene_width = 3840.0
	bg_color = Color(0.18, 0.55, 0.90, 1)
	super._ready()

func _get_animals() -> Array:
	return [
		{emoji="🐟", pos=Vector2(200, 380)},
		{emoji="🐠", pos=Vector2(380, 430)},
		{emoji="🦆", pos=Vector2(560, 360)},
		{emoji="🐸", pos=Vector2(740, 400)},
		{emoji="🦢", pos=Vector2(920, 375)},
		{emoji="🐟", pos=Vector2(1100, 440)},
		{emoji="🦑", pos=Vector2(1280, 390)},
		{emoji="🐙", pos=Vector2(1460, 415)},
		{emoji="🦈", pos=Vector2(1640, 380)},
		{emoji="🐬", pos=Vector2(1820, 360)},
		{emoji="🐟", pos=Vector2(2000, 425)},
		{emoji="🦆", pos=Vector2(2180, 395)},
		{emoji="🐸", pos=Vector2(2360, 410)},
		{emoji="🦢", pos=Vector2(2540, 375)},
		{emoji="🐠", pos=Vector2(2720, 440)},
		{emoji="🦫", pos=Vector2(2940, 385), is_capybara=true},
		{emoji="🐟", pos=Vector2(3150, 400)},
		{emoji="🦆", pos=Vector2(3380, 380)},
		{emoji="🦑", pos=Vector2(3620, 420)},
	]
