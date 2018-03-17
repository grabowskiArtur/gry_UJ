extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if( Input.is_key_pressed(KEY_LEFT) ):  
		self.move_and_collide(Vector2(-10,0))
	if( Input.is_key_pressed(KEY_RIGHT) ):  
		self.move_and_collide(Vector2(10,0))
	pass

