## Level 4: Plac Zabaw 🛝 — kolorowe zwierzaki na placu
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 4 — Plac Zabaw 🛝"
	scene_width = 3840.0
	bg_color = Color(0.6, 0.88, 0.6, 1)
	bg_texture_path = "res://assets/backgrounds/bg_plac_zabaw.svg"
	super._ready()

func _get_animals() -> Array:
	return [
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(200, 420)},
		{sprite="res://assets/characters/bear.svg", pos=Vector2(380, 400)},
		{sprite="res://assets/characters/panda.svg", pos=Vector2(560, 415)},
		{sprite="res://assets/characters/fox.svg", pos=Vector2(740, 400)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(920, 430)},
		{sprite="res://assets/characters/bear.svg", pos=Vector2(1100, 395)},
		{sprite="res://assets/characters/lion.svg", pos=Vector2(1280, 405)},
		{sprite="res://assets/characters/panda.svg", pos=Vector2(1460, 420)},
		{sprite="res://assets/characters/fox.svg", pos=Vector2(1640, 400)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(1820, 425)},
		{sprite="res://assets/characters/bear.svg", pos=Vector2(2000, 410)},
		{sprite="res://assets/characters/lion.svg", pos=Vector2(2180, 395)},
		{sprite="res://assets/characters/panda.svg", pos=Vector2(2360, 415)},
		{sprite="res://assets/characters/fox.svg", pos=Vector2(2540, 400)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(2720, 430)},
		{sprite="res://assets/characters/capybara.svg", pos=Vector2(2890, 405), is_capybara=true},
		{sprite="res://assets/characters/bear.svg", pos=Vector2(3100, 395)},
		{sprite="res://assets/characters/lion.svg", pos=Vector2(3340, 408)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(3580, 425)},
	]
