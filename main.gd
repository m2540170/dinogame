extends Node2D

var screen_size : Vector2i
var playerInitialPosition

func _ready():
	screen_size = get_window().size
	playerInitialPosition = $Player.position


func new_game():
	$Player.position = playerInitialPosition
	$Floor.position.x = 0 

func game_over():
	GHUD.update_highscore()
	
func _process(delta):
	$Floor.position.x = $Player.position.x - 150
