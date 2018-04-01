if (!car) {
  if (keyboard_check(vk_up)) speed = walkspeed;
  else if (keyboard_check(vk_down)) speed = -walkspeed;
  else speed = 0;

  if (keyboard_check(vk_left)) direction += steer * sign(speed);
  if (keyboard_check(vk_right)) direction -= steer * sign(speed);

  if (place_meeting(x + hspeed, y + vspeed, obj_solid)) speed = 0;
  
  if (keyboard_check_pressed(vk_enter)) {
    var nearcar = collision_circle(x, y, enter_radius, obj_car, false, true);
    if (nearcar) {
      car = nearcar;
    }
  }
}
else {
  speed = 0;
  
  with car {
    if (keyboard_check(vk_up)) speed = min(speed + accel, maxspeed);
    if (keyboard_check(vk_down)) speed = max(speed - accel, -maxspeed);

    if (keyboard_check(vk_left)) direction += steer * speed;
    if (keyboard_check(vk_right)) direction -= steer * speed;

    if (place_meeting(x + hspeed, y + vspeed, obj_solid)) speed = 0;
  }
  
  x = car.x;
  y = car.y;
  direction = car.direction;
  
  if (keyboard_check_pressed(vk_enter)) {
    car = noone;
  }
}

image_angle = direction;


