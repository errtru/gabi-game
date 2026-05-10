## Level 2: Plaża 🏖 — piasek i słońce, plażowicze
extends "res://scripts/BaseLevel.gd"

func _ready() -> void:
	level_name_text = "Poziom 2 — Plaża 🏖"
	scene_width = 3840.0
	bg_color = Color(0.96, 0.87, 0.55, 1)
	bg_texture_path = "res://assets/backgrounds/bg_plaza.svg"
	super._ready()

func _get_animals() -> Array:
	return [
		{sprite="res://assets/characters/crab.svg", pos=Vector2(200, 480)},
		{sprite="res://assets/characters/seashell.svg", pos=Vector2(370, 500)},
		{sprite="res://assets/characters/flamingo.svg", pos=Vector2(540, 360)},
		{sprite="res://assets/characters/fish.svg", pos=Vector2(720, 490)},
		{sprite="res://assets/characters/crab.svg", pos=Vector2(900, 480)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(1080, 350)},
		{sprite="res://assets/characters/flamingo.svg", pos=Vector2(1260, 365)},
		{sprite="res://assets/characters/seashell.svg", pos=Vector2(1440, 505)},
		{sprite="res://assets/characters/crab.svg", pos=Vector2(1620, 482)},
		{sprite="res://assets/characters/dolphin.svg", pos=Vector2(1800, 350)},
		{sprite="res://assets/characters/flamingo.svg", pos=Vector2(1980, 360)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(2160, 345)},
		{sprite="res://assets/characters/crab.svg", pos=Vector2(2340, 490)},
		{sprite="res://assets/characters/seashell.svg", pos=Vector2(2520, 500)},
		{sprite="res://assets/characters/flamingo.svg", pos=Vector2(2700, 360)},
		{sprite="res://assets/characters/capybara.svg", pos=Vector2(2900, 470), is_capybara=true},
		{sprite="res://assets/characters/crab.svg", pos=Vector2(3100, 485)},
		{sprite="res://assets/characters/owl.svg", pos=Vector2(3340, 350)},
		{sprite="res://assets/characters/seashell.svg", pos=Vector2(3580, 500)},
	]
