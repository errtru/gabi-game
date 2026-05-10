## Level 3: Dom 🏠 — przytulny dom, domowe zwierzaki
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 3 — Dom 🏠"
	scene_width = 3840.0
	bg_color = Color(0.95, 0.88, 0.76, 1)
	bg_texture_path = "res://assets/backgrounds/bg_dom.svg"
	super._ready()

func _get_animals() -> Array:
	return [
		{sprite="res://assets/characters/cat.svg", pos=Vector2(200, 400)},
		{sprite="res://assets/characters/dog.svg", pos=Vector2(380, 420)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(560, 440)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(740, 410)},
		{sprite="res://assets/characters/cat.svg", pos=Vector2(920, 395)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(1100, 300)},
		{sprite="res://assets/characters/dog.svg", pos=Vector2(1280, 430)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(1460, 445)},
		{sprite="res://assets/characters/cat.svg", pos=Vector2(1640, 400)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(1820, 415)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(2000, 305)},
		{sprite="res://assets/characters/dog.svg", pos=Vector2(2180, 420)},
		{sprite="res://assets/characters/cat.svg", pos=Vector2(2360, 400)},
		{sprite="res://assets/characters/rabbit.svg", pos=Vector2(2540, 440)},
		{sprite="res://assets/characters/dog.svg", pos=Vector2(2720, 410)},
		{sprite="res://assets/characters/capybara.svg", pos=Vector2(2920, 430), is_capybara=true},
		{sprite="res://assets/characters/cat.svg", pos=Vector2(3120, 400)},
		{sprite="res://assets/characters/dog.svg", pos=Vector2(3360, 425)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(3600, 300)},
	]
