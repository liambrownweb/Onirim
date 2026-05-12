# gdscript
extends RefCounted
class_name Deck

# cards is an Array of card identifiers (could be Resource, int id, Dictionary, etc.)
var cards: Array = []

func _init(initial_cards: Array = []):
	cards = initial_cards.duplicate()

# Build the deck from base + expansions (both arrays of card ids)
func build_from(base: Array, expansions: Array = []) -> void:
	cards = []
	cards.append_array(expand_deck(base))
	for expn in expansions:
		cards += expn
	shuffle()
	
func expand_deck(deck):
	var result = []
	for c in deck:
		for i in range(c["count"]):
			result.append(Card.new(c))
	return result

func shuffle() -> void:
	cards.shuffle()

func draw_top(n: int = 1) -> Array:
	var drawn := []
	for i in range(n):
		if cards.size() == 0:
			break
		drawn.append(cards.pop_front())
	return drawn

func peek(n: int = 1) -> Array:
	return cards.slice(0, min(n, cards.size()))

# Put cards back on top (in order: first element becomes new top)
func put_back_on_top(returned: Array) -> void:
	for i in range(returned.size()):
		cards.insert(i, returned[i])

# Put one or many cards on bottom
func put_on_bottom(to_bottom: Array) -> void:
	for c in to_bottom:
		cards.append(c)

func is_empty() -> bool:
	return cards.is_empty()

func remaining() -> int:
	return cards.size()
