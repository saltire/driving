gpu_set_alphatestenable(true);
gpu_set_texfilter(true);
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

camera = camera_create();
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(45, view_wport[0] / view_hport[0], 1, 32000));
camera_set_update_script(camera, camera_update);

view_enabled = true;
view_set_visible(0, true);
view_set_camera(0, camera);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
format = vertex_format_end();