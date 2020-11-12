extends KinematicBody2D
#Variable tipo vector para leer los movimientos en 2D del player
var mov = Vector2.ZERO
var puntos = 0

func _ready():
	_physics_process(true)

func _physics_process(_delta):
	_movimientos()
	
func _movimientos():
		if(Input.is_action_pressed("ui_truco")):
			$AnimationPlayer.play("truco")
	
		if Input.is_action_pressed("ui_left"):
			$AnimatedSprite.play("Izquierda")
			mov.x = -300
			
		elif Input.is_action_pressed("ui_right"):
			$AnimatedSprite.play("Derecha")
			mov.x = 300
			
		elif Input.is_action_pressed("ui_up"):
			$AnimatedSprite.play("Derecha")
			mov.y = -300
			
		elif Input.is_action_pressed("ui_down"):
			$AnimatedSprite.play("Derecha")
			mov.y = 300
			
		else:
			mov = Vector2.ZERO
		move_and_slide(mov)
		
	

func _on_Comida_body_entered(body):
	if(body.name=="Fish"):
		pass
		puntos+=10
		get_parent().get_node("Puntos").text = String(puntos)
		
func _on_Comida2_body_entered(body):
	pass # Replace with function body.
	puntos+=10
	get_parent().get_node("Puntos").text = String(puntos)


func _on_Comida3_body_entered(body):
	pass # Replace with function body.
	puntos+=10
	get_parent().get_node("Puntos").text = String(puntos)

