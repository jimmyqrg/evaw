extends Area2D

@export_enum("x", "y") var crossing_axis
@export_enum("normal", "water", "ice") var higher_type
@export_enum("normal", "water", "ice") var lower_type

var player

func _on_body_entered(body: Node2D) -> void:
	player = body
	print("entered")
	
	if crossing_axis == 0:
		if player.velocity.x > 0:
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
		elif player.velocity.x < 0:
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
		if player.velocity.y < 0:
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
		elif player.velocity.y > 0:
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
