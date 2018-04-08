while (path == noone) {
  var dx = irandom(room_width / 32) * 32 + 16;
  var dy = irandom(room_height / 32) * 32 + 16;
  if (!position_meeting(dx, dy, obj_cube)) {
    var newpath = path_add();
    if (mp_grid_path(obj_grid.grid, newpath, x, y, dx, dy, true)) {
      //show_debug_message("New path from " + string(x) + ", " + string(y) + " to " + string(dx) + ", " + string(dy));
      path = newpath;
      path_start(path, walkspeed, path_action_stop, true);
    }
  }
}

image_angle = direction - 90;

if (path_position == 1) {
  path_end();
  path = noone;
}

if (place_meeting(x, y, obj_car)) {
  instance_create_layer(x, y, layer, obj_blood);
  instance_destroy();
}