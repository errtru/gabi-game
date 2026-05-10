## BaseLevel.gd  — wspólna logika dla wszystkich leveli
## Każdy level dziedziczy z tej klasy i nadpisuje _get_animals() + stałe konfiguracji.
extends Node2D

# --- Konfiguracja (nadpisywana przez pod-klasy) ---
var level_name_text: String = "Poziom"
var scene_width: float = 3840.0
var bg_color: Color = Color(0.53, 0.81, 0.98, 1)

# --- Stan ---
var _won: bool = false
var _drag_active: bool = false
var _drag_start_x: float = 0.0
var _cam_start_x: float = 0.0

@onready var camera: Camera2D = $Camera2D
@onready var win_popup: Panel = $UI/WinPopup
@onready var level_label: Label = $UI/HBox/LevelLabel

func _ready() -> void:
	$Background.size.x = scene_width
	$Background.color = bg_color
	level_label.text = level_name_text

	camera.position.x = 640.0
	camera.limit_left = 640
	camera.limit_right = int(scene_width) - 640

	$UI/WinPopup/VBox/NextButton.pressed.connect(_on_next_pressed)
	$UI/HBox/MenuButton.pressed.connect(_on_menu_pressed)

	_spawn_level()

## Nadpisz w pod-klasie i zwróć tablicę słowników zwierząt
func _get_animals() -> Array:
	return []

func _spawn_level() -> void:
	for data in _get_animals():
		_spawn(data)

func _spawn(data: Dictionary) -> void:
	var container := Node2D.new()
	container.position = data["pos"]

	if data.get("is_capybara", false):
		var area := Area2D.new()
		area.name = "Capybara"
		area.set_script(load("res://scripts/Capybara.gd"))

		var shape := CollisionShape2D.new()
		var rect := RectangleShape2D.new()
		rect.size = Vector2(90, 90)
		shape.shape = rect
		area.add_child(shape)

		var lbl := Label.new()
		lbl.text = "🦫"
		lbl.position = Vector2(-32, -48)
		lbl.theme_override_font_sizes["font_size"] = 68
		area.add_child(lbl)

		# Sygnał — musi być dostępny PO _ready Capybara.gd
		area.ready.connect(func(): area.found.connect(_on_capybara_found))
		container.add_child(area)
	else:
		var lbl := Label.new()
		lbl.text = data.get("emoji", "🐾")
		lbl.position = Vector2(-32, -48)
		lbl.theme_override_font_sizes["font_size"] = 64
		container.add_child(lbl)

	$Objects.add_child(container)

# --- Input: drag + scroll + klawiatura ---
func _input(event: InputEvent) -> void:
	if _won:
		return

	if event is InputEventMouseButton:
		match event.button_index:
			MOUSE_BUTTON_WHEEL_LEFT:
				_scroll(-120.0)
			MOUSE_BUTTON_WHEEL_RIGHT:
				_scroll(120.0)
			MOUSE_BUTTON_LEFT:
				if event.pressed:
					_drag_active = true
					_drag_start_x = event.position.x
					_cam_start_x = camera.position.x
				else:
					_drag_active = false

	if event is InputEventMouseMotion and _drag_active:
		camera.position.x = clamp(
			_cam_start_x + (_drag_start_x - event.position.x),
			640.0, scene_width - 640.0
		)

	if event is InputEventKey and event.pressed:
		if event.keycode in [KEY_A, KEY_LEFT]:
			_scroll(-240.0)
		elif event.keycode in [KEY_D, KEY_RIGHT]:
			_scroll(240.0)

func _scroll(amount: float) -> void:
	camera.position.x = clamp(camera.position.x + amount, 640.0, scene_width - 640.0)

func _on_capybara_found() -> void:
	if _won:
		return
	_won = true
	_drag_active = false
	win_popup.visible = true

func _on_next_pressed() -> void:
	GameManager.next_level()

func _on_menu_pressed() -> void:
	GameManager.go_to_menu()
