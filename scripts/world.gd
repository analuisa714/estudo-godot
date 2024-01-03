extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#print("TESTE")
	#print(staticData.item_data["dialogo1"]["dialogo_frase"])
	
	if global.game_first_loadin == true:
		$player.position.x = global.player_start_posx
		$player.position.y = global.player_start_posy
	else:
		$player.position.x = global.player_exit_cliffside_posx
		$player.position.y = global.player_exit_cliffside_posy
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene()
	if global.found_skeletons_item == true:
		$seeds.visible = false
		


func _on_cliffside_transition_point_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_cliffside_transition_point_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scene():
	if global.transition_scene == true:
		if global.current_scene == "world":
			get_tree().change_scene_to_file("res://scenes/cliff_side.tscn")
			global.game_first_loadin = false
			global.finish_changescenes()
			
