# gdscript
extends RefCounted
class_name Hand

var cards = []
var hand_limit = 5

func add_card (card: Card):
	if (cards.size() < hand_limit):
		cards.add(card)	
