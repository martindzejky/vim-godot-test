extends TextureRect

# Handles the logo animation.


onready var tween: Tween = $tween


func _ready() -> void:
    set_modulate(Color(1, 1, 1, 0))


func _on_game_gameStarted() -> void:
    print('Starting logo interpolation')
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

