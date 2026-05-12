extends Control
var game_deck: Deck
var hand = []
var limbo = []
const Decks = preload("res://components/decks.gd")

@onready var game_in_progress = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func start_new_game() -> void:
	game_deck = Deck.new()
	game_deck.build_from(Decks.STANDARD)
	game_deck.shuffle()
	hand.append_array(game_deck.draw_top(5))
	$Gameboard.init_ui()
	game_in_progress = true
	
func end_game() -> void:
	game_in_progress = false
