extends Node2D

var players: Array = []
var index : int = 0

func _ready():
	players = get_children()
	for i in players.size():
		players[i].position = Vector2(0, i*32)


func _on_enemy_group_next_player():
	if index < players.size() - 1:
		index += 1
		switch_focus(index, index - 1)
	else:
		index = 0
		switch_focus( index, players.size() - 1 )

func switch_focus(x,y):
	players[x].focus()
	players[y].unfocus()
