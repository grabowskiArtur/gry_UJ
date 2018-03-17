extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if( Input.is_action_just_pressed("ui_accept") ):  	
		print('inverse')
		_changeGravity()

func _changeGravity():
	var currentGravity = Physics2DServer.area_get_param(get_world_2d().space, Physics2DServer.AREA_PARAM_GRAVITY_VECTOR)
	if( currentGravity != Vector2(0, -1) ):
		Physics2DServer.area_set_param(get_world_2d().space, Physics2DServer.AREA_PARAM_GRAVITY_VECTOR, Vector2(0, -1))	
	else:
		Physics2DServer.area_set_param(get_world_2d().space, Physics2DServer.AREA_PARAM_GRAVITY_VECTOR, Vector2(0, 1))	
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
