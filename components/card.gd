extends RefCounted
class_name Card
func _init (parms):
	type = parms.type
	subtype = parms.subtype
	symbol = parms.symbol if parms.has(symbol) else 0
var type: CardAttribs.types
var subtype
var symbol: CardAttribs.symbols
