extends Node2D

var gravity_vector = Vector2(0,1)
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
func _process(delta):
	if( Input.is_action_just_released("ui_accept") ):
		globals.gravity *= -1
		
		Physics2DServer.area_set_param(get_world_2d().space,Physics2DServer.AREA_PARAM_GRAVITY_VECTOR,globals.gravity)
		
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
