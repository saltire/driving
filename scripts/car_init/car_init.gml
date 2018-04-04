// Edit these values to customize car
max_speed = 12;           // maximum speed car can attain
max_speed_rev = 8;        // maximum speed car can attain reversing

// these values will largely depends on the density of the car
engine_acc = 14;          // forward force, moving forward
engine_brk = 16;          // braking force
engine_rev = 10;          // reverse force, moving backward

wheel_xoff = 14;          // relative x position of wheel
wheel_yoff = 13;          // relative y position of wheel
max_wheel_angle = 30;     // the maximum angle the wheel can rotate
wheel_angle_velocity = 5; // how quickly a wheel rotates

// *note: torque can be set to 0, and car will still turn!
// also angular damping(box2d) greatly affects the turning capacity of the car.
torque_acc = 6;           // extra torque on the car when turning 
torque_rev = 8;           // extra torque on the car in reverse
torque_damp = 0.1;        // how quickly the car will straighten when not turning
                          // range: (0-1)
                        
drift = 0.5;              // drift control, usually between (0-1) but can be higher
                          // 0: no control | 1: high control
                        
// Leave these values alone
acc = 0;                  // 0 - no acceleration, 1 - forward, 2 - reverse
steer_dir = 0;            // the angle the wheels should be at
wheels = [];              // array to hold the wheels
