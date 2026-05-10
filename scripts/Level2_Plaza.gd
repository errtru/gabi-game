## Level 2: Plaża 🏖 — piasek i słońce, plażowicze
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 2 — Plaża 🏖"
	scene_width = 3840.0
	bg_color = Color(0.96, 0.87, 0.55, 1)
	super._ready()

func _get_animals() -> Array:
	return [
		{emoji="🦀", pos=Vector2(200, 480)},
		{emoji="🐚", pos=Vector2(370, 500)},
		{emoji="🦩", pos=Vector2(540, 360)},
		{emoji="🐠", pos=Vector2(720, 490)},
		{emoji="🦀", pos=Vector2(900, 480)},
		{emoji="🐦", pos=Vector2(1080, 350)},
		{emoji="🦩", pos=Vector2(1260, 365)},
		{emoji="🐚", pos=Vector2(1440, 505)},
		{emoji="🦀", pos=Vector2(1620, 482)},
		{emoji="🐬", pos=Vector2(1800, 350)},
		{emoji="🦩", pos=Vector2(1980, 360)},
		{emoji="🐦", pos=Vector2(2160, 345)},
		{emoji="🦀", pos=Vector2(2340, 490)},
		{emoji="🐚", pos=Vector2(2520, 500)},
		{emoji="🦩", pos=Vector2(2700, 360)},
		{emoji="🦫", pos=Vector2(2900, 470), is_capybara=true},
		{emoji="🦀", pos=Vector2(3100, 485)},
		{emoji="🐦", pos=Vector2(3340, 350)},
		{emoji="🐚", pos=Vector2(3580, 500)},
	]
