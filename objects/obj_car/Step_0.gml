/// @description update movement variables based on keyboard input

// up: 1, down: -1
acc = keyboard_check(vk_up) - keyboard_check(vk_down);

// right: 1, left: -1
steer_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
