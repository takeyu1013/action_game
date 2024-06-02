extends Node2D

var EnemyScene = preload("res://enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var Enemy = EnemyScene.instantiate()
	Enemy.position = Vector2(100, 100)
	Enemy.velocity = ($Player.position - Enemy.position).normalized() * 200
	add_child(Enemy)
	pass # Replace with function body.
