extends AnimatedSprite2D

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		Game.playerHP += 5
		
		var tween = get_tree().create_tween()
		var tween1 = get_tree().create_tween()
		tween.tween_property(self, "position", position - Vector2(0, 35), 0.5)
		tween1.tween_property(self, "modulate:a", 0, 0.3)
		
		tween.tween_callback(queue_free)
