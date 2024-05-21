extends CanvasLayer

var score = 0 
var highscore = 0 
var is_playing = false

func update_score_label():
	score = score + 10
	$ScoreLabel.text = "score: %d"%(score)

func update_highscore():
	if score > highscore:
		highscore = score
		$highscoreLabel.text = "high score: %d"%(highscore)
func _on_button_pressed():
	is_playing = true
	$scoretimer.start()
	$Button.visible = false 
	


func _on_scoretimer_timeout():
	update_score_label()
