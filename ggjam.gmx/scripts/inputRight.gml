///inputRight()
{
    switch(oGC.controlType) {
        case TypePC: return keyboard_check(oGC.rightKey); break;
        case TypeGamepad: return gamepad_axis_value(oGC.gpDevice, gp_axislh) > oGC.deadZone || gamepad_button_check(oGC.gpDevice, gp_padr); break;
        case TypeJoystick: return joystick_xpos(0) > oGC.deadZone || joystick_direction(0) == vk_numpad6; break;
    } //Else
    return false;
}