extends Label

# Handles the label animation.


onready var tween: Tween = $tween
onready var timer: Timer = $timer


func _ready() -> void:
    set_modulate(Color(1, 1, 1, 0))


func _on_game_gameStarted() -> void:
    timer.start(0.5)
    yield(timer, 'timeout')

    print('Starting label interpolation')
    tween.interpolate_method(
        self,
        'set_modulate',
        Color(1, 1, 1, 0),
        Color(1, 1, 1, 1),
        2,
        Tween.TRANS_LINEAR,
        Tween.EASE_IN_OUT
    )
    tween.start()

