extends Node
const CardScene = preload("res://CardScene.tscn")
@onready var game: Node2D = get_node("/root/Main/Game")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
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
		add_child(card)
		$PlayerHand.add_child(card)
