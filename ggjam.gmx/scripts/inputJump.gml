///inputJump()
{
    switch(oGC.controlType) {
        case TypePC: return keyboard_check(oGC.jumpKey); break;
        case TypeGamepad: return gamepad_button_check(oGC.gpDevice, oGC.jumpButton); break;
        case TypeJoystick: return joystick_check_button(0, oGC.jumpJButton); break;
    } //Else
    return false;
}