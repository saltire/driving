// north
matrix_set(matrix_world, matrix_build(x, y, 0, 90, 0, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));

// south
matrix_set(matrix_world, matrix_build(x, y + size, 0, 90, 0, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));

// west
matrix_set(matrix_world, matrix_build(x, y, 0, 0, -90, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));

// east
matrix_set(matrix_world, matrix_build(x + size, y, 0, 0, -90, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));

// top
matrix_set(matrix_world, matrix_build(x, y, -size, 0, 0, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglestrip, sprite_get_texture(sprite1, 0));

matrix_set(matrix_world, matrix_build_identity());