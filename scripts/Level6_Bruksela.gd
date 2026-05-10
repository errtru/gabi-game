## Level 6: Bruksela 🇧🇪 — turyści, budynki EU, waffle i czekolada
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 6 — Bruksela 🇧🇪"
	scene_width = 3840.0
	bg_color = Color(0.75, 0.82, 0.95, 1)
	bg_texture_path = "res://assets/backgrounds/bg_bruksela.svg"
	super._ready()

func _get_animals() -> Array:
	return [
		{sprite="res://assets/characters/cow.svg", pos=Vector2(200, 400)},
		{sprite="res://assets/characters/sheep.svg", pos=Vector2(380, 420)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(560, 405)},
		{sprite="res://assets/characters/deer.svg", pos=Vector2(740, 395)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(920, 415)},
		{sprite="res://assets/characters/sheep.svg", pos=Vector2(1100, 405)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(1280, 420)},
		{sprite="res://assets/characters/deer.svg", pos=Vector2(1460, 395)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(1640, 410)},
		{sprite="res://assets/characters/sheep.svg", pos=Vector2(1820, 400)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(2000, 415)},
		{sprite="res://assets/characters/deer.svg", pos=Vector2(2180, 395)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(2360, 408)},
		{sprite="res://assets/characters/sheep.svg", pos=Vector2(2540, 420)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(2720, 400)},
		{sprite="res://assets/characters/capybara.svg", pos=Vector2(2880, 410), is_capybara=true},
		{sprite="res://assets/characters/deer.svg", pos=Vector2(3100, 395)},
		{sprite="res://assets/characters/cow.svg", pos=Vector2(3340, 415)},
		{sprite="res://assets/characters/sheep.svg", pos=Vector2(3580, 405)},
	]
