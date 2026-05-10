## Level 5: Samolot ✈️ — siedzenia, bagaże, pasażerowie
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 5 — Samolot ✈️"
	scene_width = 3840.0
	bg_color = Color(0.85, 0.90, 0.98, 1)
	bg_texture_path = "res://assets/backgrounds/bg_samolot.svg"
	super._ready()

func _get_animals() -> Array:
	return [
		{sprite="res://assets/characters/penguin.svg", pos=Vector2(200, 350)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(380, 380)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(560, 340)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(740, 370)},
		{sprite="res://assets/characters/penguin.svg", pos=Vector2(920, 355)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(1100, 385)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(1280, 345)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(1460, 375)},
		{sprite="res://assets/characters/penguin.svg", pos=Vector2(1640, 360)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(1820, 380)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(2000, 365)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(2180, 350)},
		{sprite="res://assets/characters/penguin.svg", pos=Vector2(2360, 385)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(2540, 355)},
		{sprite="res://assets/characters/peacock.svg", pos=Vector2(2720, 370)},
		{sprite="res://assets/characters/capybara.svg", pos=Vector2(2910, 358), is_capybara=true},
		{sprite="res://assets/characters/penguin.svg", pos=Vector2(3100, 382)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(3340, 350)},
		{sprite="res://assets/characters/duck.svg", pos=Vector2(3580, 375)},
	]
