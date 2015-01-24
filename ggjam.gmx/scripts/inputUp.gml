///inputUp()
{
    switch(oGC.controlType) {
        case TypePC: return keyboard_check(oGC.upKey); break;
        case TypeGamepad: return gamepad_axis_value(oGC.gpDevice, gp_axislv) < -oGC.deadZone || gamepad_button_check(oGC.gpDevice, gp_padu); break;
        case TypeJoystick: return joystick_ypos(0) < -oGC.deadZone || joystick_direction(0) == vk_numpad8; break;
    } //Else
    return false;
}
