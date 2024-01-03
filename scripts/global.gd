extends Node

var player_current_attack = false
var current_scene = "world"
var transition_scene = false

var player_exit_cliffside_posx = 199
var player_exit_cliffside_posy = 29	
var player_start_posx = 183
var player_start_posy = 124

var game_first_loadin = true

var found_skeletons_item = false
var given_skeletons_item = false


func finish_changescenes():
	transition_scene = true
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "cliff_side"
		else:
			current_scene = "world"
