size = 32;
cx = x + size / 2;
cy = y + size / 2;

matrix_n = matrix_build(x + size, y, -size, -90, 0, 180, 1, 1, 1);
matrix_s = matrix_build(x, y + size, -size, -90, 0, 0, 1, 1, 1);
matrix_w = matrix_build(x, y, -size, -90, 0, -90, 1, 1, 1);
matrix_e = matrix_build(x + size, y + size, -size, -90, 0, 90, 1, 1, 1);
matrix_t = matrix_build(x, y, -size, 0, 0, 0, 1, 1, 1);

square = vertex_create_buffer();

vertex_begin(square, global.vertex_format);

vertex_position_3d(square, 0, 0, 0);
vertex_normal(square, 0, 0, -1);
vertex_color(square, c_white, 1);
vertex_texcoord(square, 0, 0);

vertex_position_3d(square, size, 0, 0);
vertex_normal(square, 0, 0, -1);
vertex_color(square, c_white, 1);
vertex_texcoord(square, 1, 0);

vertex_position_3d(square, 0, size, 0);
vertex_normal(square, 0, 0, -1);
vertex_color(square, c_white, 1);
vertex_texcoord(square, 0, 1);

vertex_position_3d(square, size, size, 0);
vertex_normal(square, 0, 0, -1);
vertex_color(square, c_white, 1);
vertex_texcoord(square, 1, 1);

vertex_end(square);