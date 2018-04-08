randomize();

grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
mp_grid_add_instances(grid, obj_cube, false);