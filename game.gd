extends Control
var game_deck: Deck
var hand = []
var limbo = []
var played = []
var discarded = []
const Decks = preload("res://components/decks.gd")

@onready var game_in_progress = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func can_play(card: Card) -> bool:
	if card.type == Decks.C.types.LOCATION:
		return played.size() == 0 || played.front().subtype != card.subtype || true
	return true
	
func can_discard(card: Card) -> bool:
	return true
	
func start_new_game() -> void:
	game_deck = Deck.new()
	game_deck.build_from(Decks.STANDARD)
	game_deck.shuffle()
	fill_hand()
	$Gameboard.init_ui()
	game_in_progress = true
	
func end_game() -> void:
	game_in_progress = false

func play(card: Card) -> bool:
	if can_play(card):
		played.append(card)
		fill_hand()
		return true
	return false

func discard(card: Card) -> bool:
	if can_discard(card):
		discarded.append(card)
		fill_hand()
		return true
	return false

func fill_hand() -> void:
	hand.append_array(game_deck.draw_top(5 - hand.size()))
