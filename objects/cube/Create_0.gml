size = 64;
cx = x + size / 2;
cy = y + size / 2;

matrix_n = matrix_build(x + size, y, -size, -90, 0, 180, 1, 1, 1);
matrix_s = matrix_build(x, y + size, -size, -90, 0, 0, 1, 1, 1);
matrix_w = matrix_build(x, y, -size, -90, 0, -90, 1, 1, 1);
matrix_e = matrix_build(x + size, y + size, -size, -90, 0, 90, 1, 1, 1);

setup = instance_find(camerasetup, 0);

buf = vertex_create_buffer();

vertex_begin(buf, setup.format);

vertex_position_3d(buf, 0, 0, 0);
vertex_normal(buf, 0, 0, -1);
vertex_color(buf, c_white, 1);
vertex_texcoord(buf, 0, 0);

vertex_position_3d(buf, size, 0, 0);
vertex_normal(buf, 0, 0, -1);
vertex_color(buf, c_white, 1);
vertex_texcoord(buf, 1, 0);

vertex_position_3d(buf, 0, size, 0);
vertex_normal(buf, 0, 0, -1);
vertex_color(buf, c_white, 1);
vertex_texcoord(buf, 0, 1);

vertex_position_3d(buf, size, size, 0);
vertex_normal(buf, 0, 0, -1);
vertex_color(buf, c_white, 1);
vertex_texcoord(buf, 1, 1);

vertex_end(buf);