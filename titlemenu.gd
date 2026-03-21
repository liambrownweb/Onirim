extends Control
# extends Control

@onready var anim: AnimationPlayer = $AnimationPlayer
@onready var bg: ColorRect = $Panel/Background
@onready var panel: Control = $Panel
@onready var start_btn: TextureButton = $Panel/StartButton

var is_open: bool = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _init() -> void:
	pass

func _ready() -> void:
	start_btn.pressed.connect(_on_start_pressed)    # If you want ESC or menu key to toggle:    
	#Input.set_custom_mouse_cursor(Input.CURSOR_ARROW) # optional
	show_open_state()
	
func _on_start_pressed() -> void:
	if is_open:        
		play_close_animation()        # Optionally tell game to start/resume
		get_tree().call_group("game", "on_menu_closed")    
	else:        
		play_open_animation()        
		get_tree().call_group("game", "on_menu_opened")
		
# Public toggles
func open_menu() -> void:
	if is_open: return
	play_open_animation()
	get_tree().call_group("game", "on_menu_opened")
	
func close_menu() -> void:
	if not is_open: return
	play_close_animation()
	get_tree().call_group("game", "on_menu_closed")
	
# Animation helpers
func play_close_animation() -> void:
	is_open = false
	anim.play("menu_close")  # zoom toward camera + fade out
	
func play_open_animation() -> void:
	is_open = true
	show()
	anim.play_backwards("menu_close")  # reverse: fade in + zoom out
	
func show_open_state() -> void:
	panel.scale = Vector2.ONE
	panel.modulate.a = 1.0
	bg.modulate.a = 0.6
	visible = true
