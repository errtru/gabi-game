## LevelSpawner.gd
## Dołączany do Node2D "Objects" w każdym levelu.
## Na podstawie danych tworzy sprite'y postaci i umieszcza kapibarę.
extends Node2D

## Dane postaci: [pozycja_x, pozycja_y, kolor_tla, emoji_label, czy_kapibara]
## Kapibara to ostatni wpis z flagą true — reszta to "mylące" zwierzątka.
@export var bg_color: Color = Color(0.53, 0.81, 0.98, 1)
@export var level_name_text: String = "Poziom"
@export var scene_width_val: float = 3840.0

# Dane zwierząt: Array of {pos, color, label, is_capybara}
var _animals: Array = []

func _ready() -> void:
	# Przekaż konfigurację do rodzica (Level.gd)
	var root = get_parent()
	if root.has_method("_ready"):
		root.level_name = level_name_text
		root.scene_width = scene_width_val
		# Ustaw kolor tła
		var bg = root.get_node_or_null("Background")
		if bg:
			bg.color = bg_color

	# Spawn zwierząt
	for a in _animals:
		_spawn_animal(a)

func setup(animals: Array, bg: Color, lname: String, swidth: float) -> void:
	_animals = animals
	bg_color = bg
	level_name_text = lname
	scene_width_val = swidth

func _spawn_animal(data: Dictionary) -> void:
	var container: Node2D = Node2D.new()
	container.position = data["pos"]

	if data.get("is_capybara", false):
		# Kapibara — Area2D + CollisionShape + sprite
		var area = Area2D.new()
		area.name = "Capybara"

		var script = load("res://scripts/Capybara.gd")
		area.set_script(script)

		var shape = CollisionShape2D.new()
		var rect = RectangleShape2D.new()
		rect.size = Vector2(90, 90)
		shape.shape = rect
		area.add_child(shape)

		var label = Label.new()
		label.text = "🦫"
		label.position = Vector2(-30, -45)
		label.theme_override_font_sizes["font_size"] = 64
		area.add_child(label)

		container.add_child(area)
		# Podłącz sygnał do rodzica Level.gd
		area.found.connect(get_parent()._on_capybara_found)
	else:
		# Zwykłe zwierzątko — tylko Label
		var label = Label.new()
		label.text = data.get("emoji", "🐾")
		label.position = Vector2(-30, -45)
		label.theme_override_font_sizes["font_size"] = 64
		label.modulate = data.get("color", Color.WHITE)
		container.add_child(label)

	add_child(container)
