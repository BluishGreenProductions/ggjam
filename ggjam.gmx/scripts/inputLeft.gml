///inputLeft()
{
    switch(oGC.controlType) {
        case TypePC: return keyboard_check(oGC.leftKey); break;
        case TypeGamepad: return gamepad_axis_value(oGC.gpDevice, gp_axislh) < -oGC.deadZone || gamepad_button_check(oGC.gpDevice, gp_padl); break;
        case TypeJoystick: return joystick_xpos(0) < -oGC.deadZone || joystick_direction(0) == vk_numpad4; break;
    } //Else
    return false;
}