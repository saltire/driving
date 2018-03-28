gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

camera = camera_create();
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(45, view_wport[0] / view_hport[0], 1, 32000));
camera_set_update_script(camera, camera_update);

view_enabled = true;
view_set_visible(0, true);
view_set_camera(0, camera);
