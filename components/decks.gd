class_name Decks
const C = preload("res://components/cardattribs.gd")
const glyphs = {
	C.symbols.EYE_OF_RA: preload("res://images/glyphs/eye_of_ra.png"),
	C.symbols.LAMP_OF_OSIRIS: preload("res://images/glyphs/lamp_of_osiris.png"),
	C.symbols.ANKH: preload("res://images/glyphs/ankh.png")
}
const STANDARD = [
	{
		"type": C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"background": preload("res://images/card_backdrops/craftsman_day.png"),
		"symbol":C.symbols.EYE_OF_RA,
		"count": 7
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"background": preload("res://images/card_backdrops/craftsman_night.png"),
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"background": preload("res://images/card_backdrops/craftsman_evening.png"),
		"symbol":C.symbols.ANKH,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"background": preload("res://images/card_backdrops/purification_day.png"),
		"symbol":C.symbols.EYE_OF_RA,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"background": preload("res://images/card_backdrops/purification_night.png"),
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},	
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"background": preload("res://images/card_backdrops/purification_evening.png"),
		"symbol":C.symbols.ANKH,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"background": preload("res://images/card_backdrops/hypostyle_day.png"),
		"symbol":C.symbols.EYE_OF_RA,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"background": preload("res://images/card_backdrops/hypostyle_night.png"),
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"background": preload("res://images/card_backdrops/hypostyle_evening.png"),
		"symbol":C.symbols.ANKH,
		"count": 3
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"background": preload("res://images/card_backdrops/library_day.png"),
		"symbol":C.symbols.EYE_OF_RA,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"background": preload("res://images/card_backdrops/library_night.png"),
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"background": preload("res://images/card_backdrops/library_evening.png"),
		"symbol":C.symbols.ANKH,
		"count": 3
	},
	{
		"type": C.types.ENCOUNTER,
		"subtype": C.encounters.APOPHIS,
		"background": preload("res://images/card_backdrops/apophis.jpeg"),
		"count": 10
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.BLESSING_OF_HORUS,
		"background": preload("res://images/card_backdrops/blessing_of_horus.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.CLAY,
		"background": preload("res://images/card_backdrops/clay.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.DYE_BINDING,
		"background": preload("res://images/card_backdrops/dye_binding.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.KNIFE,
		"background": preload("res://images/card_backdrops/knife.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.PAPYRUS,
		"background": preload("res://images/card_backdrops/papyrus.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.SECRET_NAME,
		"background": preload("res://images/card_backdrops/secret_name.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.SPELL,
		"background": preload("res://images/card_backdrops/spell.png"),
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.WATER,
		"background": preload("res://images/card_backdrops/water.png"),
		"count": 1
	},
]

#| Location               | Sun    | Moon   | Key    | Total |
#|------------------------|--------|--------|--------|-------|
#| CRAFTSMANS_QUARTER     | 7      | 5      | 4      | 16    |
#| POOLS_OF_PURIFICATION  | 6      | 5      | 4      | 15    |
#| HYPOSTYLE_HALL         | 6      | 5      | 3      | 14    |
#| LIBRARY                | 5      | 5      | 3      | 13    | 
#| **Total**              | **24** | **20** | **14** | **58**|
