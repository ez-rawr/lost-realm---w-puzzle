extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_button_pressed() -> void:
	print("Start pressed")
	$mainmenu_hover/mainmenu_click.play()
	get_tree().change_scene_to_file("res://lv1draft.tscn")
	
func _on_settings_button_pressed() -> void:
	print("Settings Pressed")
	$mainmenu_hover/mainmenu_click.play()
	get_tree().change_scene_to_file("res://settings.tscn")

func _on_exit_button_pressed() -> void:
	print("Exit Pressed")
	get_tree().quit()
	$mainmenu_hover/mainmenu_click.play()


func _on_start_button_mouse_entered() -> void:
	$mainmenu_hover.play()


func _on_settings_button_mouse_entered() -> void:
	$mainmenu_hover.play()


func _on_exit_button_mouse_entered() -> void:
	$mainmenu_hover.play()
