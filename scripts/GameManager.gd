extends Node

# Lista wszystkich scen leveli w kolejności
const LEVELS: Array[String] = [
	"res://scenes/levels/Level1_Basen.tscn",
	"res://scenes/levels/Level2_Plaza.tscn",
	"res://scenes/levels/Level3_Dom.tscn",
	"res://scenes/levels/Level4_PlacZabaw.tscn",
	"res://scenes/levels/Level5_Samolot.tscn",
	"res://scenes/levels/Level6_Bruksela.tscn",
]

var current_level_index: int = 0

func start_game() -> void:
	current_level_index = 0
	load_current_level()

func load_current_level() -> void:
	if current_level_index < LEVELS.size():
		get_tree().change_scene_to_file(LEVELS[current_level_index])
	else:
		get_tree().change_scene_to_file("res://scenes/WinScreen.tscn")

func next_level() -> void:
	current_level_index += 1
	load_current_level()

func go_to_menu() -> void:
	current_level_index = 0
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
