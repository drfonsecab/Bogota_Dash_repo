extends Area2D


func _ready() -> void:
	$"../musica".play()
	
func _on_area_entered(area):
	if area.is_in_group("kill"):
		$"..".death()
	if area.is_in_group("atrapado"):
		$"..".death()
		$"../atrapado".play()
	if area.is_in_group("subido"):
		$"..".win()
