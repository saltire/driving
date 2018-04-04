if (!car) {
  var spd = 0;
  if (keyboard_check(vk_up)) spd = walkspeed;
  else if (keyboard_check(vk_down)) spd = -walkspeed;

  if (keyboard_check(vk_left)) image_angle += steer * sign(spd);
  if (keyboard_check(vk_right)) image_angle -= steer * sign(spd);

  if (spd > 0) {
    var dir = image_angle + 90;
    var dx = lengthdir_x(spd, dir);
    var dy = lengthdir_y(spd, dir);
    if (place_meeting(x + dx, y + dy, obj_solid)) spd = 0;
    else {
      x += dx;
      y += dy;
    }
  }
  
  if (keyboard_check_pressed(vk_enter)) {
    var nearcar = collision_circle(x, y, enter_radius, obj_car, false, true);
    if (nearcar) {
      car = nearcar;
    }
  }
}
else {
  x = car.x;
  y = car.y;
  image_angle = car.image_angle;
  
  if (keyboard_check_pressed(vk_enter)) {
    var exit_dir = car.image_angle - 180;
    x += lengthdir_x(exit_distance, exit_dir);
    y += lengthdir_y(exit_distance, exit_dir);
    image_angle = exit_dir - 90;
    car = noone;
  }
}
