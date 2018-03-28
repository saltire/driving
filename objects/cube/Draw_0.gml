matrix_set(matrix_world, matrix_build(x, y, 0, 0, 0, 0, 1, 1, 1));
vertex_submit(buf, pr_trianglelist, sprite_get_texture(sprite1, 0));
matrix_set(matrix_world, matrix_build_identity());