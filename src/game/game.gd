extends MarginContainer

# Controls the game. In this test, it implements
# the ESC key to quit the game.


export(NodePath) var logo
export(NodePath) var label


signal gameStarted


var started = false


func _ready() -> void:
    var logoNode: CanvasItem = get_node(logo)
    var labelNode: CanvasItem = get_node(label)

    logoNode.set_modulate(Color(1, 1, 1, 0))
    labelNode.set_modulate(Color(1, 1, 1, 0))


func _input(event: InputEvent) -> void:
    if event.is_action('quit_game'):
        get_tree().quit()

    if event.is_action('start_game') and not started:
        started = true
        emit_signal('gameStarted')

