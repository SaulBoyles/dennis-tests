/// @description Variables

hspeed_ = 0; //Non-internal Horizontal speed variable
vspeed_ = 0; //Non-Internal Vertical speed variable
jump_height = -10; //Vspeed to add for jumping
gravity_ = .5; //Variable defining how powerful gravity is
friction_ = .3;

acceleration_ = 1;

//
//jump_used = false;
//

max_hspeed = 4; //How fast player moves

//Keymap
keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("S"),vk_down);
keyboard_set_map(ord("D"),vk_right);