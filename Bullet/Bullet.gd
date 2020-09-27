extends KinematicBody2D

onready var HUD = get_node("/root/Game/Player/HUD")

export var velocity = Vector2(0,-8)
export var health = 100
export var points = 20

onready var Explosion = load("res://Explosion/Explosion.tscn")

func _ready():
	pass
	
func _physics_process(_delta):
	position += velocity
	
	if global_position.y < -100:
		queue_free()


func _on_Area2D_body_entered(body):
	HUD.update_score(points)
	body.queue_free()
	var explosion = Explosion.instance()
	explosion.position = position
	get_node("/root/Game/Explosions").add_child(explosion)
	queue_free()
