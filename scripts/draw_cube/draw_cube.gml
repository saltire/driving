/// @param x
/// @param y
/// @param lz
/// @param matrices
/// @param sprite
/// @param topsprite

var x_ = argument0;
var y_ = argument1;
var lz = argument2;
var matrices = argument3;
var sprite = argument4;
var topsprite = argument5;

var size = global.size;
var square = global.square;

var cx = x_ + size / 2;
var cy = y_ + size / 2;

// north
var other_n = collision_point(cx, cy - size, obj_solid, false, false);
if !other_n or other_n.zcount <= lz {
	matrix_set(matrix_world, matrices[? "n"]);
	vertex_submit(square, pr_trianglestrip, sprite_get_texture(sprite, 0));
}

// south
var other_s = collision_point(cx, cy + size, obj_solid, false, false);
if !other_s or other_s.zcount <= lz {
	matrix_set(matrix_world, matrices[? "s"]);
	vertex_submit(square, pr_trianglestrip, sprite_get_texture(sprite, 0));
}

// west
var other_w = collision_point(cx - size, cy, obj_solid, false, false);
if !other_w or other_w.zcount <= lz {
	matrix_set(matrix_world, matrices[? "w"]);
	vertex_submit(square, pr_trianglestrip, sprite_get_texture(sprite, 0));
}

// east
var other_e = collision_point(cx + size, cy, obj_solid, false, false);
if !other_e or other_e.zcount <= lz {
	matrix_set(matrix_world, matrices[? "e"]);
	vertex_submit(square, pr_trianglestrip, sprite_get_texture(sprite, 0));
}

// top
if lz == zcount - 1 {
  matrix_set(matrix_world, matrices[? "t"]);
  vertex_submit(square, pr_trianglestrip, sprite_get_texture(topsprite, 0));
}

matrix_set(matrix_world, matrix_build_identity());