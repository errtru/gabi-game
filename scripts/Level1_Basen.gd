## Level 1: Basen 🏊 — niebieska woda, zwierzaki kąpiące się
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 1 — Basen 🏊"
	scene_width = 3840.0
	bg_color = Color(0.18, 0.55, 0.90, 1)
	bg_texture_path = "res://assets/backgrounds/bg_basen.svg"
	super._ready()

func _get_animals() -> Array:
	return [
		{sprite="res://assets/characters/fish.svg", pos=Vector2(200, 380)},
		{sprite="res://assets/characters/dolphin.svg", pos=Vector2(380, 430)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(560, 360)},
		{sprite="res://assets/characters/frog.svg", pos=Vector2(740, 400)},
		{sprite="res://assets/characters/swan.svg", pos=Vector2(920, 375)},
		{sprite="res://assets/characters/fish.svg", pos=Vector2(1100, 440)},
		{sprite="res://assets/characters/squid.svg", pos=Vector2(1280, 390)},
		{sprite="res://assets/characters/octopus.svg", pos=Vector2(1460, 415)},
		{sprite="res://assets/characters/shark.svg", pos=Vector2(1640, 380)},
		{sprite="res://assets/characters/dolphin.svg", pos=Vector2(1820, 360)},
		{sprite="res://assets/characters/fish.svg", pos=Vector2(2000, 425)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(2180, 395)},
		{sprite="res://assets/characters/frog.svg", pos=Vector2(2360, 410)},
		{sprite="res://assets/characters/swan.svg", pos=Vector2(2540, 375)},
		{sprite="res://assets/characters/octopus.svg", pos=Vector2(2720, 440)},
		{sprite="res://assets/characters/capybara.svg", pos=Vector2(2940, 385), is_capybara=true},
		{sprite="res://assets/characters/fish.svg", pos=Vector2(3150, 400)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(3380, 380)},
		{sprite="res://assets/characters/squid.svg", pos=Vector2(3620, 420)},
	]
