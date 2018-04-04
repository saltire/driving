// init basic car variables
car_init();

// add wheels
car_add_wheel(-wheel_xoff, -wheel_yoff, true, true, obj_wheel);  // top left
car_add_wheel(wheel_xoff, -wheel_yoff, true, true, obj_wheel);   // top right
car_add_wheel(-wheel_xoff, wheel_yoff, false, false, obj_wheel); // bottom left
car_add_wheel(wheel_xoff, wheel_yoff, false, false, obj_wheel);  // bottom right
