class_name Decks
const C = preload("res://components/cardattribs.gd")
const STANDARD = [
	{
		"type": C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"symbol":C.symbols.EYE_OF_RA,
		"count": 7
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"symbol":C.symbols.ANKH,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"symbol":C.symbols.EYE_OF_RA,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},	
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"symbol":C.symbols.ANKH,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"symbol":C.symbols.EYE_OF_RA,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"symbol":C.symbols.ANKH,
		"count": 3
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"symbol":C.symbols.EYE_OF_RA,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"symbol":C.symbols.ANKH,
		"count": 3
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.BLESSING_OF_HORUS,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.CLAY,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.DYE_BINDING,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.KNIFE,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.PAPYRUS,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.SECRET_NAME,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.SPELL,
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.WATER,
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
