extends Area2D

@export var tipo = 0
@onready var sprite = $Sprite2D
var fuerza

func _ready():
	"""
	0 = empanada
	1 = 50k
	"""
	
	match tipo:
		0:
			fuerza = 1500
			sprite.texture = load("res://imagenes/Empanada.png")
			#sprite.scale = 0.058
		1:
			fuerza = 1800
			sprite.texture = load("res://imagenes/32 _ Billete - Tombo Survivor.png")
			#sprite.scale = 0.058
		_:
			fuerza = 0
