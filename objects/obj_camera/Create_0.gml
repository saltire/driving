display_reset(2, true);
gpu_set_alphatestenable(true);
gpu_set_cullmode(cull_counterclockwise);
gpu_set_texfilter(true);
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

camera = camera_create();
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(45, view_wport[0] / view_hport[0], 1, 32000));
camera_set_update_script(camera, update_camera);

view_enabled = true;
view_set_visible(0, true);
view_set_camera(0, camera);

target = obj_player;
x = target.x;
y = target.y;
ztarget = layer_get_depth("buildings");
z = ztarget - 500;
show_debug_message(string(ztarget) + ", " + string(z));
move = .2;


// global render variables

var size = 32;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
var vertex_format = vertex_format_end();

var square = vertex_create_buffer();

vertex_begin(square, vertex_format);

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

global.size = size;
global.square = square;