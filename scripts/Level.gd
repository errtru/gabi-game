extends Node2D

# --- Konfiguracja levelu (nadpisywana przez każdy level) ---
@export var level_name: String = "Poziom"
@export var scene_width: float = 3840.0

# --- Stałe scrollowania ---
const SCROLL_SPEED: float = 600.0
const SCROLL_WHEEL_AMOUNT: float = 120.0

var _camera_min_x: float = 640.0
var _camera_max_x: float = 0.0
var _won: bool = false

# Drag scrolling
var _drag_active: bool = false
var _drag_start_x: float = 0.0
var _cam_start_x: float = 0.0

@onready var camera: Camera2D = $Camera2D
@onready var win_popup: Panel = $UI/WinPopup
@onready var level_label: Label = $UI/HBox/LevelLabel

func _ready() -> void:
	_camera_max_x = scene_width - 640.0
	camera.position.x = _camera_min_x
	level_label.text = level_name

	$UI/WinPopup/VBox/NextButton.pressed.connect(_on_next_pressed)
	$UI/HBox/MenuButton.pressed.connect(_on_menu_pressed)

	# Podłącz sygnał kapibary jeśli istnieje w scenie
	_connect_capybara(self)

func _connect_capybara(node: Node) -> void:
	if node.has_method("_on_clicked") and node.name == "Capybara":
		if node.has_signal("found"):
			node.found.connect(_on_capybara_found)
	for child in node.get_children():
		_connect_capybara(child)

func _input(event: InputEvent) -> void:
	if _won:
		return

	# Scroll kółkiem myszy
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_LEFT:
			_scroll_camera(-SCROLL_WHEEL_AMOUNT)
		elif event.button_index == MOUSE_BUTTON_WHEEL_RIGHT:
			_scroll_camera(SCROLL_WHEEL_AMOUNT)
		# Drag — lewy przycisk myszy
		elif event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				_drag_active = true
				_drag_start_x = event.position.x
				_cam_start_x = camera.position.x
			else:
				_drag_active = false

	if event is InputEventMouseMotion and _drag_active:
		var delta_x: float = _drag_start_x - event.position.x
		camera.position.x = clamp(_cam_start_x + delta_x, _camera_min_x, _camera_max_x)

	# Klawiatura A/D lub strzałki
	if event is InputEventKey and event.pressed:
		if event.keycode in [KEY_A, KEY_LEFT]:
			_scroll_camera(-SCROLL_WHEEL_AMOUNT * 3)
		elif event.keycode in [KEY_D, KEY_RIGHT]:
			_scroll_camera(SCROLL_WHEEL_AMOUNT * 3)

func _scroll_camera(amount: float) -> void:
	camera.position.x = clamp(camera.position.x + amount, _camera_min_x, _camera_max_x)

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
