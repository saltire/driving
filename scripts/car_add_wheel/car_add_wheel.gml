/// @description create a wheel and all necessary joints and add it to the wheels array of the car
/// @function car_add_wheel(xoff,yoff,rotatable,powered,object_index)
/// @param xoff
/// @param yoff
/// @param rotatable
/// @param powered
/// @param object_index

var xoff = argument0; // x position relative to car position
var yoff = argument1; // y position relative to car position
var rot  = argument2; // whether this wheel will rotate
var pow  = argument3; // whether force will be applied to this wheel
var obj  = argument4; // the object index that will be used in instance_create
    
// get a position in the array
var i = array_length_1d(wheels);

// create wheel instance
var len = point_distance(0, 0, xoff, yoff);
var dir = point_direction(0, 0, xoff, yoff) - phy_rotation;
wheels[i] = instance_create_layer(x + lengthdir_x(len, dir), y + lengthdir_y(len, dir), layer, obj);
wheels[i].phy_rotation = phy_rotation;

// create revolute joint if wheel is rotatable, prismatic joint if not
var joint = rot ?
  physics_joint_revolute_create(id, wheels[i], wheels[i].x, wheels[i].y,
    -max_wheel_angle, max_wheel_angle, true, 0, 0, false, false) :
  physics_joint_prismatic_create(id,wheels[i], wheels[i].x, wheels[i].y,
    1, 0, 0, 0, true, 0, 0, false, false);

// save wheel information
wheels[i].powered = pow;
wheels[i].joint = joint;
wheels[i].rotatable = rot;
