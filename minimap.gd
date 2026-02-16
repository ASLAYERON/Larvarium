extends Control

var lines : Array = []
var slots : Array = []

@onready var Vbox = $VBoxContainer

var minimap_instance = load("res://minimap_instance.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('huh')
	var new_line
	var new_slot
	for i in range(Global.levels_data[Global.active_level]["size"]):
		new_line = HBoxContainer.new()
		lines.append(new_line)
#		new_line.set_anchor_preset(Control.LayoutPreset.PRESET_FULL_RECT)
		Vbox.add_child(new_line)
		for j in range(Global.levels_data[Global.active_level]["size"]):
			new_slot = minimap_instance.instantiate()
			new_slot.initialize(str(i)+"_"+str(j))
			slots.append(new_slot)
			new_line.add_child(new_slot)
			
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
