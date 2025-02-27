extends Node

@onready var move_instructions = $"../UI/MoveInstructions"  # Adjust path if needed

func _ready():
	move_instructions.visible = false  # Hide instructions at start
	Dialogic.signal_event.connect(_on_dialogue_event)  # Listen for events from Dialogic

func _on_dialogue_event(event_name: String):
	if event_name == "show_move_instructions":
		move_instructions.visible = true  # Show the instructions
		await get_tree().create_timer(5).timeout  # Wait for 5 seconds
		move_instructions.visible = false  # Hide the instructions after 5 seconds
