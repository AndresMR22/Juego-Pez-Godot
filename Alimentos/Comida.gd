extends Area2D
var contador = 0
func _ready():
	pass

func _on_Comida_body_entered(body):
	pass # Replace with function body.
	if(body.name == "Fish"):
		queue_free()
	
