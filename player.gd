extends CharacterBody2D

var health = 100.0

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	print("player moved")
	move_and_slide()
	
	#if velocity.length() > 0.0:
		#get_node("HappyBoo").play_walk_animation()
	#else: get_node("HappyBoo").play_idle_animation()
	#
		
	#if velocity.length() > 0.0:
		#$HappyBoo.play_walk_animation()
	#else: $HappyBoo.play_idle_animation()
	
	if velocity.length() > 0.0:
		%HappyBoo.play_walk_animation()
	else: %HappyBoo.play_idle_animation()

