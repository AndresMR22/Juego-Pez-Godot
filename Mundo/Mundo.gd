extends Node2D


func _ready():
	pass
	
func _on_Pase_body_entered(body):
	pass # Replace with function body.
	if(body.name=="Fish" && $Puntos.text=="30"):
		get_tree().change_scene("res://Mundo/Mundo2.tscn")
	#if(body.name=="Fish" && $Punto):
	#	pass
	#	get_tree().change_scene("res://Mundo/Mundo2.tscn")
