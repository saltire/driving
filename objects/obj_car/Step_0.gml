if (obj_player.car == id) {
  // up: 1, down: -1
  acc = keyboard_check(vk_up) - keyboard_check(vk_down);
  // right: 1, left: -1
  steer_dir = keyboard_check(vk_right) - keyboard_check(vk_left);

  car_update(acc, steer_dir * max_wheel_angle);
}