extends Node2D


@onready var player: CharacterBody2D = $"../Vaw"

@export_enum("x", "y") var crossing_axis
@export_enum("normal", "water", "ice") var higher_type
@export_enum("normal", "water", "ice") var lower_type


func _process(_delta: float) -> void:
	if crossing_axis == 0:
		if player.global_position.x > global_position.x:
			match higher_type:
				0:
					Global.water_lvl = ""
					Global.ice_lvl = false
				1:
					Global.water_lvl = "_w"
					Global.ice_lvl = false
				2:
					Global.water_lvl = ""
					Global.ice_lvl = true
		elif player.global_position.x < global_position.x:
			match lower_type:
				0:
					Global.water_lvl = ""
					Global.ice_lvl = false
				1:
					Global.water_lvl = "_w"
					Global.ice_lvl = false
				2:
					Global.water_lvl = ""
					Global.ice_lvl = true
	elif crossing_axis == 1:
		if player.global_position.y < global_position.y:
			match higher_type:
				0:
					Global.water_lvl = ""
					Global.ice_lvl = false
				1:
					Global.water_lvl = "_w"
					Global.ice_lvl = false
				2:
					Global.water_lvl = ""
					Global.ice_lvl = true
		elif player.global_position.y > global_position.y:
			match lower_type:
				0:
					Global.water_lvl = ""
					Global.ice_lvl = false
				1:
					Global.water_lvl = "_w"
					Global.ice_lvl = false
				2:
					Global.water_lvl = ""
					Global.ice_lvl = true
