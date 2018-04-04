/// @param x
/// @param y
/// @param lz
/// @param matrices
/// @param texture_side
/// @param texture_top

var x_ = argument0;
var y_ = argument1;
var lz = argument2;
var matrices = argument3;
var texture_side = argument4;
var texture_top = argument5;

var size = global.size;
var square = global.square;

var cx = x_ + size / 2;
var cy = y_ + size / 2;

// north
var other_n = collision_point(cx, cy - size, obj_cube, false, false);
if !other_n or other_n.zcount <= lz {
	matrix_set(matrix_world, matrices[? "n"]);
	vertex_submit(square, pr_trianglestrip, texture_side);
}

// south
var other_s = collision_point(cx, cy + size, obj_cube, false, false);
if !other_s or other_s.zcount <= lz {
	matrix_set(matrix_world, matrices[? "s"]);
	vertex_submit(square, pr_trianglestrip, texture_side);
}

// west
var other_w = collision_point(cx - size, cy, obj_cube, false, false);
if !other_w or other_w.zcount <= lz {
	matrix_set(matrix_world, matrices[? "w"]);
	vertex_submit(square, pr_trianglestrip, texture_side);
}

// east
var other_e = collision_point(cx + size, cy, obj_cube, false, false);
if !other_e or other_e.zcount <= lz {
	matrix_set(matrix_world, matrices[? "e"]);
	vertex_submit(square, pr_trianglestrip, texture_side);
}

// top
if lz == zcount - 1 {
  matrix_set(matrix_world, matrices[? "t"]);
  vertex_submit(square, pr_trianglestrip, texture_top);
}

matrix_set(matrix_world, matrix_build_identity());