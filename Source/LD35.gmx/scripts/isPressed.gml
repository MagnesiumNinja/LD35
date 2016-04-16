//script isPressed(key / button)
//Determines if a gamepad is plugged in, and then returns
//true or false if the button was pressed

if (gamepad_is_connected(0)) {
    return (gamepad_button_check_pressed(0, argument1) || keyboard_check_pressed(argument0));
} else {
    return (keyboard_check_pressed(argument0))
}
