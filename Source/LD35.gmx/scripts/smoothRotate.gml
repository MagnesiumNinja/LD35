/*
    SCRIPT: smoothRotate(endAngle, spd, dir);
    
    PARAMETERS:
        endAngle - the target angle
        spd - the rotation speed
        dir - the current angle of the object
        
    RETURNS:
        dir - the direction to point in
        
    AUTHORS: Chris Klassen
    
    DATE: May 19, 2015
    
    NOTES:
        This script smoothly rotates an object toward a target angle
*/

var endAngle, spd, dir, charge;
endAngle = argument[0];
spd = argument[1];
dir = argument[2];

dir += sin(degtorad(endAngle - dir)) * spd;

return dir;
