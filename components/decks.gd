class_name Decks
const C = preload("res://components/cardattribs.gd")
const STANDARD = [
	{
		"type": C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"background": "craftsman_day.png",
		"symbol":C.symbols.EYE_OF_RA,
		"count": 7
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"background": "craftsman_night.png",
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.CRAFTSMANS_QUARTER,
		"background": "craftsman_evening.png",
		"symbol":C.symbols.ANKH,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"background": "purification_day.png",
		"symbol":C.symbols.EYE_OF_RA,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"background": "purification_night.png",
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},	
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.POOLS_OF_PURIFICATION,
		"background": "purification_evening.png",
		"symbol":C.symbols.ANKH,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"background": "hypostyle_day.png",
		"symbol":C.symbols.EYE_OF_RA,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"background": "hypostyle_night.png",
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.HYPOSTYLE_HALL,
		"background": "hypostyle_evening.png",
		"symbol":C.symbols.ANKH,
		"count": 3
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"background": "library_day.png",
		"symbol":C.symbols.EYE_OF_RA,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"background": "library_night.png",
		"symbol":C.symbols.LAMP_OF_OSIRIS,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"background": "library_evening.png",
		"symbol":C.symbols.ANKH,
		"count": 3
	},
	{
		"type": C.types.ENCOUNTER,
		"subtype": C.encounters.APOPHIS,
		"background": "apophis.png",
		"count": 10
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.BLESSING_OF_HORUS,
		"background": "blessing_of_horus.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.CLAY,
		"background": "clay.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.DYE_BINDING,
		"background": "dye_binding.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.KNIFE,
		"background": "knife.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.PAPYRUS,
		"background": "papyrus.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.SECRET_NAME,
		"background": "secret_name.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.SPELL,
		"background": "spell.png",
		"count": 1
	},
	{
		"type":C.types.TOOL,
		"subtype": C.tools.WATER,
		"background": "water.png",
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
