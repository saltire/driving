/// @description remove all sideways (x-axis) velocity from the object leaving only forward (-y-axis) velocity
/// @function kill_sideways_speed(drift)
/// @param drift

var drift = argument0; // the amount of drift control 0: no control 1: high control

// get the x and y component of the object's x axis (sideway axis)
var axis_x = lengthdir_x(1, -phy_rotation + 0);
var axis_y = lengthdir_y(1, -phy_rotation + 0);
    
// project phy_speed to the axis and return the magnitude
var mag = dot_product(axis_x, axis_y, phy_speed_x, phy_speed_y);

// apply drift effect *allows some sideways speed by decreasing mag
mag *= drift / max(phy_speed, 1);
    
// subtract the sideway speed from the total speed
// note: decreasing mag from drifting will leave some sideways speed
phy_speed_x -= mag * axis_x;
phy_speed_y -= mag * axis_y;
