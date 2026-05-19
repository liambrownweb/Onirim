extends Control
class_name CardScene
var card_data: Card = null
var dragging = false
var drag_offset = Vector2.ZERO
var original_parent = null
var original_index = -1
var original_rect_pos = Vector2.ZERO
var gameboard = null

@onready var DragLayer = get_tree().root.get_node("Main/DragLayer")

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton \
		and event.button_index == MOUSE_BUTTON_LEFT \
		and dragging \
		and not event.pressed:
			_end_drag()

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		print(event)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			print("Starting drag")
			_start_drag(event.position)
		else:
			print("Not starting drag")
		#else:
			#_end_drag()
	elif event is InputEventMouseMotion and dragging:
		global_position = get_global_mouse_position() - drag_offset	

func _start_drag(local_click_pos):
	dragging = true
	original_parent = get_parent()
	original_index = self.get_index()
	original_rect_pos = position
	drag_offset = local_click_pos
	# reparent to DragLayer while preserving global position
	var gpos = global_position
	original_parent.remove_child(self)
	DragLayer.add_child(self)
	global_position = gpos
	move_to_front()

func _end_drag():
	dragging = false
	gameboard.drop_card(self)

func _get_drag_data(at_position: Vector2) -> Variant:
	print(at_position)
	return at_position

func _on_mouse_entered() -> void:
	pass
	
func set_card_data(card_data_in: Card) -> void:
	card_data = card_data_in
