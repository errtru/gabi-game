## Level 5: Samolot ✈️ — siedzenia, bagaże, pasażerowie
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 5 — Samolot ✈️"
	scene_width = 3840.0
	bg_color = Color(0.85, 0.90, 0.98, 1)
	super._ready()

func _get_animals() -> Array:
	return [
		{emoji="🐧", pos=Vector2(200, 350)},
		{emoji="🦉", pos=Vector2(380, 380)},
		{emoji="🐦", pos=Vector2(560, 340)},
		{emoji="🦚", pos=Vector2(740, 370)},
		{emoji="🐧", pos=Vector2(920, 355)},
		{emoji="🦉", pos=Vector2(1100, 385)},
		{emoji="🐦", pos=Vector2(1280, 345)},
		{emoji="🦚", pos=Vector2(1460, 375)},
		{emoji="🐧", pos=Vector2(1640, 360)},
		{emoji="🦉", pos=Vector2(1820, 380)},
		{emoji="🦚", pos=Vector2(2000, 365)},
		{emoji="🐦", pos=Vector2(2180, 350)},
		{emoji="🐧", pos=Vector2(2360, 385)},
		{emoji="🦉", pos=Vector2(2540, 355)},
		{emoji="🦚", pos=Vector2(2720, 370)},
		{emoji="🦫", pos=Vector2(2910, 358), is_capybara=true},
		{emoji="🐧", pos=Vector2(3100, 382)},
		{emoji="🦉", pos=Vector2(3340, 350)},
		{emoji="🐦", pos=Vector2(3580, 375)},
	]
