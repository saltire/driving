x = cameratarget.x;
y = cameratarget.y;

camera_set_view_mat(view_camera[0], matrix_build_lookat(x, y, -1000, x, y, 0, 0, 1, 0));
