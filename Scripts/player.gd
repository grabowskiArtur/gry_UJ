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
		
	move_and_slide(globals.gravity*500)
	pass

