extends CharacterBody2D


@export var SPEED = 22000
const JUMP_VELOCITY = -1200

var gravity = 5400
var isOrbe = false
var fuerzaOrbe = 0

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	# Handle jump.
	if Input.is_action_pressed("saltar") and is_on_floor():
		$salto.play()
		velocity.y = JUMP_VELOCITY
	
	velocity.x = SPEED * delta
	# Orbe
	if isOrbe and Input.is_action_just_pressed("saltar"):
		velocity.y = -fuerzaOrbe
		
	if Input.is_action_pressed("menu") and is_on_floor():
		SPEED = 0
		$Sprite2D.visible = false
		get_tree().change_scene_to_file("res://escenas/menu_principal.tscn")
		
	move_and_slide()

func death():
	SPEED = 0
	$Sprite2D.visible = false
	$muerte.play()
	$Timer.start()

func win():
	SPEED = 0
	$Sprite2D.visible = false
	$win.play()
	# ← CAMBIO AQUÍ: Cambia a la escena de victoria
	$Timer.start()
	get_tree().change_scene_to_file("res://escenas/menu.tscn")

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()


func _on_externo_area_entered(area):
	if area.is_in_group("orbe"):
		isOrbe = true
		fuerzaOrbe = area.fuerza
	if area.is_in_group("avisador"):
		area.avisar()


func _on_externo_area_exited(area):
	if area.is_in_group("orbe"):
		isOrbe = false
		fuerzaOrbe = 0
