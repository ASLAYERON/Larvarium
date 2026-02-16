extends Control

@onready var texture_rect = $TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func initialize(level:String):
	texture_rect.texture = load("res://niveaux/test/"+level+"/image.gif")
