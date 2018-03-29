/// @param x
/// @param y
/// @param z

var x_ = argument0;
var y_ = argument1;
var z = argument2;

var size = global.size;

var map = ds_map_create();
ds_map_add(map, "n", matrix_build(x_ + size, y_,        z - size, -90, 0, 180, 1, 1, 1));
ds_map_add(map, "s", matrix_build(x_,        y_ + size, z - size, -90, 0,   0, 1, 1, 1));
ds_map_add(map, "w", matrix_build(x_,        y_,        z - size, -90, 0, -90, 1, 1, 1));
ds_map_add(map, "e", matrix_build(x_ + size, y_ + size, z - size, -90, 0,  90, 1, 1, 1));
ds_map_add(map, "t", matrix_build(x_,        y_,        z - size,   0, 0,   0, 1, 1, 1));

return map;