///loadControls(controlSet)
{
    ini_open("rwtzf.ini");
//globalData
    if (argument0 == -1) //By default, load previous control set
        section = "controls"+string(ini_read_real("globalData", "controlSet", 0));
    else //Otherwise load requested control set
        var section = "controls"+string(argument0);
    
    deadZone = ini_read_real("globalData", "deadZone", 0.5);
    rumble = ini_read_real("globalData", "rumble", true);
    
//PC Only
    leftKey = ini_read_real(section, "leftKey", ord("A"));
    rightKey = ini_read_real(section, "rightKey", ord("D"));
    upKey = ini_read_real(section, "upKey", ord("W"));
    downKey = ini_read_real(section, "downKey", ord("S"));
    pauseKey = ini_read_real(section, "pauseKey", vk_escape);
    
    compactKey = ini_read_real(section, "compactKey", ord("S"));
    jumpKey = ini_read_real(section, "jumpKey", vk_space);
    dashKey = ini_read_real(section, "dashKey", vk_shift);
    interactKey = ini_read_real(section, "interactKey", ord("E"));
    energyKey = ini_read_real(section, "energyKey", ord("Q"));
    //Combat
    laserKey = ini_read_real(section, "laserKey", ord("I"));
    meleeKey = ini_read_real(section, "meleeKey", ord("O"));
    grenadeKey = ini_read_real(section, "grenadeKey", ord("P"));
    
//Gamepad
    compactButton = ini_read_real(section,"compactButton", Unmapped); // compact is Unmapped by default, down on trigger
    jumpButton = ini_read_real(section,"jumpButton", gp_face1);
    dashButton = ini_read_real(section,"dashButton", gp_shoulderl);
    interactButton = ini_read_real(section,"interactButton", gp_face3);
    energyButton = ini_read_real(section,"energyButton", gp_face4);
    //Combat
    laserButton = ini_read_real(section,"laserButton", gp_shoulderr);
    meleeButton = ini_read_real(section,"meleeButton", gp_face2);
    grenadeButton = ini_read_real(section,"grenadeButton", gp_shoulderrb);
//Joystick
    compactJButton = ini_read_real(section,"compactJButton", Unmapped); // compact is Unmapped by default, down on trigger
    jumpJButton = ini_read_real(section,"jumpJButton", 1);
    dashJButton = ini_read_real(section,"dashJButton", 5);
    interactJButton = ini_read_real(section,"interactJButton", 3);
    energyJButton = ini_read_real(section,"energyJButton", 4);
    //Combat
    laserJButton = ini_read_real(section,"laserJButton", 6);
    meleeJButton = ini_read_real(section,"meleeJButton", 2);
    grenadeJButton = ini_read_real(section,"grenadeJButton", Unmapped);
    ini_close();
}
