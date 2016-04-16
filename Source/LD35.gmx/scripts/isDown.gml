//script isDown(key / button)
//Determines if a gamepad is plugged in, and then returns
//true or false if the button is held down

if (gamepad_is_connected(0)) {
    return (gamepad_button_check(0, argument1) || keyboard_check(argument0));
} else {
    return (keyboard_check(argument0))
}
