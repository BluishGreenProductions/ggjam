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
    
    jumpKey = ini_read_real(section, "jumpKey", vk_space);
    //Combat
    laserKey = ini_read_real(section, "laserKey", ord("I"));
    meleeKey = ini_read_real(section, "meleeKey", ord("O"));
    grenadeKey = ini_read_real(section, "grenadeKey", ord("P"));
    
//Gamepad
    jumpButton = ini_read_real(section,"jumpButton", gp_face1);
    jumpJButton = ini_read_real(section,"jumpJButton", 1);
    ini_close();
}
