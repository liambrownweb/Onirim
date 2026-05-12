extends Control
const CardScene = preload("res://CardScene.tscn")
var hand_array = []
@onready var game: Control = get_node("/root/Main/Game")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func init_ui() -> void:
	populate_hand()

func populate_hand() -> void:
	for data in game.hand:
		var card = CardScene.instantiate()
		# initialize card (example properties — adapt to your Card.tscn API)
		if card.has_method("set_card_data"):
			card.set_card_data(data)
		elif card.has_node("Sprite") and data.texture:
			card.get_node("Sprite").texture = load(data.texture)
		$PlayerHand.add_child(card)
	_update_layout()
		
func _update_layout():
	var hand_array = $PlayerHand.get_children()
	var n = hand_array.size()
	if n == 0:
		return
	var span_deg = 60.0
	var radius = 320.0
	var center = Vector2(0, 300)   # local center of the fan; adjust as needed
	for i in range(n):
		var t = 0.5 if n == 1 else float(i) / float(n - 1)
		var angle = lerp(-span_deg/2, span_deg/2, t)
		var a = deg_to_rad(angle)
		var offset = Vector2(sin(a), -cos(a)) * radius
		var card = hand_array[i]
		card.position = center + offset
		card.rotation = a * 0.7    # tilt factor; tweak for visual look
