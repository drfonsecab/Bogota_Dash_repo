extends Sprite2D

@onready var sprite = $"."

@export var tipo = 0

func _ready():
	match tipo:
		0:
			sprite.texture = load("res://imagenes/GraffitiNew (1).png")
		1: 
			sprite.texture = load("res://imagenes/GraffitiNew (2).png")
		2:
			sprite.texture = load("res://imagenes/GraffitiNew (3).png")
		3: 
			sprite.texture = load("res://imagenes/GraffitiNew (4).png")
		4:
			sprite.texture = load("res://imagenes/GraffitiNew (5).png")
		5: 
			sprite.texture = load("res://imagenes/GraffitiNew (6).png")
		6:
			sprite.texture = load("res://imagenes/GraffitiNew (7).png")
		7: 
			sprite.texture = load("res://imagenes/GraffitiNew (8).png")
		8:
			sprite.texture = load("res://imagenes/GraffitiNew (9).png")
		9: 
			sprite.texture = load("res://imagenes/GraffitiNew (10).png")
		10:
			sprite.texture = load("res://imagenes/GraffitiNew (11).png")
		11: 
			sprite.texture = load("res://imagenes/GraffitiNew (12).png")
		12:
			sprite.texture = load("res://imagenes/GraffitiNew (13).png")
		13: 
			sprite.texture = load("res://imagenes/GraffitiNew (14).png")
