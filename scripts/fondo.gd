extends StaticBody2D


# Referencia correcta al jugador (son hermanos en la escena)
@onready var jugador = $"../CharacterBody2D"

# Referencia al Sprite2D (opcional pero recomendado)
@onready var sprite: Sprite2D = $Sprite2D

func _process(delta: float) -> void:
	# Opción 1: El suelo se coloca exactamente donde está el jugador (útil para plataformas móviles)
	# position.x = jugador.position.x
	position.x = jugador.position.x
	# Opción 2 (la que realmente querías): scrolling infinito del fondo según la velocidad del jugador
	sprite.region_rect.position.x += (jugador.SPEED/180) * delta   # ¡Sin dividir entre 60!
