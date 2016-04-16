//script isDownMove(key / button)
//Determines if a gamepad is plugged in, and then returns
//true or false if the button is held down.
//This script is specific to movement controls.

if (gamepad_is_connected(0)) 
{
    switch(argument0) 
    {
        case global.MOVE_LEFT:
        {
            return (gamepad_axis_value(0, gp_axislh) <= -global.GAMEPAD_AXIS_THRESHOLD || gamepad_button_check(0, gp_padl) || keyboard_check(argument0));
        }
        
        case global.MOVE_RIGHT:
        {
            return (gamepad_axis_value(0, gp_axislh) >= global.GAMEPAD_AXIS_THRESHOLD || gamepad_button_check(0, gp_padr) || keyboard_check(argument0));
        }
        
        case global.MOVE_UP:
        {
            return (gamepad_axis_value(0, gp_axislv) <= -global.GAMEPAD_AXIS_THRESHOLD || gamepad_button_check(0, gp_padu) || keyboard_check(argument0));
        }
        
        case global.MOVE_DOWN:
        {
            return (gamepad_axis_value(0, gp_axislv) >= global.GAMEPAD_AXIS_THRESHOLD || gamepad_button_check(0, gp_padd) || keyboard_check(argument0));
        }
    }
}
else 
{
    return (keyboard_check(argument0))
}
