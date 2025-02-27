extends Node2D

@onready var prompt_panel: Panel = $CanvasLayer2/Panel
@onready var start_button: Button = $CanvasLayer2/Panel/Button

func _ready():
	# Show the prompt when the scene is read
	prompt_panel.visible = true
	start_button.grab_focus()
	start_button.connect("pressed", Callable(self, "_on_start_button_pressed"))


# Function to handle the start button press
func _on_start_button_pressed():
	# Hide the prompt
	prompt_panel.visible = false
	
	# Start the dialogue manager (replace with your dialogue manager start code)
	start_dialogue()

# Function to start the dialogue
# Function to start the dialogue
func start_dialogue():
	print("Starting dialogue...")
	# Example: get_node("/root/DialogueManager").start()
	DialogueManager.show_example_dialogue_balloon(load("res://dialogue/scene1.dialogue"), "start")
	DialogueManager.connect("dialogue_finished", Callable(self, "_on_dialogue_finished"))

# Function to handle dialogue finished
func _on_dialogue_finished():
	pass

# Handle input events
# Handle input events
# Handle input events
func _unhandled_input(event: InputEvent) -> void:
	if prompt_panel.visible and event is InputEventKey and event.pressed and event.keycode == KEY_ENTER:
		_on_start_button_pressed()
