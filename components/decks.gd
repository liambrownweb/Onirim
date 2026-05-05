class_name Decks
const C = preload("res://components/cardattribs.gd")
const STANDARD = [
	{
		"type": C.types.LOCATION,
		"subtype": C.locations.OBSERVATORY,
		"symbol":C.symbols.SUN,
		"count": 7
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.OBSERVATORY,
		"symbol":C.symbols.MOON,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.OBSERVATORY,
		"symbol":C.symbols.KEY,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.AQUARIUM,
		"symbol":C.symbols.SUN,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.AQUARIUM,
		"symbol":C.symbols.MOON,
		"count": 5
	},	
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.AQUARIUM,
		"symbol":C.symbols.KEY,
		"count": 4
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.GARDEN,
		"symbol":C.symbols.SUN,
		"count": 6
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.GARDEN,
		"symbol":C.symbols.MOON,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.GARDEN,
		"symbol":C.symbols.KEY,
		"count": 3
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"symbol":C.symbols.SUN,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"symbol":C.symbols.MOON,
		"count": 5
	},
	{
		"type":C.types.LOCATION,
		"subtype": C.locations.LIBRARY,
		"symbol":C.symbols.KEY,
		"count": 3
	}
]

#| Location    | Sun | Moon | Key | Total |
#|-------------|-----:|-----:|----:|------:|
#| OBSERVATORY | 7    | 5    | 4   | 16   |
#| AQUARIUM    | 6    | 5    | 4   | 15   |
#| GARDEN      | 6    | 5    | 3   | 14   |
#| LIBRARY     | 5    | 5    | 3   | 13   |
#| **Total**   | **24** | **20** | **14** | **58**
