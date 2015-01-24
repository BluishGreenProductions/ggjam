///input360
{//Returns direction of travel, if no keys are being pressed, returns -1
    
    switch(oGC.controlType) {
        case TypePC:
            /*Right*/ if (keyboard_check(oGC.rightKey) && !keyboard_check(oGC.upKey) && !keyboard_check(oGC.downKey))
                return 0;
            /*Right - Up*/ if (keyboard_check(oGC.rightKey) && keyboard_check(oGC.upKey))
                return 45;
            /*Up*/ if (keyboard_check(oGC.upKey) && !keyboard_check(oGC.leftKey) && !keyboard_check(oGC.rightKey))
                return 90;
            /*Up - Left*/ if (keyboard_check(oGC.leftKey) && keyboard_check(oGC.upKey))
                return 135;
            /*Left*/ if (keyboard_check(oGC.leftKey) && !keyboard_check(oGC.upKey) && !keyboard_check(oGC.downKey))
                return 180;
            /*Left - Down*/ if (keyboard_check(oGC.leftKey) && keyboard_check(oGC.downKey))
                return 225;
            /*Down*/ if (keyboard_check(oGC.downKey) && !keyboard_check(oGC.leftKey) && !keyboard_check(oGC.rightKey))
                return 270;
            /*Right - Down*/ if (keyboard_check(oGC.rightKey) && keyboard_check(oGC.downKey))
                return 315;
            break;
        case TypeGamepad:
            var gpDevice = oGC.gpDevice; //Get it once and keep referencing it
            var Dir = round(point_direction(0, 0, gamepad_axis_value(gpDevice, gp_axislh), gamepad_axis_value(gpDevice, gp_axislv)) / 45) * 45;
            if (point_distance(0, 0, gamepad_axis_value(gpDevice, gp_axislh), gamepad_axis_value(gpDevice, gp_axislv)) != 0)
                return Dir;
            //Dpad Input
            /*Right*/ if (gamepad_button_check(gpDevice, gp_padr) && !gamepad_button_check(gpDevice, gp_padu) && !gamepad_button_check(gpDevice, gp_padd))
            return 0;
            /*Right - Up*/ if (gamepad_button_check(gpDevice, gp_padr) && gamepad_button_check(gpDevice, gp_padu))
            return 45;
            /*Up*/ if (gamepad_button_check(gpDevice, gp_padu) && !gamepad_button_check(gpDevice, gp_padl) && !gamepad_button_check(gpDevice, gp_padr))
            return 90;
            /*Up - Left*/ if (gamepad_button_check(gpDevice, gp_padl) && gamepad_button_check(gpDevice, gp_padu))
            return 135;
            /*Left*/ if (gamepad_button_check(gpDevice, gp_padl) && !gamepad_button_check(gpDevice, gp_padu) && !gamepad_button_check(gpDevice, gp_padd))
            return 180;
            /*Left - Down*/ if (gamepad_button_check(gpDevice, gp_padl) && gamepad_button_check(gpDevice, gp_padd))
            return 225;
            /*Down*/ if (gamepad_button_check(gpDevice, gp_padd) && !gamepad_button_check(gpDevice, gp_padl) && !gamepad_button_check(gpDevice, gp_padr))
            return 270;
            /*Right - Down*/ if (gamepad_button_check(gpDevice, gp_padr) && gamepad_button_check(gpDevice, gp_padd))
            return 315;
            break;
        case TypeJoystick:
            /*
            if (joystick_xpos(0) < -oGC.deadZone)
                return true;
            */
            switch (joystick_direction(0))
            {
                case vk_numpad1: return 225; break;
                case vk_numpad2: return 270; break;
                case vk_numpad3: return 315; break;
                case vk_numpad4: return 180; break;
                case vk_numpad6: return 0; break;
                case vk_numpad7: return 135; break;
                case vk_numpad8: return 90; break;
                case vk_numpad9: return 45; break;
            } 
            break;
    } //Else
    return -1;
}