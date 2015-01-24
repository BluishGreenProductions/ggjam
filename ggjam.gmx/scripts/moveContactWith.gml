///moveContactWith(dir, max_dist, object)
{
show_debug_message("move");
    var dirn, max_dist, contact_obj, dx, dy;

    dirn        = argument0;
    max_dist    = argument1;
    contact_obj = argument2;
    
    if( max_dist == -1 )
        max_dist = 1000;

    dx = lengthdir_x( 1, dirn );
    dy = lengthdir_y( 1, dirn );
    
    dist = 1;
      
    while( dist <= max_dist )
    { 
        var i = instance_place( x + dx, y + dy, contact_obj );
        if( i != noone and i.visible)
            return true;
        x = x + dx;
        y = y + dy;
        dist = dist + 1;
    }   
   
    return false;
}
