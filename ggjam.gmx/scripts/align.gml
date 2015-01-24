{
    image_speed = 0;
    var TC, CL, CR, BC;
    //Perform Checks and assign to Variables:
    TC = place_meeting(x,y-sprite_height,object_index);
    if (y == 0) TC = true;
    CL = place_meeting(x-sprite_width,y,object_index);
    if (x == 0) CL = true;
    CR = place_meeting(x+sprite_width,y,object_index);
    if (x == room_width-sprite_width) CR = true;
    BC = place_meeting(x,y+sprite_height,object_index);
    if (y == room_height-sprite_height) BC = true;
    
    //Center-Middle
    if (TC && CL && CR && BC) {
        image_index = 0;
        if (x == 0 || y == 0 || x == room_width-sprite_width || y == room_height-sprite_height)
            exit;
        //Corner Pieces
        if (!place_meeting(x + sprite_width, y + sprite_height, object_index))
            image_index = 9;
        if (!place_meeting(x - sprite_width, y + sprite_height, object_index))
            image_index = 10;
        if (!place_meeting(x - sprite_width, y - sprite_height, object_index))
            image_index = 11;
        if (!place_meeting(x + sprite_width, y - sprite_height, object_index))
            image_index = 12;
        exit;
    }
    /*Floor*/ if (CL && CR && BC) { image_index = 5; exit; }
    /*Ceiling*/ if (CL && CR && TC) { image_index = 7; exit; }
    /*Left wall*/ if (CL && TC && BC) { image_index = 6; exit; }
    /*Right wall*/ if (CR && TC && BC) { image_index = 8; exit; }
    /*Top-Left corner*/ if (CR && BC) { image_index = 1; exit; }
    /*Top-Right corner*/ if (CL && BC) { image_index = 2; exit; }
    /*Bottom-Left corner*/ if (TC && CR) { image_index = 3; exit; }
    /*Bottom-Right corner*/ if (TC && CL) { image_index = 4; exit; }
    /*Cap Top-Middle-Bottom*/ if (TC && BC) { image_index = 14; exit; }
    /*Cap Left-Center-Right*/ if (CL && CR) { image_index = 17; exit; }
    /*Cap Bottom*/ if (TC) { image_index = 15; exit; }
    /*Cap Top*/ if (BC) { image_index = 13; exit; }
    /*Cap Right*/ if (CL) { image_index = 18; exit; }
    /*Cap Left*/ if (CR) { image_index = 16; exit; }
    /*Block*/ image_index = 19;
}
