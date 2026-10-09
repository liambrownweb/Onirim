extends RefCounted
class_name Card
const glyphs = preload("res://components/decks.gd").glyphs
func _init (parms):
	type = parms.type
	subtype = parms.subtype
	symbol = parms.get("symbol", -1)
	background = parms.get("background") as Texture2D
	glyph = (glyphs[symbol] as Texture2D) if symbol > -1 else null
var type: CardAttribs.types
var subtype
var symbol: CardAttribs.symbols
var background
var glyph
