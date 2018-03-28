// north
if !position_meeting(cx, cy - size, cube) {
	matrix_set(matrix_world, matrix_n);
	vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));
}

// south
if !position_meeting(cx, cy + size, cube) {
	matrix_set(matrix_world, matrix_s);
	vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));
}

// west
if !position_meeting(cx - size, cy, cube) {
	matrix_set(matrix_world, matrix_w);
	vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));
}

// east
if !position_meeting(cx + size, cy, cube) {
	matrix_set(matrix_world, matrix_e);
	vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));
}

// top
matrix_set(matrix_world, matrix_build(x, y, -size, 0, 0, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));

matrix_set(matrix_world, matrix_build_identity());