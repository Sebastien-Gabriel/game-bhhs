extends Control


func _on_start_button_pressed() -> void:
	get_tree().change_scene("res://Scenes/world.tscn")

func _on_settings_button_pressed() -> void:
	get_tree().change_scene()


func _on_quit_button_pressed() -> void:
	get_tree().quit()
