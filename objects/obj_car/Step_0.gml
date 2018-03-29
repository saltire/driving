if (keyboard_check(vk_up)) speed = min(speed + accel, maxspeed);
if (keyboard_check(vk_down)) speed = max(speed - accel, -maxspeed);

if (keyboard_check(vk_left)) direction += steer * speed;
if (keyboard_check(vk_right)) direction -= steer * speed;

if (place_meeting(x + hspeed, y + vspeed, obj_solid)) speed = 0;

image_angle = direction;
