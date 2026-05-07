extends Control
# extends Control

@onready var anim: AnimationPlayer = $AnimationPlayer
@onready var start_menu = $StartMenu
@onready var game_menu = $GameMenu
@onready var bg: ColorRect = $StartMenu/Background
@onready var start_btn: TextureButton = $StartMenu/StartButton
@onready var exit_btn: TextureButton = $StartMenu/ExitButton
@onready var resume_btn: TextureButton = $GameMenu/ResumeButton
@onready var end_btn: TextureButton = $GameMenu/EndGameButton
@onready var game: Node2D = get_node("/root/Main/Game")
@onready var main: Node = get_node("/root/Main")
@onready var is_open: bool = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _init() -> void:
	pass

func _ready() -> void:
	end_btn.pressed.connect(_on_end_pressed)
	exit_btn.pressed.connect(_on_exit_pressed)
	resume_btn.pressed.connect(_on_resume_pressed)
	start_btn.pressed.connect(_on_start_pressed)    # If you want ESC or menu key to toggle:    
	#Input.set_custom_mouse_cursor(Input.CURSOR_ARROW) # optional
	show_open_state()
		
func _on_end_pressed() -> void:
	if game.game_in_progress:
		game.end_game()
		close_game_menu()
		await anim.animation_finished
		swap_menus()
		open_start_menu()
	
func _on_exit_pressed() -> void:
	main.exit_game()

func _on_resume_pressed() -> void:
	if game.game_in_progress:
		close_game_menu()
	
func _on_start_pressed() -> void: 
	game.start_new_game()
	close_start_menu()
	await anim.animation_finished
	game_menu.visible = true
	start_menu.visible = false
			
func swap_menus() -> void:
	game_menu.visible = !game_menu.visible
	start_menu.visible = !start_menu.visible

func toggle_menu() -> void:
	if is_open:
		close_start_menu()
		close_game_menu()
	elif game.game_in_progress:
		open_game_menu()
	else:
		open_start_menu()

func open_game_menu() -> void:
	if is_open: return
	play_game_menu_open_animation()
	get_tree().call_group("game", "on_menu_opened")
	is_open = true
	
func close_game_menu() -> void:
	if not is_open: return
	play_game_menu_close_animation()
	get_tree().call_group("game", "on_menu_closed")
	is_open = false
	
func open_start_menu() -> void:
	if is_open: return
	play_open_animation()
	get_tree().call_group("game", "on_menu_opened")
	is_open = true
	
func close_start_menu() -> void:
	if not is_open: return
	play_close_animation()
	get_tree().call_group("game", "on_menu_closed")
	is_open = false
	
# Animation helpers
func play_close_animation() -> void:
	is_open = false
	anim.play("menu_close")  # zoom toward camera + fade out
	
func play_open_animation() -> void:
	is_open = true
	show()
	anim.play_backwards("menu_close")  # reverse: fade in + zoom out

func play_game_menu_close_animation() -> void:
	is_open = false
	anim.play_backwards("game_menu_open")
	
func play_game_menu_open_animation() -> void:
	is_open = true
	show()
	anim.play("game_menu_open")
	
func show_open_state() -> void:
	start_menu.scale = Vector2.ONE
	start_menu.modulate.a = 1.0
	game_menu.modulate.a = 0
	game_menu.visible = false
	bg.modulate.a = 0.6
	visible = true
