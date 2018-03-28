size = 64;
buf = vertex_create_buffer();
setup = instance_find(camerasetup, 0);
format = setup.format;

vertex_begin(buf, format);

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