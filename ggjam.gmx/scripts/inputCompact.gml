///inputCompact()
{
    switch(oGC.controlType) {
        case TypePC: return keyboard_check(oGC.compactKey); break;
        case TypeGamepad:
            if (oGC.compactButton == Unmapped)
                return gamepad_axis_value(oGC.gpDevice, gp_axislv) > oGC.deadZone || gamepad_button_check(oGC.gpDevice, gp_padd);
            else
                return gamepad_button_check(oGC.gpDevice, oGC.compactButton);
            break;
        case TypeJoystick: return joystick_ypos(0) > oGC.deadZone || joystick_direction(0) == vk_numpad2; break;
    } //Else
    return false;
}