extends CharacterBody2D

#var player
#func _ready():
	#player = get_node("/root/MainScene/Player")
	
@onready var player = get_node("/root/MainScene/Player")

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 300.0
	move_and_slide()