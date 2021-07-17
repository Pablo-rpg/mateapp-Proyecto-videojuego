extends Area2D

func _ready():
	# efecto de escalado. x3
	$Tween.interpolate_property(
		$AnimatedSprite,
		'scale',
		$AnimatedSprite.scale,
		$AnimatedSprite.scale * 5,
		0.3,Tween.TRANS_QUAD,
		Tween.EASE_IN_OUT
	)
	# efecto de desvanecimiento
	$Tween.interpolate_property(
		$AnimatedSprite,
		'modulate',
		Color(1, 1, 1, 1),
		Color(1, 1, 1, 0),
		0.3,Tween.TRANS_QUAD,
		Tween.EASE_IN_OUT
	)	


func pickup():
	$Tween.start()
	#yield($Tween, "tween_completed")


func _on_Tween_tween_completed(object, key):
	call_deferred("queue_free")
	
