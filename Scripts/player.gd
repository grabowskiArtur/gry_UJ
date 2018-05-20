extends KinematicBody2D
var motion = Vector2()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	#motion += globals.gravity * 100
	
	if( Input.is_key_pressed(KEY_LEFT) ):  
		self.move_and_collide(Vector2(-5,0))
	if( Input.is_key_pressed(KEY_RIGHT) ):   
		self.move_and_collide(Vector2(5,0))
	if( Input.is_action_just_released("ui_accept") ):  
		#var input = Input
	
		self.rotate(PI)
		print("rotate")
		
	var collision = move_and_collide(globals.gravity*5)
	if collision:
		#print(collision.collider.is_in_group("box"))
		# to do  wywolac funkcje game over z main 
		#var fajrant = load("res://Scripts/main.gd").new()
		#fajrant.gameOver()
		if collision.collider.is_in_group("box"):
			$".."._gameOver()
	pass

